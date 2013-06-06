package br.bmplab.cracha.rn;

import br.bmplab.cracha.entidade.Inscrito;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.StringTokenizer;
import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;

public class ImportRN {

    private File arquivo;
    private Workbook planilha;
    private Sheet aba;
    private InscritoRN inscritoRN = new InscritoRN();

    private class ImportThread implements Runnable {

        @Override
        public void run() {
            System.out.println("Importação concorrente iniciada");
//            metodo
            System.out.println("Importação concorrente concluída");
        }
    }

    public void iniciarImport() {
        if (arquivo == null) {
            System.out.println("Sem arquivos");
            return;
        }
        Thread t = new Thread(new ImportThread());
    }

    protected boolean importar() {
//        try {
//
//
//            BufferedReader lerFile = null;
//            FileReader fr = null;
//            Inscrito inscrito = null;
//            String nome = null;
//            String curso = null;
//            String emai = null;
//
//            if (arquivo == null || !arquivo.exists()) {
//                return false;
//            } else {
//                fr = new FileReader(arquivo);
//                lerFile = new BufferedReader(fr);
//            }
//
//            planilha = Workbook.getWorkbook(arquivo);
//            Sheet[] abas = planilha.getSheets();
//            aba = planilha.getSheet(0);
//            Cell[] linha = aba.getRow(0);
//            
//            ArrayList<Inscrito> inscritos = new ArrayList<Inscrito>();
//            StringTokenizer st = null;
//            
//            for (Cell c : linha) {
//                c.getContents();
//                inscrito.setNome(new String(st.nextToken()));
//                inscrito.setCurso(new String(st.nextToken()));
//                inscrito.setEmail(new String(st.nextToken()));
//                
//                inscrito = new Inscrito();
//                inscrito.setNome(nome);
//                inscrito.setCurso(curso);
//                inscrito.setEmail(emai);
//                
//            }
//            return inscritoRN.salvar(inscrito);
//        } catch (Exception e) {
//            System.out.println("Erro ao importar.");
//            e.printStackTrace();
//            System.out.println("Erro: "+e.getMessage());
//        }
        return true;
    }

    public File getArquivo() {
        return arquivo;
    }

    public void setArquivo(File arquivo) {
        this.arquivo = arquivo;
    }
    
}
