package br.bmplab.cracha.conversor;

import br.bmplab.cracha.entidade.Curso;
import br.bmplab.cracha.rn.CursoRN;
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
@FacesConverter(value = "cursoConverter", forClass = Curso.class)
public class CursoConverter implements Converter {
    private final CursoRN rn = new CursoRN();

    public CursoConverter() {
    }

    @Override
    public Object getAsObject(FacesContext fc, UIComponent uic, String value) {
        Curso curso = null;
        try {
            if (value != null || !value.equals("0")) {
                curso = rn.obter(Integer.valueOf(value));
            }
        } catch (Exception e) {
            System.out.println("Curso, erro conversão para Objeto: " + e);
        }
        return curso;
    }

    @Override
    public String getAsString(FacesContext fc, UIComponent uic, Object object) {
        String resultado = null;
        try{
            if (object != null && object instanceof Curso)
                resultado = ((Curso) object).getId().toString();
        }catch(Exception e){
            throw new ConverterException(new FacesMessage("Tipo de Curso Invalido! "+e));
        }

        return resultado;
    }
}
