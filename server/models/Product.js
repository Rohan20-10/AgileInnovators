const mongoose = require('mongoose');

const ProductSchema = new mongoose.Schema({
  _id: mongoose.Schema.Types.ObjectId,
  merchant_id: { type: mongoose.Schema.Types.ObjectId, ref: 'Merchant', required: true },
  name: { type: String, required: true },
  description: String,
  category: { type: mongoose.Schema.Types.ObjectId, ref: 'Category', required: true },
  base_price: { type: Number, required: true }, // Store in base currency
  base_currency: { type: String, default: 'INR' }, // Base currency
  stock: Number,
  images: [String],
  ratings: Number,
  created_at: { type: Date, default: Date.now },
  updated_at: { type: Date, default: Date.now }
});

module.exports = mongoose.model('Product', ProductSchema);
