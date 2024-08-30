const User = require('../models/User');
const Address = require('../models/Address');
const bcrypt = require('bcryptjs');
const mongoose = require('mongoose');
const axios = require('axios');

exports.showRegisterPage = (req, res) => {
  res.render('customer/register');
};

exports.registerCustomer = async (req, res, next) => {
  try {
    const {
      name,
      email,
      password,
      phone_number,
      street,
      city,
      state,
      postal_code,
      country
    } = req.body;

    const hashedPassword = await bcrypt.hash(password, 10);
    const user = new User({
      _id: new mongoose.Types.ObjectId(),
      name,
      email,
      password: hashedPassword,
      phone_number,
      role: 'customer'
    });
    await user.save();

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

    res.status(201).json({ message: 'Customer registered successfully' });
  } catch (error) {
    console.error('Error in registerCustomer:', error);
    next(error); // Pass the error to the next middleware
  }
};

exports.showLoginPage = (req, res) => {
  res.render('customer/login');
};

exports.loginCustomer = async (req, res, next) => {
  try {
    const { email, password } = req.body;

    // Find the user by email
    const user = await User.findOne({ email, role: 'customer' });
    if (!user) {
      return res.status(401).json({ message: 'Invalid email or password' });
    }

    // Check the password
    const isMatch = await bcrypt.compare(password, user.password);
    if (!isMatch) {
      return res.status(401).json({ message: 'Invalid email or password' });
    }

    // Capture the IP address
    const ipAddress = req.headers['x-forwarded-for'] || req.connection.remoteAddress;

    // Determine the currency based on the IP address
    const response = await axios.get(`https://ipapi.co/${ipAddress}/json/`);
    const currency = response.data.currency || 'USD'; // Default to USD if currency is not found

    // Set the user session
    req.session.user = user;
    req.session.ipAddress = ipAddress; // Store the IP address in the session
    req.session.currency = currency; // Store the currency in the session

    res.status(200).json({ message: 'Login successful' });
  } catch (error) {
    console.error('Error in loginCustomer:', error);
    next(error); // Pass the error to the next middleware
  }
};


const convertCurrency = async (amount, fromCurrency, toCurrency) => {
  try {
    const response = await axios.get(`https://api.exchangerate-api.com/v4/latest/${fromCurrency}`);
    const rate = response.data.rates[toCurrency];
    return amount * rate;
  } catch (error) {
    console.error('Error in convertCurrency:', error);
    throw error;
  }
};

exports.showProductPage = async (req, res, next) => {
  try {
    const products = await Product.find();
    const currency = req.session.currency || 'USD'; // Default to USD if currency is not found

    const convertedProducts = await Promise.all(products.map(async (product) => {
      const convertedPrice = await convertCurrency(product.base_price, product.base_currency, currency);
      return {
        ...product._doc,
        converted_price: convertedPrice,
        display_currency: currency
      };
    }));

    res.render('customer/products', { products: convertedProducts });
  } catch (error) {
    console.error('Error in showProductPage:', error);
    next(error); // Pass the error to the next middleware
  }
};