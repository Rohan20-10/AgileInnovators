import 'package:ecommerce/api/api_service.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:ecommerce/widgets/constants.dart';
import 'products.dart';  // Assuming Products page is in the same directory

class AddProductPage extends StatefulWidget {
  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  final _nameController = TextEditingController();
  final _priceController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _categoryController = TextEditingController();
  final _stockController = TextEditingController();
  File? _imageFile;

  final ImagePicker _picker = ImagePicker();
  final ApiService _apiService = ApiService();

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

Future<void> _addProduct() async {
  if (_imageFile == null) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Please select an image'),
    ));
    return;
  }

  try {
    final response = await _apiService.addProduct(
      name: _nameController.text,
      description: _descriptionController.text,
      category: _categoryController.text,
      price: _priceController.text,
      stock: int.parse(_stockController.text),
      imageFile: _imageFile!,
    );

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Product added successfully'),
    ));

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Products()), // Redirect to Products page
    );
  } catch (e) {
    print('Error adding product: $e');
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Failed to add product'),
    ));
  }
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Product"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Product Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: _priceController,
                  decoration: InputDecoration(
                    labelText: 'Price',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 16),
                TextField(
                  controller: _categoryController,
                  decoration: InputDecoration(
                    labelText: 'Category',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: _stockController,
                  decoration: InputDecoration(
                    labelText: 'Stock',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 16),
                TextField(
                  controller: _descriptionController,
                  decoration: InputDecoration(
                    labelText: 'Description',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  ),
                ),
                SizedBox(height: 20),
                _imageFile == null
                    ? Container(
                        width: double.infinity,
                        height: 200,
                        color: Colors.grey[200],
                        child: Center(child: Text("No image selected")),
                      )
                    : Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: FileImage(_imageFile!),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 6,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                      ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () => _pickImage(ImageSource.gallery),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      ),
                      child: Text(
                        "Pick from Gallery",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => _pickImage(ImageSource.camera),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      ),
                      child: Text(
                        "Take a Photo",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: _addProduct,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Constants().orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                    ),
                    child: Text(
                      "Add Product",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
