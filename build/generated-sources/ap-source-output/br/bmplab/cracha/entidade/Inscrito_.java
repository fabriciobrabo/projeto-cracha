package br.bmplab.cracha.entidade;

import br.bmplab.cracha.entidade.Curso;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.3.2.v20111125-r10461", date="2013-06-06T10:49:43")
@StaticMetamodel(Inscrito.class)
public class Inscrito_ { 

    public static volatile SingularAttribute<Inscrito, Integer> id;
    public static volatile SingularAttribute<Inscrito, Integer> credenciado;
    public static volatile SingularAttribute<Inscrito, Curso> curso;
    public static volatile SingularAttribute<Inscrito, String> email;
    public static volatile SingularAttribute<Inscrito, String> cracha;
    public static volatile SingularAttribute<Inscrito, String> telefone;
    public static volatile SingularAttribute<Inscrito, String> instituicao;
    public static volatile SingularAttribute<Inscrito, String> nome;

}