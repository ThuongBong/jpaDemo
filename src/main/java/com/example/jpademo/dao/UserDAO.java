package com.example.jpademo.dao;

import com.example.jpademo.entity.UserEntity;
import com.example.jpademo.util.PersistenceUtil;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;
import java.util.List;

public class UserDAO {
    EntityManager em;
    EntityTransaction tran;
    public UserDAO() {
        em = PersistenceUtil.getEntityManagerFactory().createEntityManager();
        tran = em.getTransaction();
    }

    public void insertUser(UserEntity user) {
        try {
            tran.begin();
            em.persist(user);
            tran.commit();

        }catch (Exception e){
            System.out.println(e.getMessage());
            tran.rollback();
        }
    }

    public List<UserEntity> getAllUsers() {
        TypedQuery<UserEntity> query = em.createQuery("SELECT u FROM UserEntity u", UserEntity.class);
        List<UserEntity> resultList = query.getResultList();
        return resultList;
    }

    public List<UserEntity> searchUsersByName(String name) {
        TypedQuery<UserEntity> query = em.createQuery("SELECT u FROM UserEntity u WHERE u.name LIKE :name", UserEntity.class);
        query.setParameter("name", "%" + name + "%");
        List<UserEntity> resultList = query.getResultList();
        return resultList;
    }

}
