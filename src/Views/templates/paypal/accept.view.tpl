<div style="max-width: 600px; margin: 2rem auto; font-family: 'Arial', sans-serif; background-color: #f7f8f8; border: 1px solid #ddd; border-radius: 12px; overflow: hidden; box-shadow: 0 4px 12px rgba(0,0,0,0.1);">
  
 
  <div style="background-color: #6c5ce7; color: white; text-align: center; padding: 1rem;">
    <h1 style="margin: 0; font-size: 1.5rem;">Factura de Pago</h1>
  </div>
  
  <div style="padding: 1rem;">
    <h2 style="font-size: 1.2rem; margin-bottom: 0.5rem;">Orden ID: {{order_id}}</h2>
    <p style="margin: 0.2rem 0;"><strong>Estado:</strong> {{status}}</p>
    <p style="margin: 0.2rem 0;"><strong>Fecha de Pago:</strong> {{payment_date}}</p>
  </div>
  
  <hr style="margin: 0; border-color: #eee;" />
  

  <div style="padding: 1rem;">
    <h3 style="margin-bottom: 0.5rem;">Datos del Pagador</h3>
    <p style="margin: 0.2rem 0;"><strong>Nombre:</strong> {{payer_name}}</p>
    <p style="margin: 0.2rem 0;"><strong>Email:</strong> {{payer_email}}</p>
  </div>
  
  <hr style="margin: 0; border-color: #eee;" />
  
 
  <div style="padding: 1rem;">
    <h3 style="margin-bottom: 0.5rem;">Dirección de Envío</h3>
    <p style="margin: 0.2rem 0;"><strong>Dirección:</strong> {{shipping_address.address_line_1}}</p>
    <p style="margin: 0.2rem 0;"><strong>Ciudad:</strong> {{shipping_address.admin_area_2}}</p>
    <p style="margin: 0.2rem 0;"><strong>Departamento:</strong> {{shipping_address.admin_area_1}}</p>
    <p style="margin: 0.2rem 0;"><strong>Código Postal:</strong> {{shipping_address.postal_code}}</p>
    <p style="margin: 0.2rem 0;"><strong>País:</strong> {{shipping_address.country_code}}</p>
  </div>
  
  <hr style="margin: 0; border-color: #eee;" />
  

  <div style="padding: 1rem;">
    <h3 style="margin-bottom: 0.5rem;">Productos Comprados</h3>
    <ul style="margin: 0; padding-left: 1rem;">
      {{foreach productos}}
      <li>{{productName}} (x{{crrctd}}) - L {{crrprc}} c/u</li>
      {{endfor productos}}
    </ul>
  </div>
  
  <hr style="margin: 0; border-color: #eee;" />
  

  <div style="padding: 1rem;">
    <h3 style="margin-bottom: 0.5rem;">Detalles de Pago</h3>
    <p style="margin: 0.2rem 0;"><strong>ID de Pago:</strong> {{payment_id}}</p>
    <p style="margin: 0.2rem 0;"><strong>Monto:</strong> {{amount}} {{currency}}</p>
  </div>
  
  <div style="padding: 1rem; background-color: #f1f2f6; text-align: center; font-size: 1.2rem; font-weight: bold;">
    Total Pagado: {{amount}} {{currency}}
  </div>
  

  <div style="text-align: center; padding: 1rem;">
    <a href="index.php?page=Index" style="display: inline-block; padding: 0.5rem 1rem; background-color: #6c5ce7; color: white; text-decoration: none; border-radius: 4px;">
      Regresar al inicio
    </a>
  </div>
</div>











