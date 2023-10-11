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

        String action = "validado.jsp";

        if (request.getParameter("tipoProducto") == null || request.getParameter("tipoProducto") == "") {
            datosValidados = false;
        }
    }
}
