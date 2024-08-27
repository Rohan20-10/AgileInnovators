const mongoose = require('mongoose');

const ReviewSchema = new mongoose.Schema({
  _id: mongoose.Schema.Types.ObjectId,
  product_id: { type: mongoose.Schema.Types.ObjectId, ref: 'Product', required: true },
  user_id: { type: mongoose.Schema.Types.ObjectId, ref: 'User', required: true },
  rating: { type: Number, required: true, min: 1, max: 5 },
  comment: String,
  created_at: { type: Date, default: Date.now },
});

module.exports = mongoose.model('Review', ReviewSchema);
