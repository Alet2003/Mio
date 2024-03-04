/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import view.*;
import gui.VentanaTabla;
/**
 *
 * @author SENA
 */
public class controllerforms implements ActionListener{
    vistaprincipal vistainterfaz;
    vistacrear vistacrear;    
    public controllerforms(vistaprincipal vistainterfaz, vistacrear vistacrear) {
        this.vistainterfaz = vistainterfaz;
        this.vistacrear = vistacrear;
        this.iniciar();
        this.vistainterfaz.jBver.addActionListener(this);
        this.vistainterfaz.jBcrear.addActionListener(this);
        this.vistacrear.jButton1.addActionListener(this);
        this.vistacrear.jButton2.addActionListener(this);
    }
    public void iniciar(){
    this.vistainterfaz.setVisible(true);
    this.vistacrear.setVisible(false);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if (this.vistainterfaz.jBcrear == e.getSource()) {
            this.vistacrear.setVisible(true);
            this.vistainterfaz.setVisible(false);
            
        }
        if (this.vistacrear.jButton1 == e.getSource()) {
//            pruebita vistapruebita =new pruebita();
//            vistapruebita.setVisible(true);

        }
    }
}