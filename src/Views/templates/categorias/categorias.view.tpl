<section class="depth-2 px-2 py-2 form-header-admin">
    <h2>Mantenimiento de Categorías</h2>
</section>

<form method="get" action="index.php" class="row my-4 px-4 align-center">
    <input type="hidden" name="page" value="Productos-Productos" />
    <input type="text" name="q" placeholder="Buscar productos..." value="{{q}}" />
    <button type="submit">Buscar</button>
</form>

<section class="table-responsive form-card mx-4 WWList my-4">
    <table class="data-table width-full">
        <thead>
            <tr>
                <th align="center">Id</th>
                <th align="center">Nombre</th>
                <th align="center">Descripción</th>
                <th align="center">Estado</th>
                <th align="center">
                    {{if isNewEnabled}}
                    <a href="index.php?page=Categorias-Categoria&mode=INS&id="style= "color: rgb(0, 0, 0); text-decoration: none; border-radius: 4px;">
                        Nuevo
                    </a>
                    {{endif isNewEnabled}}
                </th>
            </tr>
        </thead>
        <tbody>
            {{foreach categorias}}
            <tr>
                <td align="center">{{id}}</td>
                <td align="center">{{nombre}}</td>
                <td align="center">{{descripcion}}</td>
                <td align="center">{{estado}}</td>
                <td align="center">
                    <a href="index.php?page=Categorias-Categoria&mode=DSP&id={{id}}">
                        👁️
                    </a>
                    &nbsp;
                    {{if ~isUpdateEnabled}}
                    <a href="index.php?page=Categorias-Categoria&mode=UPD&id={{id}}">
                        ✏️
                    </a>
                    &nbsp;
                    {{endif ~isUpdateEnabled}}
                    {{if ~isDeleteEnabled}}
                    <a href="index.php?page=Categorias-Categoria&mode=DEL&id={{id}}">
                        🗑️
                    </a>
                    {{endif ~isDeleteEnabled}}
                </td>
            </tr>
            {{endfor categorias}}
        </tbody>
    </table>
</section>

