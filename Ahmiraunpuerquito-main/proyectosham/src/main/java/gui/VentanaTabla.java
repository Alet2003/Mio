package gui;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.BevelBorder;
import javax.swing.border.EmptyBorder;
import javax.swing.table.JTableHeader;

import utilidades.GestionCeldas;
import utilidades.GestionEncabezadoTabla;
import utilidades.ModeloTabla;
import utilidades.Utilidades;
import vo.PersonaVo;

import javax.swing.JLabel;
import javax.swing.JOptionPane;

import java.awt.Font;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.util.ArrayList;

import javax.swing.JScrollPane;
import javax.swing.JTable;

public class VentanaTabla extends JFrame implements MouseListener {

    private JPanel contentPane;
    private JScrollPane scrollPaneTabla;
    private JTable tablaPersonas;
    ArrayList<PersonaVo> listaPersonas;//lista que simula la informaci�n de la BD

    ModeloTabla modelo;//modelo definido en la clase ModeloTabla
    private int filasTabla;
    private int columnasTabla;

    /**
     * Create the frame.
     */
    public VentanaTabla() {
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(1121, 453);

        iniciarComponentes();
        setLocationRelativeTo(null);
        construirTabla();
    }

    private void iniciarComponentes() {
        contentPane = new JPanel();
        contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
        setContentPane(contentPane);
        contentPane.setLayout(new BorderLayout(0, 0));

        JLabel lblTablaPersonas = new JLabel("Tabla Personas");
        lblTablaPersonas.setFont(new Font("Rockwell", Font.BOLD, 25));
        contentPane.add(lblTablaPersonas, BorderLayout.NORTH);

        scrollPaneTabla = new JScrollPane();
        contentPane.add(scrollPaneTabla);

        tablaPersonas = new JTable();
        tablaPersonas.setBackground(Color.LIGHT_GRAY);
        tablaPersonas.setBorder(new BevelBorder(BevelBorder.RAISED, null, null, null, null));
        tablaPersonas.addMouseListener(this);
        //tablaSeguimiento.addKeyListener(this);
        tablaPersonas.setOpaque(false);
        scrollPaneTabla.setViewportView(tablaPersonas);

    }

    /**
     * Metodo que permite construir la tabla de personas se crean primero las
     * columnas y luego se asigna la informaci�n
     */
    private void construirTabla() {
        listaPersonas = consultarListaPersonas();

        ArrayList<String> titulosList = new ArrayList<>();

        titulosList.add("hora");
        titulosList.add("lunes");
        titulosList.add("martes");
        titulosList.add("miercoles");
        titulosList.add("jueves");
        titulosList.add("viernes");
        titulosList.add("sabado");
        titulosList.add("domingo");

        //se asignan las columnas al arreglo para enviarse al momento de construir la tabla
        String titulos[] = new String[titulosList.size()];
        for (int i = 0; i < titulos.length; i++) {
            titulos[i] = titulosList.get(i);
        }
        /*obtenemos los datos de la lista y los guardamos en la matriz
		 * que luego se manda a construir la tabla
         */
        Object[][] data = obtenerMatrizDatos(titulosList);
        construirTabla(titulos, data);

    }

    /**
     * Permite simular el llenado de personas en una lista que posteriormente
     * alimentar� la tabla
     *
     * @return
     */
    private ArrayList<PersonaVo> consultarListaPersonas() {
        ArrayList<PersonaVo> lista = new ArrayList<>();

        lista.add(new PersonaVo(1, "Cristian David Henao", "Calle 2# 23-09 Armenia", "7564323", "Ingeniero", "", "", ""));
        lista.add(new PersonaVo(2, "Juan Camilo Perez", "Calle 2# 23-09 Armenia", "7564323", "Ingeniero", "", "", ""));
        lista.add(new PersonaVo(3, "Marlon Guapacha", "Calle 2# 23-09 Armenia", "7564323", "Ingeniero", "", "", ""));
        lista.add(new PersonaVo(4, "Marina Marin", "Calle 2# 23-09 Armenia", "7564323", "Ingeniero", "", "", ""));
        lista.add(new PersonaVo(5, "Juliana Henao", "Calle 2# 23-09 Armenia", "7564323", "Ingeniero", "", "", ""));
        lista.add(new PersonaVo(6, "David Henao", "Calle 2# 23-09 Armenia", "7564323", "Ingeniero", "", "", ""));
        lista.add(new PersonaVo(7, "Cristian mendez Henao", "Calle 2# 23-09 Armenia", "7564323", "Ingeniero", "", "", ""));

        return lista;
    }

