package br.bmplab.cracha.bean;

import br.bmplab.cracha.entidade.Curso;
import br.bmplab.cracha.entidade.Inscrito;
import br.bmplab.cracha.entidade.InscritoAux;
import br.bmplab.cracha.relatorio.RelatorioUtil;
import br.bmplab.cracha.rn.CursoRN;
import br.bmplab.cracha.rn.InscritoRN;
import java.util.ArrayList;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.model.SelectItem;

/**
 *
 * @author stelio
 */
@ManagedBean
@RequestScoped
public class InscritoBean {

    private final InscritoRN rn = new InscritoRN();
    private Inscrito inscrito = new Inscrito();
    private List<Inscrito> inscritos;
    private List<Inscrito> credenciados;
    private List<Inscrito> naoCredenciados;
    private List<Curso> cursos;
    
    private SelectItem[] situacaoOptions;

    public InscritoBean() {
    }

    public Inscrito getInscrito() {
        return inscrito;
    }

    public void setInscrito(Inscrito inscrito) {
        this.inscrito = inscrito;
    }

    public List<Inscrito> getInscritos() {
        if (inscritos == null) {
            inscritos = rn.obterTodos();
        }
        return inscritos;
    }

    public void setInscritos(List<Inscrito> inscritos) {
        this.inscritos = inscritos;
    }

    public int getTotalInscritos() {
        return inscritos.size();
    }

    public List<Inscrito> getCredenciados() {
        if (credenciados == null) {
            credenciados = rn.listCredenciados();
        }
        return credenciados;
    }

    public void setCredenciados(List<Inscrito> credenciados) {
        this.credenciados = credenciados;
    }

    public List<Inscrito> getNaoCredenciados() {
        if (naoCredenciados == null) {
            naoCredenciados = rn.listNaoCredenciados();
        }
        return naoCredenciados;
    }

    public List<Curso> getCursos() {
        if (cursos == null){
            cursos = new CursoRN().obterTodos();
        }
        return cursos;
    }

    public void setCursos(List<Curso> cursos) {
        this.cursos = cursos;
    }
    
    public void setNaoCredenciados(List<Inscrito> naoCredenciados) {
        this.naoCredenciados = naoCredenciados;
    }

    public String novo() {
        inscrito = rn.novo();
        return "/cadastro/participante/formulario.xhtml?faces-redirect=true";
    }

    public String corrigir() {
        return "/cadastro/participante/formulario.xhtml";
    }

    public String listar() {
        return "/cadastro/participante/listagem.xhtml?faces-redirect=true";
    }

    public String listarCredenciado() {
        return "/cadastro/participante/credenciados.xhtml?faces-redirect=true";
    }

    public String listarNaoCredenciado() {
        return "/cadastro/participante/descredenciados.xhtml?faces-redirect=true";
    }

    public String salvar() {

        if (rn.salvar(inscrito)) {
            BeanUtil.criarMensagemDeInformacao(
                    "Operação realizada com sucesso",
                    "O Inscrito " + inscrito.getNome() + " foi gravado com sucesso.");
        } else {
            BeanUtil.criarMensagemDeErro("Erro ao salvar o Inscrito", "Inscrito: " + inscrito.getNome());
        }

        inscrito = null;
        inscritos = null;

        return listar();
    }

    public String excluir() {
        System.out.println("Inscrito " + inscrito);
        if (rn.remover(inscrito)) {
            BeanUtil.criarMensagemDeInformacao("Inscrito excluído", "Inscrito: " + inscrito.getNome());
        } else {
            BeanUtil.criarMensagemDeErro("Erro ao excluir Inscrito", "Inscrito: " + inscrito.getNome());
        }
        return listar();
    }

    public String atualizaSituacao() {
        rn.atualizarSituacao(inscrito);

        inscritos = null;

        return listar();
    }

    public String credenciar() {
        rn.atualizarSituacao(inscrito);

        credenciados = null;

        return listarNaoCredenciado();
    }

    public String descredenciar() {
        rn.atualizarSituacao(inscrito);

        naoCredenciados = null;

        return listarCredenciado();
    }
    
    public void gerarCracha() {
        
        String path = "/relatorio/crachaCredenciado.jasper";
        
        List<InscritoAux> dataSource = new ArrayList<InscritoAux>();
        InscritoAux participante = new InscritoAux(inscrito);
        dataSource.add(participante);
        
        RelatorioUtil.geraRelatorio(path, dataSource, "Cracha - " + participante.getCracha());
        
    }
    
    private SelectItem[] filterOptions()  {  
        SelectItem[] options = new SelectItem[3];  
  
        options[0] = new SelectItem("", "Todos");
        options[1] = new SelectItem("0", "Descre.");  
        options[2] = new SelectItem("1", "Creden.");
  
        return options;  
    }  
  
    public SelectItem[] getSituacaoOptions() {  
        if (situacaoOptions == null){
            situacaoOptions = filterOptions();
        }
        return situacaoOptions;  
    }
}
