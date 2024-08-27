const mongoose = require('mongoose');

const OrderSchema = new mongoose.Schema({
  _id: mongoose.Schema.Types.ObjectId,
  buyer_id: { type: mongoose.Schema.Types.ObjectId, ref: 'User', required: true },
  items: [{ type: mongoose.Schema.Types.ObjectId, ref: 'OrderItem' }],
  total_amount: Number, // Store total amount in base currency
  total_currency: { type: String, default: 'USD' }, // Base currency
  shipping_address: { type: mongoose.Schema.Types.ObjectId, ref: 'Address' },
  status: {
    type: String,
    enum: ['pending', 'shipped', 'delivered', 'cancelled'],
    default: 'pending'
  },
  payment_status: {
    type: String,
    enum: ['pending', 'completed', 'failed'],
    default: 'pending'
  },
  created_at: { type: Date, default: Date.now }
});

module.exports = mongoose.model('Order', OrderSchema);


