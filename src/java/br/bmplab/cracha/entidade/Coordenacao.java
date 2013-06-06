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
@Table(name = "coordenacao")
@NamedQueries({
    @NamedQuery(name = "Coordenacao.findAll", query = "SELECT c FROM Coordenacao c"),
    @NamedQuery(name = "Coordenacao.findById", query = "SELECT c FROM Coordenacao c WHERE c.id = :id"),
    @NamedQuery(name = "Coordenacao.findByNome", query = "SELECT c FROM Coordenacao c WHERE c.nome = :nome"),
    @NamedQuery(name = "Coordenacao.findByCracha", query = "SELECT c FROM Coordenacao c WHERE c.cracha = :cracha"),
    @NamedQuery(name = "Coordenacao.findByTelefone", query = "SELECT c FROM Coordenacao c WHERE c.telefone = :telefone"),
    @NamedQuery(name = "Coordenacao.findByEmail", query = "SELECT c FROM Coordenacao c WHERE c.email = :email"),
    @NamedQuery(name = "Coordenacao.findByFuncao", query = "SELECT c FROM Coordenacao c WHERE c.funcao = :funcao")})
public class Coordenacao implements Serializable {
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
    @Basic(optional = false)
    @Column(name = "email")
    private String email;
    @Basic(optional = false)
    @Column(name = "funcao")
    private String funcao;
    @JoinColumn(name = "evento", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Evento evento;

    public Coordenacao() {
    }

    public Coordenacao(Integer id) {
        this.id = id;
    }

    public Coordenacao(Integer id, String nome, String cracha, String email, String funcao) {
        this.id = id;
        this.nome = nome;
        this.cracha = cracha;
        this.email = email;
        this.funcao = funcao;
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

    public String getFuncao() {
        return funcao;
    }

    public void setFuncao(String funcao) {
        this.funcao = funcao;
    }

    public Evento getEvento() {
        return evento;
    }

    public void setEvento(Evento evento) {
        this.evento = evento;
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
        if (!(object instanceof Coordenacao)) {
            return false;
        }
        Coordenacao other = (Coordenacao) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.bmplab.cracha.entidade.Coordenacao[ id=" + id + " ]";
    }
    
}
