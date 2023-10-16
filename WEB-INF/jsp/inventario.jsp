<%@ page contentType="text/html; charset=UTF-8"  %>

<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <title>Inventario</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href= "CSS/styles.css"/>
  </head>
  <body>

    <header class="bg-dark d-flex justify-content-between align-items-center pt-1 pb-1 ps-3 pe-3">
      <nav class="navbar">
        <h2 class="display-6 text-white m-0 fuente-cursiva">EnsaladasCiencias</a>
      </nav>
      <p class="text-white m-0">Administrador</p>
    </header>

    <main class="pt-4 pb-4">
      <h1 class="mb-4"> Inventario</h1>

      <div class="inventario">

        <div class="bg-success p-4 rounded mt-5 mb-5">
            <h3 class="text-white">Cambios guardados del ingrediente!</h2>
        </div>

        <table class="table">
          <thead class="table-success">
            <tr>
              <th scope="col">Ingredientes</th>
              <th scope="col">Cantidad</th>
              <th scope="col">Costo</th>
              <th scope="col">Fecha</th>
              <th scope="col"></th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th scope="row">Lechuga romana</th>
              <td>10kg</td>
              <td>$200</td>
              <td>14/02/2023</td>
              <td>
                <a class="btn btn-primary" href="formularioEditarIngrediente.html" >editar</a>
              </td>
            </tr>
            <tr>
              <th scope="row">Papas</th>
              <td>15kg</td>
              <td>$450</td>
              <td>14/02/2023</td>
              <td>
                <a class="btn btn-primary" href="formularioEditarIngrediente.html" >editar</a>
              </td>
            </tr>
            <tr>
              <th scope="row">Croutons</th>
              <td>3kg</td>
              <td>$360</td>
              <td>01/08/2023</td>
              <td>
                <a class="btn btn-primary" href="formularioEditarIngrediente.html" >editar</a>
              </td>
            </tr>
            <tr>
              <th scope="row">Limon</th>
              <td>5kg</td>
              <td>$250</td>
              <td>04/06/2023</td>
              <td>
                <a class="btn btn-primary" href="formularioEditarIngrediente.html" >editar</a>
              </td>
            </tr>
            <tr>
              <th scope="row">Aceite de oliva</th>
              <td>3kg</td>
              <td>$150</td>
              <td>01/01/2023</td>
              <td>
                <a class="btn btn-primary" href="formularioEditarIngrediente.html" >editar</a>
              </td>
            </tr>
            <tr>
              <th scope="row">Huevo</th>
              <td>7kg</td>
              <td>$280</td>
              <td>20/09/2023</td>
              <td>
                <a class="btn btn-primary" href="formularioEditarIngrediente.html" >editar</a>
              </td>
            </tr>
            <tr>
              <th scope="row">Salsa Worcestershire</th>
              <td>3kg</td>
              <td>$210</td>
              <td>01/01/2023</td>
              <td>
                <a class="btn btn-primary" href="formularioEditarIngrediente.html" >editar</a>
              </td>
            </tr>
            <tr>
              <th scope="row">Anchoas</th>
              <td>3kg</td>
              <td>$120</td>
              <td>15/05/2023</td>
              <td>
                <a class="btn btn-primary" href="formularioEditarIngrediente.html" >editar</a>
              </td>
            </tr>
            <tr>
              <th scope="row">Ajo</th>
              <td>3kg</td>
              <td>$90</td>
              <td>01/01/2023</td>
              <td>
                <a class="btn btn-primary" href="formularioEditarIngrediente.html" >editar</a>
              </td>
            </tr>
            <tr>
              <th scope="row">Mostaza de Dijon</th>
              <td>3kg</td>
              <td>$150</td>
              <td>15/09/2023</td>
              <td>
                <a class="btn btn-primary" href="formularioEditarIngrediente.html" >editar</a>
              </td>
            </tr>
            <tr>
              <th scope="row">Queso parmesano</th>
              <td>10kg</td>
              <td>$500</td>
              <td>21/03/2023</td>
              <td>
                <a class="btn btn-primary" href="formularioEditarIngrediente.html" >editar</a>
              </td>
            </tr>
            <tr>
              <th scope="row">Pimienta negra</th>
              <td>4kg</td>
              <td>$160</td>
              <td>07/02/2023</td>
              <td>
                <a class="btn btn-primary" href="formularioEditarIngrediente.html" >editar</a>
              </td>
            </tr>
            <tr>
              <th scope="row">Pollo</th>
              <td>10kg</td>
              <td>$300</td>
              <td>15/09/2023</td>
              <td>
                <a class="btn btn-primary" href="formularioEditarIngrediente.html" >editar</a>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
</html>

  

