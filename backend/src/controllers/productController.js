const db = require('../models/product');

// Obtener todos los productos
exports.getAllProducts = async (req, res) => {
  try {
    const [result] = await db.query(
      'SELECT * FROM productos'
    );

    res.status(200).json(result);

  } catch (err) {
    console.error('Error al obtener los productos:', err);

    res.status(500).json({
      error: 'Error al obtener los productos'
    });
  }
};

// Crear un nuevo producto
exports.createProduct = async (req, res) => {
  try {
    const { name, description, price } = req.body;
    const imageUrl = req.file ? req.file.path : '';

    const [result] = await db.query(
      'INSERT INTO productos (name, description, price, imageUrl) VALUES (?, ?, ?, ?)',
      [name, description, price, imageUrl]
    );

    res.status(201).json({
      message: 'Producto creado exitosamente',
      id: result.insertId
    });

  } catch (err) {
    console.error('Error al crear el producto:', err);

    res.status(500).json({
      error: 'Error al crear el producto'
    });
  }
};
