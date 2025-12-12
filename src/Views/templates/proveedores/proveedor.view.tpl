<section class="depth-2 px-2 py-2 form-header-admin">
    <h2>{{modeDsc}}</h2>
</section>

<section class="grid py-4 px-4 my-4">
    <div class="row">
        <div class="col-12 offset-m-1 col-m-10 offset-l-3 col-l-6">
            <form class="row" action="index.php?page=Proveedores-Proveedor&mode={{mode}}&id={{id}}" method="post" 
                style="display: flex; flex-direction: column; gap: 0.5rem;">
                
                <input type="hidden" name="xsrToken" value="{{xsrToken}}" />
                
                <div class="row">
                    <label for="id" class="col-12 col-m-4">ID</label>
                    <input type="text" class="col-12 col-m-8" name="id" id="id" value="{{id}}" readonly />
                </div>

                <div class="row">
                    <label for="nombre" class="col-12 col-m-4">Nombre</label>
                    <input type="text" class="col-12 col-m-8" name="nombre" id="nombre" value="{{nombre}}" {{readonly}} />
                    {{if error_nombre}}
                        <span class="error col-12 col-m-8">{{error_nombre}}</span>
                    {{endif error_nombre}}
                </div>

                <div class="row">
                    <label for="contacto" class="col-12 col-m-4">Contacto</label>
                    <input type="text" class="col-12 col-m-8" name="contacto" id="contacto" value="{{contacto}}" {{readonly}} />
                </div>

                <div class="row">
                    <label for="telefono" class="col-12 col-m-4">Teléfono</label>
                    <input type="text" class="col-12 col-m-8" name="telefono" id="telefono" value="{{telefono}}" {{readonly}} />
                </div>

                <div class="row">
                    <label for="correo" class="col-12 col-m-4">Correo</label>
                    <input type="email" class="col-12 col-m-8" name="correo" id="correo" value="{{correo}}" {{readonly}} />
                </div>

                <div class="row">
                    <label for="direccion" class="col-12 col-m-4">Dirección</label>
                    <textarea class="col-12 col-m-8" name="direccion" id="direccion" {{readonly}}>{{direccion}}</textarea>
                </div>

                <div class="row">
                    <label for="estado" class="col-12 col-m-4">Estado</label>
                    <select class="col-12 col-m-8" id="estado" name="estado" {{if readonly}}readonly disabled{{endif readonly}}>
                        <option value="activo" {{estadoactivo}}>Activo</option>
                        <option value="inactivo" {{estadoinactivo}}>Inactivo</option>
                    </select>
                </div>

                <div class="row flex-end">
                    <button id="btnCancel" type="button">
                        {{if showAction}}
                            Cancelar
                        {{endif showAction}}
                        {{ifnot showAction}}
                            Volver
                        {{endifnot showAction}}
                    </button>
                    &nbsp;
                    {{if showAction}}
                        <button class="primary" type="submit">Confirmar</button>
                    {{endif showAction}}
                </div>
            </form>
        </div>
    </div>
</section>

<script>
  document.getElementById("btnCancel").addEventListener("click", function (e) {
    e.preventDefault();
    window.location = "index.php?page=Proveedores-Proveedores";
  });
</script>
