const User = require('../models/User');
const bcrypt = require('bcryptjs');
const passport = require('passport');

exports.loginUser = (req, res, next) => {
  passport.authenticate('local', (err, user, info) => {
    if (err) {
      return next(err);
    }
    if (!user) {
      return res.status(400).json({ message: info.message });
    }
    req.logIn(user, (err) => {
      if (err) {
        return next(err);
      }
      // Set user in session
      req.session.user = user;
      return res.json({ message: 'Login successful', user: { id: user.id, role: user.role } });
    });
  })(req, res, next);
};
