<section class="depth-2 px-2 py-2 form-header-admin">
    <h2>Mis Compras</h2>
</section>

<table class="data-table width-full" style="width:100%; border-collapse: collapse; font-family: Arial, sans-serif; margin: 0 auto; max-width: 900px;">
  <thead>
    <tr >
      <th style="padding: 12px; border: 1px solid #ddd;">ID Orden</th>
      <th style="padding: 12px; border: 1px solid #ddd;">Estado</th>
      <th style="padding: 12px; border: 1px solid #ddd;">Monto</th>
      <th style="padding: 12px; border: 1px solid #ddd;">Moneda</th>
      <th style="padding: 12px; border: 1px solid #ddd;">Fecha</th>
    </tr>
  </thead>
  <tbody>
    {{foreach orders}}
    <tr style="text-align: center; border-bottom: 1px solid #ddd;">
      <td style="padding: 10px; border: 1px solid #ddd;">{{orderId}}</td>
      <td style="padding: 10px; border: 1px solid #ddd;">{{status}}</td>
      <td style="padding: 10px; border: 1px solid #ddd;">L {{amount}}</td>
      <td style="padding: 10px; border: 1px solid #ddd;">{{currency}}</td>
      <td style="padding: 10px; border: 1px solid #ddd;">{{createTime}}</td>
    </tr>
    {{endfor orders}}
  </tbody>
</table>

