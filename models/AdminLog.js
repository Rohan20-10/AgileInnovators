const mongoose = require('mongoose');

const AdminLogSchema = new mongoose.Schema({
  _id: mongoose.Schema.Types.ObjectId,
  action: { type: String, required: true },
  details: String,
  timestamp: { type: Date, default: Date.now }
});

module.exports = mongoose.model('AdminLog', AdminLogSchema);
