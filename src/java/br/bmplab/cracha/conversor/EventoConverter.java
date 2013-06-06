/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.bmplab.cracha.conversor;

import br.bmplab.cracha.entidade.Evento;
import br.bmplab.cracha.rn.EventoRN;
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
@FacesConverter(value = "eventoConverter", forClass = Evento.class)
public class EventoConverter implements Converter {

    private final EventoRN rn = new EventoRN();

    public EventoConverter() {
    }
    
    @Override
    public Object getAsObject(FacesContext fc, UIComponent uic, String string) {
        Evento evento = null;
        try {
            if (string != null || !string.equals("0")) {
                evento = rn.obter(Integer.valueOf(string));
            }
        } catch (Exception e) {
            System.out.println("Evento, erro conversão para Objeto: " + e);
        }
        return evento;
    }

    @Override
    public String getAsString(FacesContext fc, UIComponent uic, Object o) {
        String resultado = null;
        try{
            if (o != null && o instanceof Evento)
                resultado = ((Evento) o).getId().toString();
        }catch(Exception e){
            throw new ConverterException(new FacesMessage("Tipo de Evento Invalido! "+e));
        }

        return resultado;
    }
    
}
