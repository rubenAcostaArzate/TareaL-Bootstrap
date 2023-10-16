<%@ page contentType="text/html; charset=UTF-8"  %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>

<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <title>Editar ingrediente</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="CSS/styles.css" />
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

        <form class="mx-auto p-5 w-50" method="post" action="validacionFormServlet">
            <div class="mb-3">
                <label for="nombre" class="form-label">Nombre</label>
                <%
                    String nombre = request.getParameter("nombre");
                    if (request.getParameter("nombre") == null) {
                        nombre = "";
                    }
                %>
                <input type="text" class="form-control" id="nombre" name="nombre" value="<%= nombre %>">
                
                <div class="text-danger">
                    <%
                    if (request.getAttribute("nombreError") != null) {
                        out.println(request.getAttribute("nombreError"));
                    }
                    %>
                </div>
                
            </div>
            <div class="mb-3">
                <label for="tipo_producto" class="form-label">Tipo producto</label><br/>
                <%
                    String tipoProducto = request.getParameter("tipo_producto");
                    if (request.getParameter("tipo_producto") == null) {
                        tipoProducto = "";
                    }
                %>
                <select name="tipo_producto" id="tipo_producto">
                    <option value="" <%= tipoProducto.equals("") ? "selected" : "" %>>Escoge el tipo del producto</option>
                    <option value="solido" <%= tipoProducto.equals("solido") ? "selected" : "" %>>Solido</option>
                    <option value="liquido" <%= tipoProducto.equals("liquido") ? "selected" : "" %>>Liquido</option>
                </select>
                <div class="text-danger">
                    <%
                    if (request.getAttribute("tipo_productoError") != null) {
                        out.println(request.getAttribute("tipo_productoError"));
                    }
                    %>
                </div>
            </div>
            <div class="mb-3">
                <label for="cantidad" class="form-label">Cantidad </label>
                <%
                    String cantidad = request.getParameter("cantidad");
                    if (request.getParameter("cantidad") == null) {
                        cantidad = "";
                    }
                %>
                <input type="number" class="form-control" id="cantidad" min="0" name="cantidad" 
                value="<%= cantidad %>">
                <div class="text-danger">
                    <%
                    if (request.getAttribute("cantidadError") != null) {
                        out.println(request.getAttribute("cantidadError"));
                    }
                    %>
                </div>
            </div>
            <div class="mb-3">
                <label for="medida" class="form-label">Medida</label><br/>
                <%
                    String tipoMedida = request.getParameter("medida");
                    if (request.getParameter("medida") == null) {
                        tipoMedida = "";
                    }
                %>
                <select name="medida" id="medida">
                    <option value="" <%= tipoMedida.equals("") ? "selected" : "" %>>Escoge la medida del producto</option>
                    <option value="kilogramos" <%= tipoMedida.equals("kilogramos") ? "selected" : "" %>>kg</option>
                    <option value="gramos" <%= tipoMedida.equals("gramos") ? "selected" : "" %>>gr</option>
                    <option value="libras" <%= tipoMedida.equals("libras") ? "selected" : "" %>>lb</option>
                    <option value="piezas" <%= tipoMedida.equals("piezas") ? "selected" : "" %>>piezas</option>
                </select>
                <div class="text-danger">
                    <%
                    if (request.getAttribute("tipo_medidaError") != null) {
                        out.println(request.getAttribute("tipo_medidaError"));
                    }
                    %>
                </div>
            </div>
            <div class="mb-3">
                <label for="costo" class="form-label">Costo</label>
                <%
                    String costo = request.getParameter("costo");
                    if (request.getParameter("costo") == null) {
                        costo = "";
                    }
                %>
                <input name="costo" type="number" class="form-control" id="costo" min="0"
                value="<%= costo %>">
                <div class="text-danger">
                    <%
                    if (request.getAttribute("costoError") != null) {
                        out.println(request.getAttribute("costoError"));
                    }
                    %>
                </div>
            </div>
            <div class="mb-3">
                <label for="fechaAdquisicion" class="form-label">Fecha de Adquisión</label>
                <%
                    String fechaAd = request.getParameter("fechaAdquisicion");
                    if (request.getParameter("fechaAdquisicion") == null) {
                        fechaAd = "";
                    }
                %>
                <input name="fechaAdquisicion" type="date" class="form-control" id="fechaAdquisicion"
                value="<%= fechaAd %>">
                <div class="text-danger">
                    <%
                    if (request.getAttribute("fechaAdquisicionError") != null) {
                        out.println(request.getAttribute("fechaAdquisicionError"));
                    }
                    %>
                </div>
            </div>
            <div class="mb-3">
                <label for="fechaCaducidad" class="form-label">Fecha de Caducidad</label>
                <%
                    String fechaCad = request.getParameter("fechaCaducidad");
                    if (request.getParameter("fechaCaducidad") == null) {
                        fechaCad = "";
                    }
                %>
                <input name="fechaCaducidad" type="date" class="form-control" id="fechaCaducidad"
                value="<%= fechaCad %>">
                <div class="text-danger">
                    <%
                    if (request.getAttribute("fechaCaducidadError") != null) {
                        out.println(request.getAttribute("fechaCaducidadError"));
                    }
                    %>
                </div>
            </div>
            <div class="mb-3">
                <label for="nombreProveedor" class="form-label">Nombre del proveedor</label>
                <%
                    String proveedor = request.getParameter("nombreProveedor");
                    if (request.getParameter("nombreProveedor") == null) {
                        proveedor = "";
                    }
                %>
                <input type="text" class="form-control" id="nombreProveedor" name="nombreProveedor" 
                value="<%= proveedor %>">
                <div class="text-danger">
                    <%
                    if (request.getAttribute("nombreProveedorError") != null) {
                        out.println(request.getAttribute("nombreProveedorError"));
                    }
                    %>
                </div>
            </div>
            <div class="mb-3">
                <label for="descripcion" class="form-label">Descripcion</label>
                <%
                    String descrip = request.getParameter("descripcion");
                    if (request.getParameter("descripcion") == null) {
                        descrip = "";
                    }
                %>
                <textarea name="descripcion" class="form-control textarea-form" id="descripcion" cols="100" rows="10"><%= descrip %></textarea>
                <div class="text-danger">
                    <%
                    if (request.getAttribute("descripcionError") != null) {
                        out.println(request.getAttribute("descripcionError"));
                    }
                    %>
                </div>
            </div>
            <div class="mb-3">
                <label for="comentarios" class="form-label">Comentarios</label>
                <%
                    String coment = request.getParameter("comentarios");
                    if (request.getParameter("comentarios") == null) {
                        coment = "";
                    }
                %>
                <textarea name="comentarios" class="form-control textarea-form" id="comentarios" value="" cols="100" rows="10"><%= coment %></textarea>
            </div>

            <div class="d-flex justify-content-end mt-5">
                <button type="submit" class="btn btn-primary">Aceptar cambios</button>
            </div>
        </form>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</body>
</html>
