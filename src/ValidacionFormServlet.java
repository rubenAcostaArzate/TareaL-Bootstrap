import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;

public class ValidacionFormServlet extends HttpServlet {
    
    /*Metodo auxiliar que con una fecha recibida en cadena nos dice si es posterior 
      a fecha actual
      public boolean esPosterior(String){

      } */ 

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        // Validando datos del formulario
        boolean datosValidados = true;
        HashMap<String, String> errores = new HashMap<>();

        String action = "validado.jsp";
        Date fecha_actual= new Date();
        String cadena=fecha_actual.toString();

        if (request.getParameter("nombre") == null || request.getParameter("nombre") == "") {
            datosValidados = false;
            errores.put("nombre","El nombre del producto es nulo");
        }

        /*Aqui irian las validaciones para select si tan solo supiera como hacerlas XD*/

        if (request.getParameter("costo") == null || request.getParameter("costo") == "") {
            datosValidados = false;
            errores.put("costo","El costo del producto es nulo");
        }

        if (request.getParameter("fechaAdquisicion") == null || request.getParameter("fechaAdquisicion") == "") {
            datosValidados = false;
            errores.put("fechaAdquisicion","La fecha de adquisicion del producto es nula");
        }/*else if(esPosterior(request.getParameter("fechaAdquisicion"))){
            datosValidos=false;
            error.put("fechaAdquisicion", "La fecha de adquisicion del producto es posterior a la actual" );
        } */

        if (request.getParameter("fechaCaducidad") == null || request.getParameter("fechaCaducidad") == "") {
            datosValidados = false;
            errores.put("fechaCaducidad","La fecha de caducidad del producto es nula");
        }/*else if(!esPosterior(request.getParameter("fechaCaducidad"))){
            datosValidos=false;
            error.put("fechaCaducidad", "La fecha de caducidad del producto es anterior a la actual" );
        } */

        if (request.getParameter("nombreProvedor") == null || request.getParameter("nombreProvedor") == "") {
            datosValidados = false;
            errores.put("fechaCaducidad","El nombre del provedor del producto es nulo");
        }
    }
}
