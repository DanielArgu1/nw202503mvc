-- ######################################################################
-- # 1. INSERCIÓN DE ROLES Y FUNCIONES BASE (Ejecutar primero)
-- ######################################################################

-- Definir los tres roles principales
INSERT IGNORE INTO roles (rolescod, rolesdsc, rolesest) VALUES
('ADMIN', 'Administrador del Sistema (Acceso Total)', 'ACT'),
('AUDITOR', 'Auditor de Datos (Solo Lectura)', 'ACT'),
('PUBLICO', 'Usuario Público / Cliente', 'ACT');

-- Definir las funciones CRUD (Create, Read, Update, Delete)
INSERT IGNORE INTO funciones (fncod, fndsc, fnest, fntyp) VALUES
-- Productos CRUD
('product_DSP', 'Ver Detalle de Producto', 'ACT', 'FNC'),
('product_INS', 'Insertar Nuevo Producto', 'ACT', 'FNC'),
('product_UPD', 'Actualizar Producto', 'ACT', 'FNC'),
('product_DEL', 'Eliminar Producto', 'ACT', 'FNC'),
-- Categorías CRUD
('categoria_DSP', 'Ver Detalle de Categoría', 'ACT', 'FNC'),
('categoria_INS', 'Insertar Nueva Categoría', 'ACT', 'FNC'),
('categoria_UPD', 'Actualizar Categoría', 'ACT', 'FNC'),
('categoria_DEL', 'Eliminar Categoría', 'ACT', 'FNC'),
-- Proveedores CRUD
('proveedor_DSP', 'Ver Detalle de Proveedor', 'ACT', 'FNC'),
('proveedor_INS', 'Insertar Nuevo Proveedor', 'ACT', 'FNC'),
('proveedor_UPD', 'Actualizar Proveedor', 'ACT', 'FNC'),
('proveedor_DEL', 'Eliminar Proveedor', 'ACT', 'FNC'),
-- Usuarios CRUD
('usuario_DSP', 'Ver Detalle de Usuario', 'ACT', 'FNC'),
('usuario_INS', 'Insertar Nuevo Usuario', 'ACT', 'FNC'),
('usuario_UPD', 'Actualizar Usuario', 'ACT', 'FNC'),
('usuario_DEL', 'Eliminar Usuario', 'ACT', 'FNC'),
-- Funciones de Menú (para la visibilidad en nav.config.json)
('Menu_SignIn', 'Iniciar Sesión', 'ACT', 'MENU'),
('Menu_SignUp', 'Crear Cuenta', 'ACT', 'MENU'),
('Menu_PaymentCheckout', 'Carretilla de Compra', 'ACT', 'MENU'),
('Menu_MisCompras', 'Mis Compras', 'ACT', 'MENU'),
('Menu_Catalogo', 'Catálogo de Productos', 'ACT', 'MENU'),
('Menu_Products', 'Work With Productos', 'ACT', 'MENU'),
('Menu_Categorias', 'Work With Categorías', 'ACT', 'MENU'),
('Menu_Proveedores', 'Work With Proveedores', 'ACT', 'MENU'),
('Menu_Usuarios', 'Work With Usuarios', 'ACT', 'MENU'),
('Menu_HistorialGeneral', 'Historial General', 'ACT', 'MENU');