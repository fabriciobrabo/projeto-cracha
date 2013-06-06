package br.bmplab.cracha.read;

import java.io.File;
import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;

public class ExcelLeitor {

    private Workbook planilha;
    private Sheet aba;
    private File arquivo;

    public ExcelLeitor() {

        try {

            arquivo = new File("C:/Users/Dir de Armas Marinha/Desktop/teste.xls");
            planilha = Workbook.getWorkbook(arquivo);
            Sheet[] abas = planilha.getSheets();
            aba = planilha.getSheet(0);
            String[][] matriz = new String[aba.getRows()][aba.getColumns()];
            Cell[] cel;
            for (int i = 0; i < matriz.length; i++) {
                cel = aba.getRow(i);
                for (int j = 0; j < matriz[0].length; j++) {
                    matriz[i][j] = cel[j].getContents();
                }
            }

            for (int i = 0; i < matriz.length; i++) {
                for (int j = 0; j < matriz[0].length; j++) {
                    System.out.println(matriz[i][j] + "\t");
                }
                System.out.println("");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        new ExcelLeitor();
    }
}
