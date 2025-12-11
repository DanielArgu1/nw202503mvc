<section class="depth-2 px-2 py-2 form-header-admin">
  <h2>Lista de Usuarios</h2>
</section>

<section class="table-responsive form-card mx-4 WWList my-4">
  <!-- No tienes botón nuevo, solo ver -->
  <table class="data-table width-full">
    <thead>
      <tr>
        <th align="center">ID</th>
        <th align="center">Correo</th>
        <th align="center">Nombre</th>
        <th align="center">Fecha Ingreso</th>
        <th align="center">Estado</th>
        <th align="center">Expira</th>
        <th align="center">Tipo</th>
        <th align="center">Acciones</th>
      </tr>
    </thead>
    <tbody>
      {{foreach usuarios}}
      <tr>
        <td align="center">{{usercod}}</td>
        <td align="center">{{useremail}}</td>
        <td align="center">{{username}}</td>
        <td align="center">{{userfching}}</td>
        <td align="center">{{userest}}</td>
        <td align="center">{{userpswdexp}}</td>
        <td align="center">{{usertipo}}</td>
        <td align="center">
          <a href="index.php?page=Usuarios-Usuario&mode=DSP&id={{usercod}}">👁️</a>
        </td>
      </tr>
      {{endfor usuarios}}
    </tbody>
  </table>
</section>

