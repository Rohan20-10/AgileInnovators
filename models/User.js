const mongoose = require('mongoose');

const UserSchema = new mongoose.Schema({
  _id: mongoose.Schema.Types.ObjectId,
  name: { type: String, required: true },
  email: { type: String, required: true, unique: true },
  password: { type: String, required: true },
  phone_number: { type: String },
  role: {
    type: String,
    enum: ['customer', 'merchant', 'admin'],
    required: true
  },
  address: { type: mongoose.Schema.Types.ObjectId, ref: 'Address' },
  preferred_currency: { type: String, default: 'INR' },
  created_at: { type: Date, default: Date.now }
  
});

module.exports = mongoose.model('User', UserSchema);
