/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package view;

import java.util.ArrayList;
import model.modelinstituciones;

/**
 *
 * @author SENA
 */
public class vistacrear extends javax.swing.JFrame {

    /**
     * Creates new form Interfazcrear
     */
    public vistacrear() {
        initComponents();
    }
//     private void llenarCombo(){
//        modelinstituciones modins = new modelinstituciones();
//        ArrayList<modelinstituciones> lPro = modins.getClass();
//        
//        for (int i = 0; i < lPro.size(); i++) {
//            jComboBoxinstitucion.
//        }
//    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jComboBoxmunicipio = new javax.swing.JComboBox<>();
        jComboBoxtrimestre = new javax.swing.JComboBox<>();
        jComboBoxinstitucion = new javax.swing.JComboBox<>();
        jComboBoxgrado = new javax.swing.JComboBox<>();
        jComboBoxdia = new javax.swing.JComboBox<>();
        jSeparator1 = new javax.swing.JSeparator();
        jSeparator3 = new javax.swing.JSeparator();
        jSeparator4 = new javax.swing.JSeparator();
        jSeparator5 = new javax.swing.JSeparator();
        jSeparator6 = new javax.swing.JSeparator();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jLabel7 = new javax.swing.JLabel();
        jLinstructor = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        jLabel13 = new javax.swing.JLabel();
        jTextinstructor = new javax.swing.JTextField();
        jTextficha = new javax.swing.JTextField();
        jTextcompetencia = new javax.swing.JTextField();
        jTexthoraini = new javax.swing.JTextField();
        jTexthorafin = new javax.swing.JTextField();
        jLabel10 = new javax.swing.JLabel();
        jLabel14 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jComboBoxmunicipio.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));
        jComboBoxmunicipio.setBorder(null);
        jComboBoxmunicipio.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        jComboBoxmunicipio.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jComboBoxmunicipioActionPerformed(evt);
            }
        });
        getContentPane().add(jComboBoxmunicipio, new org.netbeans.lib.awtextra.AbsoluteConstraints(230, 410, 140, 30));

        jComboBoxtrimestre.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        jComboBoxtrimestre.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "1er Trimestre", "2do Trimestre", "3er Trimestre" }));
        jComboBoxtrimestre.setBorder(null);
        jComboBoxtrimestre.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jComboBoxtrimestreActionPerformed(evt);
            }
        });
        getContentPane().add(jComboBoxtrimestre, new org.netbeans.lib.awtextra.AbsoluteConstraints(610, 310, 130, 30));

        jComboBoxinstitucion.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));
        jComboBoxinstitucion.setBorder(null);
        jComboBoxinstitucion.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jComboBoxinstitucionActionPerformed(evt);
            }
        });
        getContentPane().add(jComboBoxinstitucion, new org.netbeans.lib.awtextra.AbsoluteConstraints(600, 100, 140, 30));

        jComboBoxgrado.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jComboBoxgrado.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "10º", "11º" }));
        jComboBoxgrado.setBorder(null);
        getContentPane().add(jComboBoxgrado, new org.netbeans.lib.awtextra.AbsoluteConstraints(270, 170, 90, 30));

        jComboBoxdia.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo" }));
        jComboBoxdia.setBorder(null);
        getContentPane().add(jComboBoxdia, new org.netbeans.lib.awtextra.AbsoluteConstraints(600, 170, 140, 30));

        jSeparator1.setForeground(new java.awt.Color(51, 51, 51));
        getContentPane().add(jSeparator1, new org.netbeans.lib.awtextra.AbsoluteConstraints(140, 140, 230, 10));

        jSeparator3.setForeground(new java.awt.Color(51, 51, 51));
        getContentPane().add(jSeparator3, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 280, 230, 10));

        jSeparator4.setForeground(new java.awt.Color(51, 51, 51));
        getContentPane().add(jSeparator4, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 370, 230, 20));

        jSeparator5.setForeground(new java.awt.Color(51, 51, 51));
        getContentPane().add(jSeparator5, new org.netbeans.lib.awtextra.AbsoluteConstraints(580, 260, 40, 10));

        jSeparator6.setForeground(new java.awt.Color(51, 51, 51));
        getContentPane().add(jSeparator6, new org.netbeans.lib.awtextra.AbsoluteConstraints(680, 260, 40, 10));

        jButton1.setBackground(new java.awt.Color(251, 253, 248));
        jButton1.setIcon(new javax.swing.ImageIcon("E:\\proyectosham\\src\\main\\java\\images\\save-alt_118705.png")); // NOI18N
        jButton1.setBorder(null);
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton1, new org.netbeans.lib.awtextra.AbsoluteConstraints(510, 410, 80, 50));

        jButton2.setBackground(new java.awt.Color(251, 253, 248));
        jButton2.setIcon(new javax.swing.ImageIcon("E:\\proyectosham\\src\\main\\java\\images\\icons8-visible-80.png")); // NOI18N
        jButton2.setBorder(null);
        getContentPane().add(jButton2, new org.netbeans.lib.awtextra.AbsoluteConstraints(620, 410, 80, 60));

        jLabel7.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jLabel7.setText("Municipio:");
        getContentPane().add(jLabel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 410, 90, 30));

        jLinstructor.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jLinstructor.setText("Instructor:");
        getContentPane().add(jLinstructor, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 80, 230, 40));

        jLabel3.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jLabel3.setText("Grado:");
        jLabel3.setMaximumSize(new java.awt.Dimension(78, 21));
        jLabel3.setMinimumSize(new java.awt.Dimension(78, 21));
        getContentPane().add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 170, 70, 30));

        jLabel4.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jLabel4.setText("Ficha:");
        getContentPane().add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 230, 240, 30));

        jLabel5.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jLabel5.setText("Codigo de competencia:");
        getContentPane().add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 300, 240, 30));

        jLabel6.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jLabel6.setText("Institucion:");
        getContentPane().add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(470, 100, 110, 30));

        jLabel2.setFont(new java.awt.Font("Verdana", 1, 24)); // NOI18N
        jLabel2.setText(" Por favor llene los siguientes datos");
        jLabel2.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        getContentPane().add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(190, 0, 520, 60));

        jLabel8.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jLabel8.setText("Dìa:");
        getContentPane().add(jLabel8, new org.netbeans.lib.awtextra.AbsoluteConstraints(470, 170, 130, 30));

        jLabel9.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jLabel9.setText("Hora:");
        getContentPane().add(jLabel9, new org.netbeans.lib.awtextra.AbsoluteConstraints(470, 230, 50, 40));

        jLabel11.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        jLabel11.setText("Desde");
        getContentPane().add(jLabel11, new org.netbeans.lib.awtextra.AbsoluteConstraints(530, 230, 40, 40));

        jLabel12.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        jLabel12.setText("Hasta");
        getContentPane().add(jLabel12, new org.netbeans.lib.awtextra.AbsoluteConstraints(630, 230, 40, 40));

        jLabel13.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jLabel13.setText("Trimestre:");
        getContentPane().add(jLabel13, new org.netbeans.lib.awtextra.AbsoluteConstraints(470, 310, 120, 30));

        jTextinstructor.setBackground(new java.awt.Color(251, 253, 248));
        jTextinstructor.setBorder(null);
        jTextinstructor.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextinstructorActionPerformed(evt);
            }
        });
        getContentPane().add(jTextinstructor, new org.netbeans.lib.awtextra.AbsoluteConstraints(140, 120, 230, 20));

        jTextficha.setBackground(new java.awt.Color(251, 253, 248));
        jTextficha.setBorder(null);
        jTextficha.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextfichaActionPerformed(evt);
            }
        });
        getContentPane().add(jTextficha, new org.netbeans.lib.awtextra.AbsoluteConstraints(140, 260, 230, 20));

        jTextcompetencia.setBackground(new java.awt.Color(251, 253, 248));
        jTextcompetencia.setBorder(null);
        getContentPane().add(jTextcompetencia, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 330, 230, 30));

        jTexthoraini.setBackground(new java.awt.Color(251, 253, 248));
        jTexthoraini.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        jTexthoraini.setToolTipText("");
        jTexthoraini.setActionCommand("<Not Set>");
        jTexthoraini.setBorder(null);
        jTexthoraini.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTexthorainiActionPerformed(evt);
            }
        });
        getContentPane().add(jTexthoraini, new org.netbeans.lib.awtextra.AbsoluteConstraints(580, 230, 40, -1));

        jTexthorafin.setBackground(new java.awt.Color(251, 253, 248));
        jTexthorafin.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        jTexthorafin.setBorder(null);
        jTexthorafin.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTexthorafinActionPerformed(evt);
            }
        });
        getContentPane().add(jTexthorafin, new org.netbeans.lib.awtextra.AbsoluteConstraints(680, 230, 40, -1));

        jLabel10.setIcon(new javax.swing.ImageIcon("E:\\proyectosham\\src\\main\\java\\images\\515958.jpg")); // NOI18N
        getContentPane().add(jLabel10, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 60, 750, 460));

        jLabel14.setIcon(new javax.swing.ImageIcon("E:\\proyectosham\\src\\main\\java\\images\\fondoverde1.png")); // NOI18N
        getContentPane().add(jLabel14, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 890, 580));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jTexthorainiActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTexthorainiActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTexthorainiActionPerformed

    private void jTexthorafinActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTexthorafinActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTexthorafinActionPerformed

    private void jTextinstructorActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextinstructorActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextinstructorActionPerformed

    private void jComboBoxmunicipioActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jComboBoxmunicipioActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jComboBoxmunicipioActionPerformed

    private void jTextfichaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextfichaActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextfichaActionPerformed

    private void jComboBoxtrimestreActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jComboBoxtrimestreActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jComboBoxtrimestreActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jComboBoxinstitucionActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jComboBoxinstitucionActionPerformed
        // TODO add your handling code here:
        
    }//GEN-LAST:event_jComboBoxinstitucionActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(vistacrear.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(vistacrear.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(vistacrear.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(vistacrear.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new vistacrear().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    public javax.swing.JButton jButton1;
    public javax.swing.JButton jButton2;
    public javax.swing.JComboBox<String> jComboBoxdia;
    public javax.swing.JComboBox<String> jComboBoxgrado;
    public javax.swing.JComboBox<String> jComboBoxinstitucion;
    public javax.swing.JComboBox<String> jComboBoxmunicipio;
    public javax.swing.JComboBox<String> jComboBoxtrimestre;
    public javax.swing.JLabel jLabel10;
    public javax.swing.JLabel jLabel11;
    public javax.swing.JLabel jLabel12;
    public javax.swing.JLabel jLabel13;
    public javax.swing.JLabel jLabel14;
    public javax.swing.JLabel jLabel2;
    public javax.swing.JLabel jLabel3;
    public javax.swing.JLabel jLabel4;
    public javax.swing.JLabel jLabel5;
    public javax.swing.JLabel jLabel6;
    public javax.swing.JLabel jLabel7;
    public javax.swing.JLabel jLabel8;
    public javax.swing.JLabel jLabel9;
    public javax.swing.JLabel jLinstructor;
    public javax.swing.JSeparator jSeparator1;
    public javax.swing.JSeparator jSeparator3;
    public javax.swing.JSeparator jSeparator4;
    public javax.swing.JSeparator jSeparator5;
    public javax.swing.JSeparator jSeparator6;
    public javax.swing.JTextField jTextcompetencia;
    public javax.swing.JTextField jTextficha;
    public javax.swing.JTextField jTexthorafin;
    public javax.swing.JTextField jTexthoraini;
    public javax.swing.JTextField jTextinstructor;
    // End of variables declaration//GEN-END:variables
}