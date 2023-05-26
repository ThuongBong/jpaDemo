package com.example.jpademo.util;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class PersistenceUtil {
    static EntityManagerFactory entityManagerFactory;
    public static EntityManagerFactory getEntityManagerFactory() {
        try {
            if (entityManagerFactory == null) {
                entityManagerFactory = Persistence.createEntityManagerFactory("jpaDemo");
            }
        } catch (Exception ex){
            System.out.println(ex.getMessage());
        }

        return entityManagerFactory;
    }
}
