package br.bmplab.cracha.bean;

import br.bmplab.cracha.entidade.Palestrante;
import br.bmplab.cracha.rn.PalestranteRN;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

/**
 *
 * @author stelio
 */
@ManagedBean
@RequestScoped
public class PalestranteBean {

    private final PalestranteRN rn = new PalestranteRN();
    private Palestrante palestrante = new Palestrante();
    private List<Palestrante> palestrantes;

    public PalestranteBean() {
    }

    public Palestrante getPalestrante() {
        return palestrante;
    }

    public void setPalestrante(Palestrante palestrante) {
        this.palestrante = palestrante;
    }

    public List<Palestrante> getPalestrantes() {
        if (palestrantes == null){
            palestrantes = rn.obterTodos();
        }
        return palestrantes;
    }

    public void setPalestrantes(List<Palestrante> palestrantes) {
        this.palestrantes = palestrantes;
    }

    

    public String novo() {
        palestrante = rn.novo();
        return "/cadastro/palestrante/formulario.xhtml?faces-redirect=true";
    }

    public String corrigir() {
        return "/cadastro/palestrante/formulario.xhtml";
    }

    public String listar() {
        return "/cadastro/palestrante/listagem.xhtml?faces-redirect=true";
    }

    public String salvar() {

        if (rn.salvar(palestrante)) {
            BeanUtil.criarMensagemDeInformacao(
                    "Operação realizada com sucesso",
                    "O Curso " + palestrante.getNome() + " foi gravado com sucesso.");
        } else {
            BeanUtil.criarMensagemDeErro("Erro ao salvar o Inscrito", "Inscrito: " + palestrante.getNome());
        }

        palestrante = null;
        palestrantes = null;

        return listar();
    }

    public String excluir() {
        System.out.println("Palestrante " + palestrante);
        if (rn.remover(palestrante)) {
            BeanUtil.criarMensagemDeInformacao("Inscrito excluído", "Inscrito: " + palestrante.getNome());
        } else {
            BeanUtil.criarMensagemDeErro("Erro ao excluir Inscrito", "Inscrito: " + palestrante.getNome());
        }
        return listar();
    }
}
