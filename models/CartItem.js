const mongoose = require('mongoose');

const CartItemSchema = new mongoose.Schema({
  _id: mongoose.Schema.Types.ObjectId,
  cart_id: { type: mongoose.Schema.Types.ObjectId, ref: 'Cart', required: true },
  product_id: { type: mongoose.Schema.Types.ObjectId, ref: 'Product', required: true },
  quantity: { type: Number, required: true },
  price: Number,
  currency: { type: String, default: 'INR' }
});

module.exports = mongoose.model('CartItem', CartItemSchema);
