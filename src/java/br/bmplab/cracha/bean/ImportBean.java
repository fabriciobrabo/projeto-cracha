/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.bmplab.cracha.bean;

import br.bmplab.cracha.rn.ImportRN;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.context.FacesContext;
import org.primefaces.model.UploadedFile;

/**
 *
 * @author Sérgio Lima
 */
@ManagedBean
@RequestScoped
public class ImportBean {

    private UploadedFile file;
    private Integer progres;

    public Integer getProgresso() {
        if (progres == null) {
            progres = 0;
        } else {
            progres = progres + (int) (Math.random() * 35);
            if (progres > 100) {
                progres = 100;
            }
        }
        return progres;
    }

    public void setProgresso(Integer progresso) {
        this.progres = progresso;
    }

    public ImportBean() {
    }

    public UploadedFile getFile() {
        return file;
    }

    public void setFile(UploadedFile file) {
        this.file = file;
    }

//    public void upload() {
//        if (file != null) {
//            FacesMessage msg = new FacesMessage("Sucesso", file.getFileName() + " importado");
//            FacesContext.getCurrentInstance().addMessage(null, msg);
//        }x
//    }

    public String importar() {

        String filename = null;

        ImportRN importRN = null;
        if (file != null) {
            try {
                filename = file.getFileName();
                BufferedInputStream bfs = new BufferedInputStream(file.getInputstream());
                FileOutputStream fos = new FileOutputStream(filename);
                BufferedOutputStream bos = new BufferedOutputStream(fos);
                int bytedados = 0;
                int flushdados = 0;
                while ((bytedados = bfs.read()) != -1) {
                    bos.write(bytedados);
                    flushdados++;
                    if (flushdados % 1000 == 0) {
                        bos.flush();
                    }
                }
                bos.flush();
                bos.close();
                importRN = new ImportRN();
                importRN.setArquivo(new File(filename));
                System.out.println("<<<<Importação Iniciada>>>>");
                importRN.iniciarImport();
            } catch (IOException e) {
            }
        }
        return "";
    }

    public void onComplete() {
        FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_INFO,
                "Progresso da importação", "Completo"));
    }

    public void cancel() {
        progres = null;
    }
}
