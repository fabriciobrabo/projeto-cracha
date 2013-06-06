/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.bmplab.cracha.read;

import java.io.File;
import java.io.InputStream;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import jxl.Cell;
import jxl.CellType;
import jxl.LabelCell;
import jxl.NumberCell;
import jxl.Sheet;
import jxl.Workbook;
import jxl.WorkbookSettings;

/**
 *
 * @author Dir de Armas Marinha
 */


public class Leitor {
    private Workbook wb;//método de abertura de arquivo excel
    private Sheet st;//indica qual planilha dentro do arquivo excel vc deseja importar.
    private int tLinha;
    private int tColuna;
    
    public void iniciar() {

        try {

            WorkbookSettings conf = new WorkbookSettings();
            conf.setEncoding("ISO-8859-1");

            JFileChooser fopen = new JFileChooser();
            fopen.showOpenDialog(null);

            wb = Workbook.getWorkbook(fopen.getSelectedFile(), conf);

            setSheets();

            tLinha = getNumeroDeLinhas();
            tColuna = getNumeroDeColuna();


        } catch (Exception e) {
            e.printStackTrace();
        }


    }

    public void iniciar(File file, InputStream te) {
        try {

            WorkbookSettings conf = new WorkbookSettings();
            conf.setEncoding("ISO-8859-1");


            System.out.println("testeee "+file.getName());
            
//            wb = Workbook.getWorkbook(te, conf);
            wb = Workbook.getWorkbook(file, conf);

              st = wb.getSheet(0);

            tLinha = getNumeroDeLinhas();
            tColuna = getNumeroDeColuna();


        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Object[][] lerArquivo() {

        Cell c;

        int numlinha = st.getRows();
        int numcol = st.getColumns();

        Object[][] resultado = new Object[numlinha][numcol];
        for (int linha = 0; linha < numlinha; linha++) {
            for (int coluna = 0; coluna < numcol; coluna++) {

                c = st.getCell(coluna, linha);

                if (c.getType() == CellType.NUMBER) {
                    NumberCell nc = (NumberCell) c;
                    resultado[linha][coluna] = (Double) nc.getValue();
                }
                if (c.getType() == CellType.EMPTY) {
                }
                if (c.getType() == CellType.LABEL) {
                    LabelCell lc = (LabelCell) c;
                    resultado[linha][coluna] = lc.getString();
                }
            }
            System.out.println("Dados: "+ resultado);
            
        }
        return resultado;
        
        
    }

    public int getTcoluna() {
        return tColuna;
    }

    public int getTlinha() {
        return tLinha;
    }

    public void setSheets() {

        st = wb.getSheet(Integer.parseInt(JOptionPane.showInputDialog("Entre com o numero da pagina")));

    }

    public int getNumeroDeLinhas() {
        tLinha = st.getRows();

        return tLinha;
    }

    public int getNumeroDeColuna() {
        tColuna = st.getColumns();

        return tColuna;
    }

    public void finalizar() {
        wb.close();
    }

    
}
