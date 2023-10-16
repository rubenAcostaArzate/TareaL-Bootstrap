import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;


public class ValidacionFormServlet extends HttpServlet {

    public int[] convierteFecha(String fecha){
        String[] arregloSFecha=fecha.split(" ");
        int [] arregloFecha=new int[3];
        
        switch(arregloSFecha[1]){
            case "Jan":
                arregloFecha[0]=1;
                break;
    
            case "Feb":
                arregloFecha[0]=2;
                break;
            
            case "Mar":
                arregloFecha[0]=3;
                break;
            
            case "Apr":
                arregloFecha[0]=4;
                break;
            
            case "May":
                arregloFecha[0]=5;
                break;
            
            case "Jun":
                arregloFecha[0]=6;
                break;
        
            case "Jul":
                arregloFecha[0]=7;
                break;
        
            case "Aug":
                arregloFecha[0]=8;
                break;
            
            case "Sep":
                arregloFecha[0]=9;
                break;
        
            case "Oct":
                arregloFecha[0]=10;
                break;
        
            case "Nov":
                arregloFecha[0]=11;
                break;
            
            case "Dec":
                arregloFecha[0]=12;
                break;
        
            default:
                arregloFecha[0]=0;
                System.out.println("Ocurrio un error");
                break;
        }
        
        arregloFecha[1]=Integer.parseInt(arregloSFecha[2]);
        arregloFecha[2]=Integer.parseInt(arregloSFecha[5]);
    
        return arregloFecha;
    }
    
    public boolean esPosterior(String fecha){
        String[] arregloSFecha=fecha.split("-");
        int[] arregloFecha=new int[3];
    
        for(int i=0; i<arregloSFecha.length;i++){
            if(arregloSFecha[i].equals(""))
                return true;
            arregloFecha[i]=Integer.parseInt(arregloSFecha[i]);
        }
    
        Date fecha_actual=new Date();
        String fechaActual=fecha_actual.toString();
        int[] arregloFechaActual=convierteFecha(fechaActual);
        
        for (int i =arregloFecha.length-1;  i >0 ; i--){
            if (arregloFechaActual[i]<arregloFecha[i]) {
                return true;
            }
        } 
        
        return false;
    }

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
            request.setAttribute("fechaAdquisicionError", "La fecha de adquisicion del producto es obligatoria");
            errores.put("fechaAdquisicion","La fecha de adquisicion del producto es obligatoria");
        }/*else if(esPosterior(request.getParameter("fechaAdquisicion"))){
            datosValidados=false;
            errores.put("fechaAdquisicion", "La fecha de adquisicion del producto es posterior a la actual" );
        } */

        if (request.getParameter("fechaCaducidad") == "") {
            datosValidados = false;
            request.setAttribute("fechaCaducidadError", "La fecha de caducidad del producto es obligatoria");
            errores.put("fechaCaducidad","La fecha de caducidad del producto es obligatoria");
        }/*else if(!esPosterior(request.getParameter("fechaCaducidad"))){
            datosValidados=false;
            errores.put("fechaCaducidad", "La fecha de caducidad del producto es anterior a la actual" );
        } */

        if (request.getParameter("nombreProveedor") == null || request.getParameter("nombreProveedor") == "") {
            datosValidados = false;
            request.setAttribute("nombreProveedorError", "El nombre del proveedor del producto es obligatorio");
            errores.put("nombreProveedor","El nombre del proveedor del producto es obligatorio");
        }

        if (request.getParameter("descripcion") == null || request.getParameter("descripcion") == "") {
            datosValidados = false;
            request.setAttribute("descripcionError", "La descripcion del producto es obligatoria");
            errores.put("descripcion","La descripcion del producto es obligatoria");
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
