package br.bmplab.cracha.read;

import java.io.File;
import jxl.Sheet;
import jxl.Workbook;

public class LeitorExcel {
    
    private Workbook planilha;
    private Sheet aba;
    private File arquivo;

    public LeitorExcel() {
        try {
            arquivo = new File("C:/Users/Dir de Armas Marinha/Desktop/teste.xls");
            planilha = Workbook.getWorkbook(arquivo);
            
            Sheet[] abas = planilha.getSheets();
            
            for (Sheet a : abas) {
                System.out.println(a.getName());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public static void main(String[] args) {
        new LeitorExcel();
    }
}
