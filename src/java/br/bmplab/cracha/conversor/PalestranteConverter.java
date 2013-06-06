/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.bmplab.cracha.conversor;

import br.bmplab.cracha.entidade.Palestrante;
import br.bmplab.cracha.rn.PalestranteRN;
import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.ConverterException;
import javax.faces.convert.FacesConverter;

/**
 *
 * @author stelio
 */
@FacesConverter(value = "palestranteConverter", forClass = Palestrante.class)
public class PalestranteConverter implements Converter {

    private final PalestranteRN rn = new PalestranteRN();

    public PalestranteConverter() {
    }
    
    @Override
    public Object getAsObject(FacesContext fc, UIComponent uic, String string) {
        Palestrante palestrante = null;
        try {
            if (string != null || !string.equals("0")) {
                palestrante = rn.obter(Integer.valueOf(string));
            }
        } catch (Exception e) {
            System.out.println("Palestrante, erro conversão para Objeto: " + e);
        }
        return palestrante;
    }

    @Override
    public String getAsString(FacesContext fc, UIComponent uic, Object o) {
        String resultado = null;
        try{
            if (o != null && o instanceof Palestrante)
                resultado = ((Palestrante) o).getId().toString();
        }catch(Exception e){
            throw new ConverterException(new FacesMessage("Tipo de Evento Invalido! "+e));
        }

        return resultado;
    }
    
}
