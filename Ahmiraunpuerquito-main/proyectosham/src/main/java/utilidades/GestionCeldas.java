package utilidades;

import java.awt.Color;
import java.awt.Component;
import java.awt.Font;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;


/**
 * Esta clase permite gestionar la tabla y los eventos realizados sobre ella
 * cada celda seria un objeto personalizable
 * @author CHENAO
 *
 */
public class GestionCeldas extends DefaultTableCellRenderer{
	
	private String tipo="text";

	//se definen por defecto los tipos de datos a usar
	private Font normal = new Font( "Times New Roman",Font.BOLD ,12 );
	private Font bold = new Font( "Times New Roman",Font.BOLD ,12 );
	//etiqueta que almacenar� el icono a mostrar
	private JLabel label = new JLabel();
	//iconos disponibles para ser mostrados en la etiqueta dependiendo de la columna que lo contenga
	
	
	public GestionCeldas(){
		
	}

	/**
	 * Constructor explicito con el tipo de dato que tendr� la celda
	 * @param tipo
	 */
	public GestionCeldas(String tipo){
		this.tipo=tipo;
	}

	@Override
	public Component getTableCellRendererComponent(JTable table, Object value, boolean selected, boolean focused, int row, int column) {
		
		/*
		 * Este metodo controla toda la tabla, podemos obtener el valor que contiene
		 * definir que celda est� seleccionada, la fila y columna al tener el foco en ella.
		 * 
		 * cada evento sobre la tabla invocar� a este metodo
		 */
		
		//definimos colores por defecto
        Color colorFondo = Color.orange;
        Color colorFondoPorDefecto=Color.orange;
        Color colorFondoSeleccion=Color.orange;
    	
        /*
         * Si la celda del evento es la seleccionada se asigna el fondo por defecto para la selecci�n
         */
        if (selected) {                
            this.setBackground(Color.RED);   
        }
        else
        {
        	//Para las que no est�n seleccionadas se pinta el fondo de las celdas de blanco
            this.setBackground(Color.red);
        }
                
        /*
         * Se definen los tipos de datos que contendr�n las celdas basado en la instancia que
         * se hace en la ventana de la tabla al momento de construirla
         */
        if( tipo.equals("texto"))
        {
        	//si es tipo texto define el color de fondo del texto y de la celda as� como la alineaci�n
            if (focused) {
    			colorFondo=Color.red;
    		}else{
    			colorFondo= Color.white;
    		}
            this.setHorizontalAlignment( JLabel.LEFT );
            this.setText( (String) value );
            this.setForeground( (selected)? new Color(255,255,255) :new Color(0,0,0) );   
            this.setForeground( (selected)? new Color(255,255,255) :new Color(32,117,32) );
            this.setBackground( (selected)? colorFondo :Color.CYAN);	
            this.setFont(normal);   
            //this.setFont(bold);
            return this;
        }
         
       
        //definie si el tipo de dato el numerico para personalizarlo
        if( tipo.equals("numerico"))
        {           
        	if (focused) {
     			colorFondo=colorFondoSeleccion;
     		}else{
     			colorFondo=colorFondoPorDefecto;
     		}
        	// System.out.println(value);
            this.setHorizontalAlignment( JLabel.CENTER );
            this.setText( (String) value );            
            this.setForeground( (selected)? new Color(255,255,255) :new Color(32,117,32) );    
            this.setBackground( (selected)? colorFondo :Color.green);
            this.setBackground( (selected)? colorFondo :Color.getHSBColor(120, 130, 230));
            this.setFont(bold);            
            return this;   
        }
		
		return this;
                
                
                
                
                
                
                
	
		
	}
	
	
	
}
