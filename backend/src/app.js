require('dotenv').config();

const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');
const cors = require('cors');
const mime = require('mime-types');

const productRouter = require('./routes/products');

// Importamos la conexión a MySQL
const db = require('./models/product');

const app = express();

const port = process.env.PORT || 3000;

// Middleware
app.use(bodyParser.json());
app.use(cors());

// Middleware para establecer el tipo MIME correcto
app.use('/uploads', (req, res, next) => {
    const filePath = path.join(__dirname, '../uploads', req.path);
    const mimeType = mime.lookup(filePath) || 'application/octet-stream';

    res.setHeader('Content-Type', mimeType);
    next();
});

// Servir archivos estáticos
app.use(
    '/uploads',
    express.static(path.join(__dirname, '../uploads'))
);

// Rutas de productos
app.use('/api/products', productRouter);

// Obtener todos los productos
app.get('/products', async (req, res) => {
    try {
        const [result] = await db.query(
            'SELECT * FROM productos'
        );

        res.json(result);

    } catch (err) {
        console.error('Error al obtener productos:', err);

        res.status(500).json({
            error: 'Error al obtener productos'
        });
    }
});

// Obtener producto por ID
app.get('/products/:id', async (req, res) => {
    try {
        const productId = req.params.id;

        const [result] = await db.query(
            'SELECT * FROM productos WHERE id = ?',
            [productId]
        );

        if (result.length === 0) {
            return res.status(404).json({
                error: 'Producto no encontrado'
            });
        }

        res.json(result[0]);

    } catch (err) {
        console.error('Error al obtener el producto:', err);

        res.status(500).json({
            error: 'Error al obtener el producto'
        });
    }
});

// Ruta de prueba
app.get('/', (req, res) => {
    res.send('El servidor Express está funcionando correctamente');
});

// Iniciar servidor
app.listen(port, () => {
    console.log(`Servidor corriendo en http://localhost:${port}`);
});