const Cart = require('../models/Cart');
const CartItem = require('../models/CartItem');
const Product = require('../models/Product');
const mongoose = require('mongoose');

exports.addToCart = async (req, res, next) => {
  try {
    const { userId, productId, quantity } = req.body;

    // Find the user's cart or create a new one
    let cart = await Cart.findOne({ user_id: userId });
    if (!cart) {
      cart = new Cart({ _id: new mongoose.Types.ObjectId(), user_id: userId, items: [] });
      await cart.save(); // Save the cart to get the _id
    }

    // Check if the product is already in the cart
    let cartItem = await CartItem.findOne({ cart_id: cart._id, product_id: productId });
    if (cartItem) {
      // Update the quantity if the product is already in the cart
      cartItem.quantity += quantity;
    } else {
      // Add the new product to the cart
      const product = await Product.findById(productId);
      cartItem = new CartItem({
        _id: new mongoose.Types.ObjectId(),
        cart_id: cart._id,
        product_id: productId,
        quantity,
        price: product.base_price,
        currency: product.base_currency
      });
    }

    await cartItem.save();
    if (!cart.items.includes(cartItem._id)) {
      cart.items.push(cartItem._id);
    }
    await cart.save();

    res.status(200).json({ message: 'Product added to cart successfully' });
  } catch (error) {
    console.error('Error adding product to cart:', error);
    next(error);
  }
};
