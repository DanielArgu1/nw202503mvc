<section class="depth-2 px-2 py-2 form-header-admin">
  <h2>Catálogo de Productos</h2>
</section>

 <form method="get" action="index.php" style="text-align: center; margin-bottom: 1.5rem;">
    <input type="hidden" name="page" value="Productos-Catalogo" />
    <input type="text" name="q" placeholder="Buscar productos..." value="{{q}}" style="padding: 0.5rem; width: 250px;" />
    <button type="submit" style="padding: 0.5rem;">Buscar</button>
  </form>

<section class="grid px-4 py-4" style="display: flex; flex-wrap: wrap; gap: 1.5rem; justify-content: center;">
  {{foreach productos}}
  <div class="card" style="width: 240px; border: 1px solid #ddd; border-radius: 12px; padding: 1rem; box-shadow: 0 4px 12px rgba(0,0,0,0.1); display: flex; flex-direction: column; align-items: center; background-color: #fff; transition: transform 0.3s;">

    <div style="width: 200px; height: 200px; background-color: #ffffff; overflow: hidden; display: flex; align-items: center; justify-content: center;">
      {{if imagen}}
        <img src="uploads/productos/{{imagen}}" alt="{{productName}}" style="width: 100%; height: 100%; object-fit: cover; display: block;" />
      {{else}}
        <div style="color:#aaa;"></div>
      {{endif imagen}}
    </div>

    <div style="margin-top: 1rem; text-align: center;">
    <h3 style="font-size: 1.2rem; margin: 0 0 0.5rem; color: #222;">{{productName}}</h3>
    <p style="margin: 0.25rem 0; color: #555;"><strong> 💲Precio:</strong> L {{productPrice}}</p>
    <p style="margin: 0.25rem 0; color: #555;"><strong> 📜Stock:</strong> {{productStock}}</p>
     
     
    </div>
  </div>
  {{endfor productos}}
</section>

