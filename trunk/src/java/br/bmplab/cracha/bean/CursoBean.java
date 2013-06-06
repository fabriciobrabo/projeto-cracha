package br.bmplab.cracha.bean;

import br.bmplab.cracha.entidade.Curso;
import br.bmplab.cracha.entidade.CursoAux;
import br.bmplab.cracha.entidade.Evento;
import br.bmplab.cracha.entidade.Palestrante;
import br.bmplab.cracha.relatorio.RelatorioUtil;
import br.bmplab.cracha.rn.CursoRN;
import br.bmplab.cracha.rn.EventoRN;
import br.bmplab.cracha.rn.PalestranteRN;
import java.util.ArrayList;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

/**
 *
 * @author stelio
 */
@ManagedBean
@RequestScoped
public class CursoBean {

    private final CursoRN rn = new CursoRN();
    private Curso curso = new Curso();
    private List<Curso> cursos;
    private List<Evento> eventos;
    private List<Palestrante> palestrantes;

    public CursoBean() {
    }

    public Curso getCurso() {
        return curso;
    }

    public void setCurso(Curso curso) {
        this.curso = curso;
    }

    public List<Curso> getCursos() {
        if (cursos == null) {
            cursos = rn.obterTodos();
        }
        return cursos;
    }

    public void setCursos(List<Curso> cursos) {
        this.cursos = cursos;
    }

    public List<Evento> getEventos() {
        if (eventos == null){
            eventos = new EventoRN().obterTodos();
        }
        return eventos;
    }

    public void setEventos(List<Evento> eventos) {
        this.eventos = eventos;
    }

    public List<Palestrante> getPalestrantes() {
        if (palestrantes == null){
            palestrantes = new PalestranteRN().obterTodos();
        }
        return palestrantes;
    }

    public void setPalestrantes(List<Palestrante> palestrantes) {
        this.palestrantes = palestrantes;
    }
    

    public String novo() {
        curso = rn.novo();
        return "/cadastro/curso/formulario.xhtml?faces-redirect=true";
    }

    public String corrigir() {
        return "/cadastro/curso/formulario.xhtml";
    }

    public String listar() {
        return "/cadastro/curso/listagem.xhtml?faces-redirect=true";
    }

    public String salvar() {

        if (rn.salvar(curso)) {
            BeanUtil.criarMensagemDeInformacao(
                    "Operação realizada com sucesso",
                    "O Curso " + curso.getNome() + " foi gravado com sucesso.");
        } else {
            BeanUtil.criarMensagemDeErro("Erro ao salvar o Inscrito", "Inscrito: " + curso.getNome());
        }

        curso = null;
        cursos = null;

        return listar();
    }

    public String excluir() {
        System.out.println("Curso " + curso);
        if (rn.remover(curso)) {
            BeanUtil.criarMensagemDeInformacao("Inscrito excluído", "Inscrito: " + curso.getNome());
        } else {
            BeanUtil.criarMensagemDeErro("Erro ao excluir Inscrito", "Inscrito: " + curso.getNome());
        }
        return listar();
    }
    
    public void gerarCracha() {
        
        String path = "/relatorio/crachaPalestrante.jasper";
        
        List<CursoAux> dataSource = new ArrayList<CursoAux>();
        CursoAux cursoAux = new CursoAux(curso);
        dataSource.add(cursoAux);
        
        RelatorioUtil.geraRelatorio(path, dataSource, "Cracha - " + cursoAux.getPalestrante());
        
    }
}
