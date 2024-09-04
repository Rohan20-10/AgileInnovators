const mongoose = require('mongoose');
const { Schema } = mongoose;

const userInteractionSchema = new Schema({
  userId: { type: Schema.Types.ObjectId, ref: 'User', required: true },
  productId: { type: Schema.Types.ObjectId, ref: 'Product', required: true },
  clicks: { type: Number, default: 0 }, // Track the number of clicks
  timestamp: { type: Date, default: Date.now } // When the interaction occurred
});

// Index to ensure unique user-product pairs
userInteractionSchema.index({ userId: 1, productId: 1 }, { unique: true });

const UserInteraction = mongoose.model('UserInteraction', userInteractionSchema);

module.exports = UserInteraction;
