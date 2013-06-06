package br.bmplab.cracha.entidade;

/**
 *
 * @author stelio
 */
public class CursoAux {
    private String palestrante;
    private String curso;
    private String tipo;
    private String instituicao;

    public CursoAux() {
    }

    public CursoAux(Curso curso) {
        this.palestrante = curso.getPalestrante().getCracha();
        this.curso = curso.getCodigo();
        this.tipo = "Palestrante".equals(curso.getTipo()) ? "Palestrante" : "Ministrante";
        this.instituicao = curso.getPalestrante().getInstituicao();
    }

    public CursoAux(String palestrante, String curso, String tipo, String instituicao) {
        this.palestrante = palestrante;
        this.curso = curso;
        this.tipo = tipo;
        this.instituicao = instituicao;
    }

    public String getPalestrante() {
        return palestrante;
    }

    public void setPalestrante(String palestrante) {
        this.palestrante = palestrante;
    }

    public String getCurso() {
        return curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getInstituicao() {
        return instituicao;
    }

    public void setInstituicao(String instituicao) {
        this.instituicao = instituicao;
    }

}
