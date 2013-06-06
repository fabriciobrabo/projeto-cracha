package br.bmplab.cracha.bean;

import br.bmplab.cracha.entidade.Coordenacao;
import br.bmplab.cracha.entidade.Evento;
import br.bmplab.cracha.relatorio.RelatorioUtil;
import br.bmplab.cracha.rn.CoordenacaoRN;
import br.bmplab.cracha.rn.EventoRN;
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
public class CoordenacaoBean {

    private final CoordenacaoRN rn = new CoordenacaoRN();
    private Coordenacao coordenador = new Coordenacao();
    private List<Coordenacao> coordenadores;
    private List<Evento> eventos;

    public CoordenacaoBean() {
    }

    public Coordenacao getCoordenador() {
        return coordenador;
    }

    public void setCoordenador(Coordenacao coordenador) {
        this.coordenador = coordenador;
    }

    public List<Coordenacao> getCoordenadores() {
        if (coordenadores == null){
            coordenadores = rn.obterTodos();
        }
        return coordenadores;
    }

    public void setCoordenadores(List<Coordenacao> coordenadores) {
        this.coordenadores = coordenadores;
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
    

    public String novo() {
        coordenador = rn.novo();
        return "/cadastro/coordenador/formulario.xhtml?faces-redirect=true";
    }

    public String corrigir() {
        return "/cadastro/coordenador/formulario.xhtml";
    }

    public String listar() {
        return "/cadastro/coordenador/listagem.xhtml?faces-redirect=true";
    }

    public String salvar() {

        if (rn.salvar(coordenador)) {
            BeanUtil.criarMensagemDeInformacao(
                    "Operação realizada com sucesso",
                    "O Curso " + coordenador.getNome() + " foi gravado com sucesso.");
        } else {
            BeanUtil.criarMensagemDeErro("Erro ao salvar o Inscrito", "Inscrito: " + coordenador.getNome());
        }

        coordenador = null;
        coordenadores = null;

        return listar();
    }

    public String excluir() {
        System.out.println("Coordenacao " + coordenador);
        if (rn.remover(coordenador)) {
            BeanUtil.criarMensagemDeInformacao("Inscrito excluído", "Inscrito: " + coordenador.getNome());
        } else {
            BeanUtil.criarMensagemDeErro("Erro ao excluir Inscrito", "Inscrito: " + coordenador.getNome());
        }
        return listar();
    }
    
    public void gerarCracha() {

        String path = "/relatorio/crachaCoordenacao.jasper";
        String nome = "Cracha - " + coordenador.getCracha();
        
        List<Coordenacao> dataSource = new ArrayList<Coordenacao>();
        dataSource.add(coordenador);
        
        RelatorioUtil.geraRelatorio(path, dataSource, nome);
    }
}
