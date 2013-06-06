package br.bmplab.cracha.entidade;

import br.bmplab.cracha.entidade.Evento;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.3.2.v20111125-r10461", date="2013-06-06T10:49:43")
@StaticMetamodel(Coordenacao.class)
public class Coordenacao_ { 

    public static volatile SingularAttribute<Coordenacao, Integer> id;
    public static volatile SingularAttribute<Coordenacao, String> funcao;
    public static volatile SingularAttribute<Coordenacao, String> email;
    public static volatile SingularAttribute<Coordenacao, String> cracha;
    public static volatile SingularAttribute<Coordenacao, String> telefone;
    public static volatile SingularAttribute<Coordenacao, String> nome;
    public static volatile SingularAttribute<Coordenacao, Evento> evento;

}