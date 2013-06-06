package br.bmplab.cracha.dao;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class FabricaEntityManager {
    private static EntityManagerFactory fabrica = Persistence.createEntityManagerFactory("CrachaPU");

    private FabricaEntityManager() {
    }

    public static EntityManagerFactory obterFabrica() {
        return fabrica;
    }

    public static EntityManagerFactory obterFabrica(String unidadePersistencia) {
        if (fabrica != null && fabrica.isOpen()) {
            fabrica.close();
        }
        fabrica = Persistence.createEntityManagerFactory(unidadePersistencia);
        return fabrica;
    }
}
