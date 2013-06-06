/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.bmplab.cracha.entidade;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author stelio
 */
@Entity
@Table(name = "palestrante")
@NamedQueries({
    @NamedQuery(name = "Palestrante.findAll", query = "SELECT p FROM Palestrante p"),
    @NamedQuery(name = "Palestrante.findById", query = "SELECT p FROM Palestrante p WHERE p.id = :id"),
    @NamedQuery(name = "Palestrante.findByTitulo", query = "SELECT p FROM Palestrante p WHERE p.titulo = :titulo"),
    @NamedQuery(name = "Palestrante.findByNome", query = "SELECT p FROM Palestrante p WHERE p.nome = :nome"),
    @NamedQuery(name = "Palestrante.findByCracha", query = "SELECT p FROM Palestrante p WHERE p.cracha = :cracha"),
    @NamedQuery(name = "Palestrante.findByTelefone", query = "SELECT p FROM Palestrante p WHERE p.telefone = :telefone"),
    @NamedQuery(name = "Palestrante.findByEmail", query = "SELECT p FROM Palestrante p WHERE p.email = :email"),
    @NamedQuery(name = "Palestrante.findByInstituicao", query = "SELECT p FROM Palestrante p WHERE p.instituicao = :instituicao")})
public class Palestrante implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "titulo")
    private String titulo;
    @Basic(optional = false)
    @Column(name = "nome")
    private String nome;
    @Basic(optional = false)
    @Column(name = "cracha")
    private String cracha;
    @Column(name = "telefone")
    private String telefone;
    @Basic(optional = false)
    @Column(name = "email")
    private String email;
    @Column(name = "instituicao")
    private String instituicao;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "palestrante")
    private List<Curso> cursoList;

    public Palestrante() {
    }

    public Palestrante(Integer id) {
        this.id = id;
    }

    public Palestrante(Integer id, String nome, String cracha, String email) {
        this.id = id;
        this.nome = nome;
        this.cracha = cracha;
        this.email = email;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
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

    public List<Curso> getCursoList() {
        return cursoList;
    }

    public void setCursoList(List<Curso> cursoList) {
        this.cursoList = cursoList;
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
        if (!(object instanceof Palestrante)) {
            return false;
        }
        Palestrante other = (Palestrante) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.bmplab.cracha.entidade.Palestrante[ id=" + id + " ]";
    }
    
}
