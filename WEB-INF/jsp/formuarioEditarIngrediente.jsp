<%@ page contentType="text/html"; charset=UTF-8" %>

<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <title>Editar ingrediente</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="../CSS/styles.css" />
</head>
<body>

    <header class="bg-dark d-flex justify-content-between align-items-center pt-1 pb-1 ps-3 pe-3">
        <nav class="navbar">
            <h2 class="display-6 text-white m-0 fuente-cursiva">EnsaladasCiencias</a>
        </nav>
        <p class="text-white m-0">Administrador</p>
    </header>

    <main class="pt-4 pb-4">
        <h1 class="text-center">Editar ingrediente</h1>

        <form class="mx-auto p-5 w-50 form" method="post" action="validacion">
            <div class="mb-3">
                <label for="nombre" class="form-label">Nombre</label>
                <input type="text" class="form-control" id="nombre" value="Papas">
            </div>
            <div class="mb-3">
                <label for="tipo_producto" class="form-label" id="tipoProducto">Tipo producto</label><br/>
                <select name="where">
                    <option value="">Escoge el tipo del producto</option>
                    <option value="solido">kg</option>
                    <option value="liquido">gr</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="cantidad" class="form-label">Cantidad </label>
                <input type="number" class="form-control" id="cantidad" value="15" min="0">
            </div>
            <div class="mb-3">
                <label for="medida" class="form-label">Medida</label><br/>
                <select name="where">
                    <option value="">Escoge la medida del producto</option>
                    <option value="kilogramos">kg</option>
                    <option value="gramos">gr</option>
                    <option value="libras">lb</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="costo" class="form-label">Costo</label>
                <input type="number" class="form-control" id="costo" value="500" min="0">
            </div>
            <div class="mb-3">
                <label for="fecha" class="form-label">Fecha de Adquisión</label>
                <input type="date" class="form-control" id="fechaAdquisicon" value="2023-10-10">
            </div>
            <div class="mb-3">
                <label for="fechaCaducidad" class="form-label">Fecha de Caducidad</label>
                <input type="date" class="form-control" id="fechaCaducidad" value="2026-06-19">
            </div>
            <div class="mb-3">
                <label for="nombreProvedor" class="form-label">Nombre del proveedor</label>
                <input type="text" class="form-control" id="nombreProvedor" value="Ruben Acosta Arzate">
            </div>
            <div class="mb-3">
                <label for="descripcion" class="form-label">Descripcion</label>
                <textarea class="form-control textarea-form" id="descripcion" value="" cols="100" rows="10"></textarea>
            </div>
            <div class="mb-3">
                <label for="comentarios" class="form-label">Comentarios</label>
                <textarea class="form-control textarea-form" id="comentarios" value="" cols="100" rows="10"></textarea>
            </div>

            <div class="d-flex justify-content-end mt-5">
                <a class="btn btn-primary" href="inventario.html">Aceptar cambios</a>
            </div>
        </form>
        <div class="boton-regresa">
            <div class="m-5 d-flex justify-content-start" >
                <button class="btn btn-danger"><a class="nav-link" href="inventario.html">Regresar</a></button>
            </div>
        </div>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</body>
</html>