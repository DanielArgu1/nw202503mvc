<section class="depth-2 px-2 py-2 form-header-admin">
    <h2>{{modeDsc}}</h2>
</section>

<section class="grid py-4 px-4 my-4">
    <div class="row">
        <div class="col-12 offset-m-1 col-m-10 offset-l-3 col-l-6">
            <form class="row" style="display: flex; flex-direction: column; gap: 0.5rem;">
                
                <div class="row">
                    <label for="usercod" class="col-12 col-m-4">ID</label>
                    <input type="text" class="col-12 col-m-8" name="usercod" id="usercod" value="{{usercod}}" readonly />
                </div>

                <div class="row">
                    <label for="useremail" class="col-12 col-m-4">Correo</label>
                    <input type="email" class="col-12 col-m-8" name="useremail" id="useremail" value="{{useremail}}" readonly />
                </div>

                <div class="row">
                    <label for="username" class="col-12 col-m-4">Nombre</label>
                    <input type="text" class="col-12 col-m-8" name="username" id="username" value="{{username}}" readonly />
                </div>

                <div class="row">
                    <label for="userfching" class="col-12 col-m-4">Fecha Ingreso</label>
                    <input type="text" class="col-12 col-m-8" name="userfching" id="userfching" value="{{userfching}}" readonly />
                </div>

                <div class="row">
                    <label for="userest" class="col-12 col-m-4">Estado</label>
                    <input type="text" class="col-12 col-m-8" name="userest" id="userest" value="{{userest}}" readonly />
                </div>

                <div class="row">
                    <label for="userpswdexp" class="col-12 col-m-4">Expiración Contraseña</label>
                    <input type="text" class="col-12 col-m-8" name="userpswdexp" id="userpswdexp" value="{{userpswdexp}}" readonly />
                </div>

                <div class="row">
                    <label for="usertipo" class="col-12 col-m-4">Tipo</label>
                    <input type="text" class="col-12 col-m-8" name="usertipo" id="usertipo" value="{{usertipo}}" readonly />
                </div>

                <div class="row flex-end">
                    <button id="btnCancel" type="button">Volver</button>
                </div>
            </form>
        </div>
    </div>
</section>

<script>
  document.getElementById("btnCancel").addEventListener("click", function(e){
    e.preventDefault();
    window.location = "index.php?page=Usuarios-Usuarios";
  });
</script>