    /**
     * Llena la informaci�n de la tabla usando la lista de personas trabajada
     * anteriormente, guardandola en una matriz que se retorna con toda la
     * informaci�n para luego ser asignada al modelo
     *
     * @param titulosList
     * @return
     */
    private Object[][] obtenerMatrizDatos(ArrayList<String> titulosList) {

        /*se crea la matriz donde las filas son dinamicas pues corresponde
		 * a todos los usuarios, mientras que las columnas son estaticas
		 * correspondiendo a las columnas definidas por defecto
         */
        String informacion[][] = new String[listaPersonas.size()][titulosList.size()];

        for (int x = 0; x < informacion.length; x++) {

            informacion[x][Utilidades.hora] = listaPersonas.get(x).getHora() + "";
            informacion[x][Utilidades.lunes] = listaPersonas.get(x).getLunes() + "";
            informacion[x][Utilidades.martes] = listaPersonas.get(x).getMartes() + "";
            informacion[x][Utilidades.miercoles] = listaPersonas.get(x).getMiercoles() + "";
            informacion[x][Utilidades.jueves] = listaPersonas.get(x).getJueves() + "";
            informacion[x][Utilidades.viernes] = listaPersonas.get(x).getViernes() + "";
            informacion[x][Utilidades.sabado] = listaPersonas.get(x).getSabado() + "";
            informacion[x][Utilidades.domingo] = listaPersonas.get(x).getDomingo() + "";
            //se asignan las plabras clave para que en la clase GestionCeldas se use para asignar el icono correspondiente
        }

        return informacion;
    }

    /**
     * Con los titulos y la informaci�n a mostrar se crea el modelo para poder
     * personalizar la tabla, asignando tama�o de celdas tanto en ancho como en
     * alto as� como los tipos de datos que va a poder soportar.
     *
     * @param titulos
     * @param data
     */
    private void construirTabla(String[] titulos, Object[][] data) {
        modelo = new ModeloTabla(data, titulos);
        //se asigna el modelo a la tabla
        tablaPersonas.setModel(modelo);

        filasTabla = tablaPersonas.getRowCount();
        columnasTabla = tablaPersonas.getColumnCount();

        //se asigna el tipo de dato que tendr�n las celdas de cada columna definida respectivamente para validar su personalizaci�n
        tablaPersonas.getColumnModel().getColumn(Utilidades.viernes).setCellRenderer(new GestionCeldas("numerico"));
        tablaPersonas.getColumnModel().getColumn(Utilidades.sabado).setCellRenderer(new GestionCeldas("numerico"));
        tablaPersonas.getColumnModel().getColumn(Utilidades.domingo).setCellRenderer(new GestionCeldas("numerico"));
        
        //se recorre y asigna el resto de celdas que serian las que almacenen datos de tipo texto
        for (int i = 0; i < titulos.length - 7; i++) {//se resta 7 porque las ultimas 7 columnas se definen arriba
            System.out.println(i);
            tablaPersonas.getColumnModel().getColumn(i).setCellRenderer(new GestionCeldas("texto"));
        }

        tablaPersonas.getTableHeader().setReorderingAllowed(false);
        tablaPersonas.setRowHeight(30);//tama�o de las celdas
        tablaPersonas.setGridColor(new java.awt.Color(0, 0, 0));
        
        //Se define el tama�o de largo para cada columna y su contenido        
        tablaPersonas.getColumnModel().getColumn(Utilidades.hora).setPreferredWidth(100);//documento
        tablaPersonas.getColumnModel().getColumn(Utilidades.lunes).setPreferredWidth(300);//nombre
        tablaPersonas.getColumnModel().getColumn(Utilidades.martes).setPreferredWidth(300);//direccion
        tablaPersonas.getColumnModel().getColumn(Utilidades.miercoles).setPreferredWidth(300);//telefono
        tablaPersonas.getColumnModel().getColumn(Utilidades.jueves).setPreferredWidth(300);//profesion
        tablaPersonas.getColumnModel().getColumn(Utilidades.viernes).setPreferredWidth(300);//edad
        tablaPersonas.getColumnModel().getColumn(Utilidades.sabado).setPreferredWidth(300);//nota1
        tablaPersonas.getColumnModel().getColumn(Utilidades.domingo).setPreferredWidth(300);//nota2

        //personaliza el encabezado
        JTableHeader jtableHeader = tablaPersonas.getTableHeader();
        jtableHeader.setDefaultRenderer(new GestionEncabezadoTabla());
        tablaPersonas.setTableHeader(jtableHeader);

        //se asigna la tabla al scrollPane
        scrollPaneTabla.setViewportView(tablaPersonas);

    }

    @Override
    public void mouseClicked(MouseEvent e) {
        //capturo fila o columna dependiendo de mi necesidad
        int fila = tablaPersonas.rowAtPoint(e.getPoint());
        int columna = tablaPersonas.columnAtPoint(e.getPoint());

        /*uso la columna para valiar si corresponde a la columna de perfil garantizando
		 * que solo se produzca algo si selecciono una fila de esa columna
         */
    }

    //estos metododos pueden ser usados dependiendo de nuestra necesidad, por ejemplo para cambiar el tama�o del icono al ser presionado
    @Override
    public void mouseEntered(MouseEvent arg0) {
        // TODO Auto-generated method stub

    }

    @Override
    public void mouseExited(MouseEvent arg0) {
        // TODO Auto-generated method stub

    }

    @Override
    public void mousePressed(MouseEvent arg0) {
        // TODO Auto-generated method stub

    }

    @Override
    public void mouseReleased(MouseEvent arg0) {
        // TODO Auto-generated method stub

    }

}
