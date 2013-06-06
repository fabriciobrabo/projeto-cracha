package br.bmplab.cracha.read;

import java.io.File;
import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;

public class ExcelTeste {

    private Workbook planilha;
    private Sheet aba;
    private File arquivo;

    public ExcelTeste() {
        try {
            arquivo = new File("C:/Users/Dir de Armas Marinha/Desktop/teste.xls");
            
            planilha = Workbook.getWorkbook(arquivo);
            
            Sheet[] abas = planilha.getSheets();
            
            aba = planilha.getSheet(0);
            Cell[] linha = aba.getRow(0);
            
            for (Cell c : linha) {
                System.out.println(c.getContents());
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
    }
    
    public static void main(String[] args) {
        new ExcelTeste();
    }
}
