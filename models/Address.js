const mongoose = require('mongoose');

const AddressSchema = new mongoose.Schema({
  _id: mongoose.Schema.Types.ObjectId,
  user_id: { type: mongoose.Schema.Types.ObjectId, ref: 'User', required: true }, // Consumer or Merchant
  street: String,
  city: String,
  state: String,
  postal_code: String,
  country: String,
  created_at: { type: Date, default: Date.now }
});

module.exports = mongoose.model('Address', AddressSchema);
