const mongoose = require('mongoose');

const CartSchema = new mongoose.Schema({
  _id: mongoose.Schema.Types.ObjectId,
  user_id: { type: mongoose.Schema.Types.ObjectId, ref: 'User', required: true },
  items: [{ type: mongoose.Schema.Types.ObjectId, ref: 'CartItem' }],
  created_at: { type: Date, default: Date.now }
});

module.exports = mongoose.model('Cart', CartSchema);
