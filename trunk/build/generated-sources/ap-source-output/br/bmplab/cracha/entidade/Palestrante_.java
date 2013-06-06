package br.bmplab.cracha.entidade;

import br.bmplab.cracha.entidade.Curso;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.3.2.v20111125-r10461", date="2013-06-06T10:49:43")
@StaticMetamodel(Palestrante.class)
public class Palestrante_ { 

    public static volatile SingularAttribute<Palestrante, Integer> id;
    public static volatile SingularAttribute<Palestrante, String> titulo;
    public static volatile ListAttribute<Palestrante, Curso> cursoList;
    public static volatile SingularAttribute<Palestrante, String> email;
    public static volatile SingularAttribute<Palestrante, String> cracha;
    public static volatile SingularAttribute<Palestrante, String> telefone;
    public static volatile SingularAttribute<Palestrante, String> instituicao;
    public static volatile SingularAttribute<Palestrante, String> nome;

}