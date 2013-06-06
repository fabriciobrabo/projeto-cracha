package br.bmplab.cracha.bean;

import br.bmplab.cracha.entidade.Evento;
import br.bmplab.cracha.rn.EventoRN;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

/**
 *
 * @author stelio
 */
@ManagedBean
@RequestScoped
public class EventoBean {

    private final EventoRN rn = new EventoRN();
    private Evento evento = new Evento();
    private List<Evento> eventos;

    public EventoBean() {
    }

    public Evento getEvento() {
        return evento;
    }

    public void setEvento(Evento evento) {
        this.evento = evento;
    }

    public List<Evento> getEventos() {
        if (eventos == null){
            eventos = rn.obterTodos();
        }
        return eventos;
    }

    public void setEventos(List<Evento> eventos) {
        this.eventos = eventos;
    }


    public String novo() {
        evento = rn.novo();
        return "/cadastro/evento/formulario.xhtml?faces-redirect=true";
    }

    public String corrigir() {
        return "/cadastro/evento/formulario.xhtml";
    }

    public String listar() {
        return "/cadastro/evento/listagem.xhtml?faces-redirect=true";
    }

    public String salvar() {

        if (rn.salvar(evento)) {
            BeanUtil.criarMensagemDeInformacao(
                    "Operação realizada com sucesso",
                    "O Curso " + evento.getNome() + " foi gravado com sucesso.");
        } else {
            BeanUtil.criarMensagemDeErro("Erro ao salvar o Inscrito", "Inscrito: " + evento.getNome());
        }

        evento = null;
        eventos = null;

        return listar();
    }

    public String excluir() {
        System.out.println("Evento " + evento);
        if (rn.remover(evento)) {
            BeanUtil.criarMensagemDeInformacao("Inscrito excluído", "Inscrito: " + evento.getNome());
        } else {
            BeanUtil.criarMensagemDeErro("Erro ao excluir Inscrito", "Inscrito: " + evento.getNome());
        }
        return listar();
    }
}
