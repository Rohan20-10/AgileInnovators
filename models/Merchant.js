const mongoose = require('mongoose');

const MerchantSchema = new mongoose.Schema({
  _id: mongoose.Schema.Types.ObjectId,
  user_id: { type: mongoose.Schema.Types.ObjectId, ref: 'User', required: true },
  business_name: { type: String, required: true },
  gstin: String,
  msme_id: String,
  business_address: { type: mongoose.Schema.Types.ObjectId, ref: 'Address' },
  verification_status: {
    type: String,
    enum: ['pending', 'verified', 'rejected'],
    default: 'pending'
  },
  created_at: { type: Date, default: Date.now }
});

module.exports = mongoose.model('Merchant', MerchantSchema);
