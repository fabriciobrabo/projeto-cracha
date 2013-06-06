/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.bmplab.cracha.entidade;

/**
 *
 * @author stelio
 */
public class InscritoAux {
    
    private String nome;
    private String cracha;
    private String telefone;
    private String email;
    private String instituicao;
    private String curso;

    public InscritoAux() {
    }

    public InscritoAux(Inscrito inscrito) {
        this.nome = inscrito.getNome();
        this.cracha = inscrito.getCracha();
        this.telefone = inscrito.getTelefone();
        this.email = inscrito.getEmail();
        this.instituicao = inscrito.getInstituicao();
        this.curso = inscrito.getCurso().getCodigo();
    }

    public InscritoAux(String nome, String cracha, String telefone, String email, String instituicao, String curso) {
        this.nome = nome;
        this.cracha = cracha;
        this.telefone = telefone;
        this.email = email;
        this.instituicao = instituicao;
        this.curso = curso;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCracha() {
        return cracha;
    }

    public void setCracha(String cracha) {
        this.cracha = cracha;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getInstituicao() {
        return instituicao;
    }

    public void setInstituicao(String instituicao) {
        this.instituicao = instituicao;
    }

    public String getCurso() {
        return curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }
}
