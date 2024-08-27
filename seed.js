// seed.js
const dotenv = require('dotenv');
dotenv.config(); // Load environment variables

const connectDB = require('./config/db');
const mongoose = require('mongoose');
const User = require('./models/User');
const Product = require('./models/Product');
const Address = require('./models/Address');
const AdminLog = require('./models/AdminLog');
const Cart = require('./models/Cart');
const CartItem = require('./models/CartItem');
const Category = require('./models/Category');
const Order = require('./models/Order');
const Review = require('./models/Review');
const Seller = require('./models/Seller');
const SellerOrder = require('./models/SellerOrder');
const Wishlist = require('./models/Wishlist');
const WishlistItem = require('./models/WishlistItem');
const UserInteraction = require('./models/UserInteraction');

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
  await Seller.init();
  await SellerOrder.init();
  await Wishlist.init();
  await WishlistItem.init();
  await UserInteraction.init();
  // Add other models as needed

  console.log('Collections created successfully');
  mongoose.connection.close();
};

seedDB().then(() => {
  console.log('Database seeding completed successfully');
  process.exit(0);
}).catch((error) => {
  console.error(`Error during database seeding: ${error.message}`);
  process.exit(1);
});