const mongoose = require('mongoose');

const WishlistItemSchema = new mongoose.Schema({
  _id: mongoose.Schema.Types.ObjectId,
  product_id: { type: mongoose.Schema.Types.ObjectId, ref: 'Product', required: true },
  added_at: { type: Date, default: Date.now },
});

module.exports = mongoose.model('WishlistItem', WishlistItemSchema);
