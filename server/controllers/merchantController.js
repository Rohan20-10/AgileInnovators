const User = require('../models/User');
const Merchant = require('../models/Merchant');
const Address = require('../models/Address');
const bcrypt = require('bcryptjs');
const mongoose = require('mongoose');
const { cloudinary } = require('../config/cloudinary');
const Product = require('../models/Product');
const Category = require('../models/Category');

exports.showRegisterPage = (req, res) => {
  res.render('merchant/register');
};

exports.registerMerchant = async (req, res, next) => {
  try {
    const { name, email, password, phone_number, business_name, msme_id, gstin, street, city, state, postal_code, country } = req.body;

    // Check if the user already exists
    const existingUser = await User.findOne({ email });
    if (existingUser) {
      return res.status(400).json({ message: 'User already exists' });
    }

    // Create a new user
    const hashedPassword = await bcrypt.hash(password, 10);
    const user = new User({
      _id: new mongoose.Types.ObjectId(),
      name,
      email,
      password: hashedPassword,
      phone_number,
      role: 'merchant'
    });

    await user.save();

    // Create a new address
    const address = new Address({
      _id: new mongoose.Types.ObjectId(),
      user_id: user._id,
      street,
      city,
      state,
      postal_code,
      country
    });

    await address.save();

    // Create a new merchant
    const merchant = new Merchant({
      _id: new mongoose.Types.ObjectId(),
      user_id: user._id,
      business_name,
      msme_id,
      gstin,
      business_address: address._id,
      verification_status: 'pending'
    });

    await merchant.save();

    res.status(201).json({ message: 'Merchant registered successfully' });
  } catch (error) {
    console.error('Error in registerMerchant:', error);
    next(error); // Pass the error to the next middleware
  }
};



exports.showAddProductPage = async (req, res) => {
  try {
    const categories = await Category.find();
    res.render('merchant/addProduct', { categories });
  } catch (error) {
    console.error('Error fetching categories:', error);
    res.status(500).send('Error fetching categories');
  }
};

exports.addProduct = async (req, res, next) => {
  try {
    const {
      name,
      description,
      category,
      base_price,
      stock
    } = req.body;

    const userId = req.session.user._id;
    const merchant = await Merchant.findOne({ user_id: userId });
    if (!merchant) {
      return res.status(400).json({ message: 'Merchant not found' });
    }

    const images = [];
    if (req.files) {
      console.log('Files received:', req.files);
      for (const file of req.files) {
        try {
          const result = await cloudinary.uploader.upload(file.path);
          images.push(result.secure_url);
        } catch (uploadError) {
          console.error('Error uploading file to Cloudinary:', uploadError);
          return next(uploadError); // Pass the upload error to the next middleware
        }
      }
    }

    const product = new Product({
      _id: new mongoose.Types.ObjectId(),
      merchant_id: merchant._id,
      name,
      description,
      category,
      base_price,
      stock,
      images,
      ratings: 0
    });
    await product.save();

    res.status(201).json({ message: 'Product added successfully', product });
  } catch (error) {
    console.error('Error in addProduct:', error);
    next(error); // Pass the error to the next middleware
  }
};

exports.showLoginPage = (req, res) => {
  res.render('merchant/login');
};

exports.loginMerchant = async (req, res, next) => {
  try {
    const { email, password } = req.body;

    // Find the user by email
    const user = await User.findOne({ email, role: 'merchant' });
    if (!user) {
      return res.status(401).json({ message: 'Invalid email or password' });
    }

    // Check the password
    const isMatch = await bcrypt.compare(password, user.password);
    if (!isMatch) {
      return res.status(401).json({ message: 'Invalid email or password' });
    }

    // Check if the user is a merchant
    const merchant = await Merchant.findOne({ user_id: user._id });
    if (!merchant) {
      return res.status(401).json({ message: 'Invalid email or password' });
    }

    // Set the user session
    req.session.user = user;

    res.status(200).json({ message: 'Login successful' });
  } catch (error) {
    console.error('Error in loginMerchant:', error);
    next(error); // Pass the error to the next middleware
  }
};

