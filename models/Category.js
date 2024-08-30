const mongoose = require('mongoose');

const CategorySchema = new mongoose.Schema({
    _id: mongoose.Schema.Types.ObjectId,    
    name: {
        type: String,
        required: true,
        unique: true,
    },
    description: {
        type: String,
        required: false,
    },
    created_at: {
        type: Date,
        default: Date.now,
    },
    updated_at: {
        type: Date,
        default: Date.now,
    },
});

// Middleware to update the updated_at field on save
CategorySchema.pre('save', function(next) {
    this.updated_at = Date.now();
    next();
});

module.exports = mongoose.model('Category', CategorySchema);