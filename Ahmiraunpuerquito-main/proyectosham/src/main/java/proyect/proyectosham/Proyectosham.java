package proyect.proyectosham;
import view.*;
import controller.controllerforms;


public class Proyectosham {
    public static void main(String[] args) {
    vistaprincipal vistainterfaz = new vistaprincipal();
    vistacrear vistacrear = new vistacrear();
    controllerforms cf = new controllerforms(vistainterfaz, vistacrear);
    }
}
