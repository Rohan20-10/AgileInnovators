const Product = require('../models/Product');
const Category = require('../models/Category');

exports.getProductsByCategory = async (req, res, next) => {
  try {
    const { categoryName } = req.params;
    const category = await Category.findOne({ name: categoryName });
    if (!category) {
      return res.status(404).json({ message: 'Category not found' });
    }
    console.log("---------------------------------");
    console.log(req.user);
    console.log("---------------------------------");

    const products = await Product.find({ category: category._id }).populate('category');
    res.render('customer/productsByCategory', { category, products, user: req.user });
  } catch (error) {
    console.error('Error fetching products by category:', error);
    next(error);
  }
};
