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
@Table(name = "evento")
@NamedQueries({
    @NamedQuery(name = "Evento.findAll", query = "SELECT e FROM Evento e"),
    @NamedQuery(name = "Evento.findById", query = "SELECT e FROM Evento e WHERE e.id = :id"),
    @NamedQuery(name = "Evento.findByNome", query = "SELECT e FROM Evento e WHERE e.nome = :nome"),
    @NamedQuery(name = "Evento.findBySigla", query = "SELECT e FROM Evento e WHERE e.sigla = :sigla"),
    @NamedQuery(name = "Evento.findByPeriodo", query = "SELECT e FROM Evento e WHERE e.periodo = :periodo"),
    @NamedQuery(name = "Evento.findByResumo", query = "SELECT e FROM Evento e WHERE e.resumo = :resumo"),
    @NamedQuery(name = "Evento.findByLocal", query = "SELECT e FROM Evento e WHERE e.local = :local")})
public class Evento implements Serializable {
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
    @Column(name = "sigla")
    private String sigla;
    @Column(name = "periodo")
    private String periodo;
    @Column(name = "resumo")
    private String resumo;
    @Column(name = "local")
    private String local;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "evento")
    private List<Curso> cursoList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "evento")
    private List<Coordenacao> coordenacaoList;

    public Evento() {
    }

    public Evento(Integer id) {
        this.id = id;
    }

    public Evento(Integer id, String nome, String sigla) {
        this.id = id;
        this.nome = nome;
        this.sigla = sigla;
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

    public String getSigla() {
        return sigla;
    }

    public void setSigla(String sigla) {
        this.sigla = sigla;
    }

    public String getPeriodo() {
        return periodo;
    }

    public void setPeriodo(String periodo) {
        this.periodo = periodo;
    }

    public String getResumo() {
        return resumo;
    }

    public void setResumo(String resumo) {
        this.resumo = resumo;
    }

    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    public List<Curso> getCursoList() {
        return cursoList;
    }

    public void setCursoList(List<Curso> cursoList) {
        this.cursoList = cursoList;
    }

    public List<Coordenacao> getCoordenacaoList() {
        return coordenacaoList;
    }

    public void setCoordenacaoList(List<Coordenacao> coordenacaoList) {
        this.coordenacaoList = coordenacaoList;
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
        if (!(object instanceof Evento)) {
            return false;
        }
        Evento other = (Evento) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.bmplab.cracha.entidade.Evento[ id=" + id + " ]";
    }
    
}
