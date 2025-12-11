<section class="fullCenter">
  <form class="grid" method="post" action="index.php?page=sec_register">
    
    <section class="form-header row col-12 col-m-8 offset-m-2 col-xl-6 offset-xl-3" 
             style="background-color: rgb(152, 40, 196);">
      <h1 class="col-12 form-title">Crea tu cuenta</h1> 
    </section>
    
    <section class="form-body row col-12 col-m-8 offset-m-2 col-xl-6 offset-xl-3">
      
      <div class="row form-group"> 
        <label class="col-12 col-m-4 flex align-center" for="txtEmail">Correo Electrónico</label>
        <div class="col-12 col-m-8">
          <input class="width-full input-field" type="email" id="txtEmail" name="txtEmail" value="{{txtEmail}}" required autocomplete="email" /> 
        </div>
        {{if errorEmail}}
        <div class="error-message col-12 py-2 col-m-8 offset-m-4">{{errorEmail}}</div> 
        {{endif errorEmail}}
      </div>
      
      <div class="row form-group"> 
        <label class="col-12 col-m-4 flex align-center" for="txtPswd">Contraseña</label>
        <div class="col-12 col-m-8">
          <input class="width-full input-field" type="password" id="txtPswd" name="txtPswd" value="{{txtPswd}}" required autocomplete="new-password" />
        </div>
        {{if errorPswd}}
        <div class="error-message col-12 py-2 col-m-8 offset-m-4">{{errorPswd}}</div>
        {{endif errorPswd}}
      </div>
      
      <div class="row form-actions col-12 flex justify-end px-4"> 
        <button class="primary btn-login" id="btnSignin" type="submit">
          <strong>Crear Cuenta</strong><small>&rsaquo;</small>
        </button>
      </div>
    </section>
  </form>
</section>