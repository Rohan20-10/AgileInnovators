const mongoose = require('mongoose');

const WishlistSchema = new mongoose.Schema({
  _id: mongoose.Schema.Types.ObjectId,
  buyer_id: { type: mongoose.Schema.Types.ObjectId, ref: 'User', required: true },
  items: [{ type: mongoose.Schema.Types.ObjectId, ref: 'WishlistItem' }],
  created_at: { type: Date, default: Date.now }
});

module.exports = mongoose.model('Wishlist', WishlistSchema);
