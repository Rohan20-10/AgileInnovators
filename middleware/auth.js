const User = require('../models/User');

const ensureAuthenticated = (req, res, next) => {
  if (req.isAuthenticated()) {
    return next();
  }
  res.redirect('/api/customer/login');
};

const attachUserFromSession = async (req, res, next) => {
  if (req.session.user) {
    try {
      const user = await User.findById(req.session.user._id);
      if (user) {
        req.user = user;
        res.locals.user = user;
      }
    } catch (err) {
      console.error('Error fetching user from session:', err);
    }
  }
  next();
};

const ensureRole = (role) => {
  return (req, res, next) => {
    if (req.isAuthenticated() && req.user.role === role) {
      return next();
    }
    res.redirect('/login');
  };
};

module.exports = { ensureAuthenticated, attachUserFromSession, ensureRole };
