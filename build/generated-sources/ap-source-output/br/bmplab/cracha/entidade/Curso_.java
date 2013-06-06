package br.bmplab.cracha.entidade;

import br.bmplab.cracha.entidade.Evento;
import br.bmplab.cracha.entidade.Inscrito;
import br.bmplab.cracha.entidade.Palestrante;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.3.2.v20111125-r10461", date="2013-06-06T10:49:43")
@StaticMetamodel(Curso.class)
public class Curso_ { 

    public static volatile SingularAttribute<Curso, Integer> id;
    public static volatile SingularAttribute<Curso, String> codigo;
    public static volatile SingularAttribute<Curso, String> horario;
    public static volatile SingularAttribute<Curso, String> cargaHoraria;
    public static volatile SingularAttribute<Curso, String> tipo;
    public static volatile SingularAttribute<Curso, Palestrante> palestrante;
    public static volatile SingularAttribute<Curso, Date> data;
    public static volatile SingularAttribute<Curso, String> nome;
    public static volatile SingularAttribute<Curso, Evento> evento;
    public static volatile ListAttribute<Curso, Inscrito> inscritoList;
    public static volatile SingularAttribute<Curso, String> observacao;

}