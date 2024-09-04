const mongoose = require('mongoose');

const MerchantOrdersSchema = new mongoose.Schema({
  _id: mongoose.Schema.Types.ObjectId,
  merchant_id: { type: mongoose.Schema.Types.ObjectId, ref: 'Merchant', required: true },
  order_id: { type: mongoose.Schema.Types.ObjectId, ref: 'Order', required: true },
  status: {
    type: String,
    enum: ['pending', 'shipped', 'delivered', 'cancelled'],
    default: 'pending'
  },
  created_at: { type: Date, default: Date.now }
});

module.exports = mongoose.model('MerchantOrders', MerchantOrdersSchema);
