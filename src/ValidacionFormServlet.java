import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ValidacionFormServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Validando datos del formulario
        boolean datosValidados = true;
        HashMap<String, String> errores = new HashMap<>();

        if (request.getParameter("nombre") == null || request.getParameter("nombre").equals("")) {
            datosValidados = false;
            request.setAttribute("nombreError", "El nombre del producto es obligatorio");
            errores.put("nombre","El nombre del producto es nulo");
        }

        if (request.getParameter("tipo_producto") == "") {
            datosValidados = false;
            request.setAttribute("tipo_productoError", "El tipo del producto es obligatorio");
            errores.put("tipo_producto", "El tipo del producto es obligatorio");
        }

        if (request.getParameter("cantidad") == null || request.getParameter("cantidad") == "") {
            datosValidados = false;
            request.setAttribute("cantidadError", "La cantidad de productos es obligatorio");
            errores.put("cantidad","La cantidad de productos es obligatorio");
        }

        if (request.getParameter("medida") == "") {
            datosValidados = false;
            request.setAttribute("tipo_medidaError", "La medida del producto es obligatoria");
            errores.put("medida","La medida del producto es obligatoria");
        }

        if (request.getParameter("costo") == null || request.getParameter("costo") == "") {
            datosValidados = false;
            request.setAttribute("costoError", "El costo del producto es obligatorio");
            errores.put("costo","El costo del producto es obligatorio");
        }

        if (request.getParameter("fechaAdquisicion") == "") {
            datosValidados = false;
            request.setAttribute("fechaAdquisicionError", "La fecha de adquisición del producto es obligatoria");
            errores.put("fechaAdquisicion","La fecha de adquisición del producto es obligatoria");
        }

        if (request.getParameter("fechaCaducidad") == "") {
            datosValidados = false;
            request.setAttribute("fechaCaducidadError", "La fecha de caducidad del producto es obligatoria");
            errores.put("fechaCaducidad","La fecha de caducidad del producto es obligatoria");
        }

        if (request.getParameter("nombreProveedor") == null || request.getParameter("nombreProveedor") == "") {
            datosValidados = false;
            request.setAttribute("nombreProveedorError", "El nombre del proveedor del producto es obligatorio");
            errores.put("nombreProveedor","El nombre del proveedor del producto es obligatorio");
        }

        if (request.getParameter("descripcion") == null || request.getParameter("descripcion") == "") {
            datosValidados = false;
            request.setAttribute("descripcionError", "La descripción del producto es obligatoria");
            errores.put("descripcion","La descripción del producto es obligatoria");
        }


        // Verificando si hubo un error
        if(datosValidados) {
            request.getRequestDispatcher("WEB-INF/jsp/inventario.jsp").forward(request, response);
        } else {
            request.setAttribute("errores", errores);
            request.getRequestDispatcher("WEB-INF/jsp/formuarioEditarIngrediente.jsp").forward(request, response);
        }

    }
}
