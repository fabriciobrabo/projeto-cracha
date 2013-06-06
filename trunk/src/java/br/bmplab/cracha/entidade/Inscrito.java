/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.bmplab.cracha.entidade;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author stelio
 */
@Entity
@Table(name = "inscrito")
@NamedQueries({
    @NamedQuery(name = "Inscrito.findAll", query = "SELECT i FROM Inscrito i"),
    @NamedQuery(name = "Inscrito.findById", query = "SELECT i FROM Inscrito i WHERE i.id = :id"),
    @NamedQuery(name = "Inscrito.findByNome", query = "SELECT i FROM Inscrito i WHERE i.nome = :nome"),
    @NamedQuery(name = "Inscrito.findByCracha", query = "SELECT i FROM Inscrito i WHERE i.cracha = :cracha"),
    @NamedQuery(name = "Inscrito.findByTelefone", query = "SELECT i FROM Inscrito i WHERE i.telefone = :telefone"),
    @NamedQuery(name = "Inscrito.findByEmail", query = "SELECT i FROM Inscrito i WHERE i.email = :email"),
    @NamedQuery(name = "Inscrito.findByInstituicao", query = "SELECT i FROM Inscrito i WHERE i.instituicao = :instituicao"),
    @NamedQuery(name = "Inscrito.findByCredenciado", query = "SELECT i FROM Inscrito i WHERE i.credenciado = :credenciado")})
public class Inscrito implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "nome")
    private String nome;
    @Basic(optional = false)
    @Column(name = "cracha")
    private String cracha;
    @Column(name = "telefone")
    private String telefone;
    @Column(name = "email")
    private String email;
    @Column(name = "instituicao")
    private String instituicao;
    @Basic(optional = false)
    @Column(name = "credenciado")
    private int credenciado;
    @JoinColumn(name = "curso", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Curso curso;

    public Inscrito() {
    }

    public Inscrito(Integer id) {
        this.id = id;
    }

    public Inscrito(Integer id, String nome, String cracha, int credenciado) {
        this.id = id;
        this.nome = nome;
        this.cracha = cracha;
        this.credenciado = credenciado;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public int getCredenciado() {
        return credenciado;
    }

    public void setCredenciado(int credenciado) {
        this.credenciado = credenciado;
    }

    public Curso getCurso() {
        return curso;
    }

    public void setCurso(Curso curso) {
        this.curso = curso;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Inscrito)) {
            return false;
        }
        Inscrito other = (Inscrito) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.bmplab.cracha.entidade.Inscrito[ id=" + id + " ]";
    }
    
}
