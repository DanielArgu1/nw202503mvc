-- ######################################################################
-- # 2.1 PERMISOS PARA EL ROL: ADMINISTRADOR (ADMIN)
-- ######################################################################

REPLACE INTO funciones_roles (rolescod, fncod, fnrolest, fnexp) VALUES 
-- Permisos CRUD (Productos, Categorías, Proveedores, Usuarios)
('ADMIN', 'product_DSP', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('ADMIN', 'product_INS', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('ADMIN', 'product_UPD', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('ADMIN', 'product_DEL', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('ADMIN', 'categoria_DSP', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('ADMIN', 'categoria_INS', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('ADMIN', 'categoria_UPD', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('ADMIN', 'categoria_DEL', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('ADMIN', 'proveedor_DSP', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('ADMIN', 'proveedor_INS', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('ADMIN', 'proveedor_UPD', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('ADMIN', 'proveedor_DEL', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('ADMIN', 'usuario_DSP', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('ADMIN', 'usuario_INS', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('ADMIN', 'usuario_UPD', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('ADMIN', 'usuario_DEL', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
-- Permisos de Menú (TODOS)
('ADMIN', 'Menu_SignIn', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('ADMIN', 'Menu_SignUp', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('ADMIN', 'Menu_PaymentCheckout', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('ADMIN', 'Menu_MisCompras', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('ADMIN', 'Menu_Catalogo', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('ADMIN', 'Menu_Products', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('ADMIN', 'Menu_Categorias', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('ADMIN', 'Menu_Proveedores', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('ADMIN', 'Menu_Usuarios', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('ADMIN', 'Menu_HistorialGeneral', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR));

-- ######################################################################
-- # 2.2 PERMISOS PARA EL ROL: AUDITOR (SOLO DISPLAY)
-- ######################################################################

REPLACE INTO funciones_roles (rolescod, fncod, fnrolest, fnexp) VALUES 
-- Permisos CRUD (Solo Display/Ver)
('AUDITOR', 'product_DSP', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('AUDITOR', 'categoria_DSP', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('AUDITOR', 'proveedor_DSP', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('AUDITOR', 'usuario_DSP', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
-- Permisos de Menú (Todos los de administración y cliente para fiscalizar)
('AUDITOR', 'Menu_SignIn', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('AUDITOR', 'Menu_SignUp', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('AUDITOR', 'Menu_PaymentCheckout', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('AUDITOR', 'Menu_MisCompras', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('AUDITOR', 'Menu_Catalogo', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('AUDITOR', 'Menu_Products', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('AUDITOR', 'Menu_Categorias', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('AUDITOR', 'Menu_Proveedores', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('AUDITOR', 'Menu_Usuarios', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('AUDITOR', 'Menu_HistorialGeneral', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR));


-- ######################################################################
-- # 2.3 PERMISOS PARA EL ROL: PÚBLICO (CLIENTE)
-- ######################################################################

REPLACE INTO funciones_roles (rolescod, fncod, fnrolest, fnexp) VALUES 
-- Permisos CRUD (Solo Display de Producto para ver detalles del catálogo)
('PUBLICO', 'product_DSP', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
-- Permisos de Menú (Funciones de cliente)
('PUBLICO', 'Menu_SignIn', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('PUBLICO', 'Menu_SignUp', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('PUBLICO', 'Menu_PaymentCheckout', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('PUBLICO', 'Menu_MisCompras', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('PUBLICO', 'Menu_Catalogo', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR));


-- ASIGNAR PERMISOS DEL CONTROLADOR Y MENÚS DE USUARIOS AL ROL 'ADMIN'

-- 1. Insertar el código de función para el CONTROLADOR PRINCIPAL (fntyp='CTR')
INSERT IGNORE INTO funciones (fncod, fndsc, fnest, fntyp) VALUES 
('Controllers\\Usuarios\\Usuarios', 'Controlador de Mantenimiento de Usuarios', 'ACT', 'CTR');

-- 2. Asignar el permiso del CONTROLADOR y el MENÚ al rol ADMIN
REPLACE INTO funciones_roles (rolescod, fncod, fnrolest, fnexp) VALUES 
-- Permiso de acceso al controlador principal (para ejecutar la página)
('ADMIN', 'Controllers\\Usuarios\\Usuarios', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
-- Permiso de acceso al menú (para ver el enlace)
('ADMIN', 'Menu_Usuarios', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR));

-- REVOCAR ACCESO AL CATÁLOGO PARA EL ROL 'ADMIN'

-- ######################################################################
-- # 1. INSERCIÓN DE CÓDIGOS DE FUNCIÓN DE CONTROLADORES FALTANTES
-- ######################################################################

INSERT IGNORE INTO funciones (fncod, fndsc, fnest, fntyp) VALUES
('Controllers\\Productos\\Catalogo', 'Controlador de Visualización del Catálogo', 'ACT', 'CTR'),
('Controllers\\Orders\\MyOrders', 'Controlador de Pedidos del Cliente', 'ACT', 'CTR'),
('Controllers\\Orders\\AdminOrders', 'Controlador de Historial General de Pedidos', 'ACT', 'CTR');

-- ######################################################################
-- # 2. ASIGNACIÓN DE ACCESO AL ROL ADMIN
-- ######################################################################

REPLACE INTO funciones_roles (rolescod, fncod, fnrolest, fnexp) VALUES
-- Asignación del controlador del Catálogo
('ADMIN', 'Controllers\\Productos\\Catalogo', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
-- Asignación del controlador de Mis Compras
('ADMIN', 'Controllers\\Orders\\MyOrders', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
-- Asignación del controlador del Historial General
('ADMIN', 'Controllers\\Orders\\AdminOrders', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR));

INSERT IGNORE INTO funciones (fncod, fndsc, fnest, fntyp) VALUES
('order_admin_DSP', 'Ver Historial General de Pedidos', 'ACT', 'FNC');

REPLACE INTO funciones_roles (rolescod, fncod, fnrolest, fnexp) VALUES
('ADMIN', 'order_admin_DSP', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR));

-- REVOCAR PERMISOS DE CLIENTE AL ROL 'ADMIN'

UPDATE funciones_roles
SET fnrolest = 'INA'
WHERE rolescod = 'ADMIN' 
  AND fncod IN ('Menu_PaymentCheckout', 'Menu_MisCompras');

  -- REVOCAR PERMISOS DE CONTROLADOR DE CLIENTE AL ROL 'ADMIN'

UPDATE funciones_roles
SET fnrolest = 'INA'
WHERE rolescod = 'ADMIN' 
  AND fncod IN ('Controllers\\Orders\\MyOrders');

  REPLACE INTO funciones_roles (rolescod, fncod, fnrolest, fnexp) VALUES 
('AUDITOR', 'product_DSP', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('AUDITOR', 'categoria_DSP', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('AUDITOR', 'proveedor_DSP', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('AUDITOR', 'usuario_DSP', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
-- Asignación de todos los menús de administración (para visualización)
('AUDITOR', 'Menu_Products', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('AUDITOR', 'Menu_Categorias', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('AUDITOR', 'Menu_Proveedores', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('AUDITOR', 'Menu_Usuarios', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('AUDITOR', 'Menu_HistorialGeneral', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR));

REPLACE INTO funciones_roles (rolescod, fncod, fnrolest, fnexp) VALUES 
-- Permisos de cliente
('PUBLICO', 'product_DSP', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('PUBLICO', 'Menu_SignIn', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('PUBLICO', 'Menu_SignUp', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('PUBLICO', 'Menu_PaymentCheckout', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('PUBLICO', 'Menu_MisCompras', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR));


-- SCRIPT PARA REVOCAR TODOS LOS PERMISOS ADMINISTRATIVOS Y WW DEL ROL 'PUBLICO'
-- Esto limpia completamente el rol, dejándolo solo con lo esencial de Cliente.

-- SCRIPT CORREGIDO PARA REVOCAR TODOS LOS PERMISOS ADMINISTRATIVOS Y WW DEL ROL 'PUBLICO'

UPDATE funciones_roles
SET fnrolest = 'INA'
WHERE rolescod = 'PUBLICO' 
  AND fncod IN (
    'Menu_Products', 
    'Menu_Categorias', 
    'Menu_Proveedores', 
    'Menu_Usuarios', 
    'Menu_HistorialGeneral', 
    'product_INS', 'product_UPD', 'product_DEL',
    'categoria_DSP', 'categoria_INS', 'categoria_UPD', 'categoria_DEL',
    'proveedor_DSP', 'proveedor_INS', 'proveedor_UPD', 'proveedor_DEL',
    'usuario_DSP', 'usuario_INS', 'usuario_UPD', 'usuario_DEL',
    'order_admin_DSP'
  );

REPLACE INTO funciones_roles (rolescod, fncod, fnrolest, fnexp) VALUES 
('PUBLICO', 'product_DSP', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('PUBLICO', 'Menu_SignIn', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('PUBLICO', 'Menu_SignUp', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('PUBLICO', 'Menu_PaymentCheckout', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR)),
('PUBLICO', 'Menu_MisCompras', 'ACT', DATE_ADD(NOW(), INTERVAL 1 YEAR));

INSERT INTO `funciones_roles` (`rolescod`, `fncod`, `fnrolest`, `fnexp`) VALUES
('Publico', 'Controllers\\Productos\\Catalogo', 'ACT', '2026-12-31 00:00:00'),
('Publico', 'Controllers\\Productos\\ProductoDetalle', 'ACT', '2026-12-31 00:00:00');