package org.flex.tutorial.domain.model;

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
import org.flex.tutorial.domain.model.UserInfo;
import org.springframework.transaction.annotation.Transactional;

privileged aspect UserInfo_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager UserInfo.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long UserInfo.id;
    
    @Version
    @Column(name = "version")
    private Integer UserInfo.version;
    
    public Long UserInfo.getId() {
        return this.id;
    }
    
    public void UserInfo.setId(Long id) {
        this.id = id;
    }
    
    public Integer UserInfo.getVersion() {
        return this.version;
    }
    
    public void UserInfo.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void UserInfo.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void UserInfo.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            UserInfo attached = this.entityManager.find(this.getClass(), this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void UserInfo.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public UserInfo UserInfo.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        UserInfo merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager UserInfo.entityManager() {
        EntityManager em = new UserInfo().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long UserInfo.countUserInfoes() {
        return ((Number) entityManager().createQuery("select count(o) from UserInfo o").getSingleResult()).longValue();
    }
    
    @SuppressWarnings("unchecked")
    public static List<UserInfo> UserInfo.findAllUserInfoes() {
        return entityManager().createQuery("select o from UserInfo o").getResultList();
    }
    
    public static UserInfo UserInfo.findUserInfo(Long id) {
        if (id == null) return null;
        return entityManager().find(UserInfo.class, id);
    }
    
    @SuppressWarnings("unchecked")
    public static List<UserInfo> UserInfo.findUserInfoEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("select o from UserInfo o").setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
