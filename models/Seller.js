const mongoose = require('mongoose');

const SellerSchema = new mongoose.Schema({
  _id: mongoose.Schema.Types.ObjectId,
  business_name: { type: String, required: true },
  business_registration_number: String,
  gstin: String,
  business_address: { type: mongoose.Schema.Types.ObjectId, ref: 'Address' },
  verification_status: {
    type: String,
    enum: ['pending', 'verified', 'rejected'],
    default: 'pending'
  }
});

module.exports = mongoose.model('Seller', SellerSchema);
