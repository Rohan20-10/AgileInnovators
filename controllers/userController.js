const User = require('../models/User');

exports.getUserDetails = async (req, res, next) => {
  try {
    const userId = req.session.user._id;
    const user = await User.findById(userId).select('name role');
    if (!user) {
      return res.status(404).json({ message: 'User not found' });
    }
    res.status(200).json(user);
  } catch (error) {
    console.error('Error in getUserDetails:', error);
    next(error); // Pass the error to the next middleware
  }
};
    