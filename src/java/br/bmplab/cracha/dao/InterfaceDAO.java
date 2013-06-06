package br.bmplab.cracha.dao;

import java.util.List;

public interface InterfaceDAO<I> {
    public boolean criar(I o);
    public boolean alterar(I o);
    public boolean excluir(I o);
    public I obter(Class<I> classe, Object id);
    public List<I> obterTodos(Class<I> classe);
}
