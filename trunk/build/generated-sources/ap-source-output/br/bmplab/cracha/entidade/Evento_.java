package br.bmplab.cracha.entidade;

import br.bmplab.cracha.entidade.Coordenacao;
import br.bmplab.cracha.entidade.Curso;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.3.2.v20111125-r10461", date="2013-06-06T10:49:43")
@StaticMetamodel(Evento.class)
public class Evento_ { 

    public static volatile SingularAttribute<Evento, Integer> id;
    public static volatile SingularAttribute<Evento, String> sigla;
    public static volatile ListAttribute<Evento, Curso> cursoList;
    public static volatile SingularAttribute<Evento, String> resumo;
    public static volatile SingularAttribute<Evento, String> nome;
    public static volatile ListAttribute<Evento, Coordenacao> coordenacaoList;
    public static volatile SingularAttribute<Evento, String> local;
    public static volatile SingularAttribute<Evento, String> periodo;

}