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
        String[] arregloSFecha=fecha.split("/");
        int[] arregloFecha=new int[3];
    
        for(int i=0; i<arregloSFecha.length;i++){
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
        }else if(esPosterior(request.getParameter("fechaAdquisicion"))){
            datosValidados=false;
            errores.put("fechaAdquisicion", "La fecha de adquisicion del producto es posterior a la actual" );
        } 

        if (request.getParameter("fechaCaducidad") == null || request.getParameter("fechaCaducidad") == "") {
            datosValidados = false;
            errores.put("fechaCaducidad","La fecha de caducidad del producto es nula");
        }else if(!esPosterior(request.getParameter("fechaCaducidad"))){
            datosValidados=false;
            errores.put("fechaCaducidad", "La fecha de caducidad del producto es anterior a la actual" );
        } 

        if (request.getParameter("nombreProveedor") == null || request.getParameter("nombreProvedor") == "") {
            datosValidados = false;
            errores.put("nombreProveedor","El nombre del provedor del producto es nulo");
        }
    }
}
