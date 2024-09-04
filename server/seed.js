// seed.js
const dotenv = require('dotenv');
dotenv.config(); // Load environment variables

const connectDB = require('./config/db');
const mongoose = require('mongoose');
const bcrypt = require('bcryptjs');
const User = require('./models/User');
const Product = require('./models/Product');
const Address = require('./models/Address');
const AdminLog = require('./models/AdminLog');
const Cart = require('./models/Cart');
const CartItem = require('./models/CartItem');
const Category = require('./models/Category');
const Order = require('./models/Order');
const Review = require('./models/Review');
const Merchant = require('./models/Merchant');
const MerchantOrder = require('./models/MerchantOrder');
const Wishlist = require('./models/Wishlist');
const WishlistItem = require('./models/WishlistItem');
const UserInteraction = require('./models/UserInteraction');
const Payment = require('./models/Payment');

// Seed function to create collections
const seedDB = async () => {
  await connectDB();

  // Drop the entire database
  await mongoose.connection.db.dropDatabase();
  console.log('Database dropped successfully');

  // Ensure collections are created by registering the models
  await User.init();
  await Product.init();
  await Address.init();
  await AdminLog.init();
  await Cart.init();
  await CartItem.init();
  await Category.init();
  await Order.init();
  await Review.init();
  await Merchant.init();
  await MerchantOrder.init();
  await Wishlist.init();
  await WishlistItem.init();
  await UserInteraction.init();
  await Payment.init();
  // Add other models as needed

  console.log('Collections created successfully');

  // Seed the admin user
  await seedAdminUser();

  mongoose.connection.close();
};

const seedAdminUser = async () => {
  const adminEmail = 'admin@gmail.com';
  const adminPassword = 'admin';

  // Check if the admin user already exists
  const existingAdmin = await User.findOne({ email: adminEmail, role: 'admin' });
  if (existingAdmin) {
    console.log('Admin user already exists');
    return;
  }

  // Create a new admin user
  const hashedPassword = await bcrypt.hash(adminPassword, 10);
  const adminUser = new User({
    _id: new mongoose.Types.ObjectId(),
    name: 'Admin',
    email: adminEmail,
    password: hashedPassword,
    role: 'admin',
  });

  await adminUser.save();
  console.log('Admin user created');
};

seedDB().then(() => {
  console.log('Database seeding completed successfully');
  process.exit(0);
}).catch((error) => {
  console.error(`Error during database seeding: ${error.message}`);
  process.exit(1);
});