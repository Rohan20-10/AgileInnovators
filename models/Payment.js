const mongoose = require('mongoose');

const PaymentSchema = new mongoose.Schema({
  _id: mongoose.Schema.Types.ObjectId,
  order_id: { type: mongoose.Schema.Types.ObjectId, ref: 'Order', required: true },
  amount: { type: Number, required: true },
  currency: { type: String, default: 'INR' },
  status: {
    type: String,
    enum: ['pending', 'completed', 'failed'],
    default: 'pending'
  },
  payment_method: String,
  transaction_id: String,
  created_at: { type: Date, default: Date.now }
});

module.exports = mongoose.model('Payment', PaymentSchema);
