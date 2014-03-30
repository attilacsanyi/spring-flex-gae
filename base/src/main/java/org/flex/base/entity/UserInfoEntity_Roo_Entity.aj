package org.flex.base.entity;

import java.lang.Integer;
import java.lang.Long;
import java.lang.SuppressWarnings;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.EntityManager;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.flex.base.entity.UserInfoEntity;
import org.springframework.transaction.annotation.Transactional;

privileged aspect UserInfoEntity_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager UserInfoEntity.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long UserInfoEntity.id;
    
    @Version
    @Column(name = "version")
    private Integer UserInfoEntity.version;
    
    public Long UserInfoEntity.getId() {
        return this.id;
    }
    
    public void UserInfoEntity.setId(Long id) {
        this.id = id;
    }
    
    public Integer UserInfoEntity.getVersion() {
        return this.version;
    }
    
    public void UserInfoEntity.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void UserInfoEntity.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void UserInfoEntity.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            UserInfoEntity attached = this.entityManager.find(this.getClass(), this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void UserInfoEntity.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public UserInfoEntity UserInfoEntity.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        UserInfoEntity merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager UserInfoEntity.entityManager() {
        EntityManager em = new UserInfoEntity().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long UserInfoEntity.countUserInfoEntitys() {
        return ((Number) entityManager().createQuery("select count(o) from UserInfoEntity o").getSingleResult()).longValue();
    }
    
    @SuppressWarnings("unchecked")
    public static List<UserInfoEntity> UserInfoEntity.findAllUserInfoEntitys() {
        return entityManager().createQuery("select o from UserInfoEntity o").getResultList();
    }
    
    public static UserInfoEntity UserInfoEntity.findUserInfoEntity(Long id) {
        if (id == null) return null;
        return entityManager().find(UserInfoEntity.class, id);
    }
    
    @SuppressWarnings("unchecked")
    public static List<UserInfoEntity> UserInfoEntity.findUserInfoEntityEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("select o from UserInfoEntity o").setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
