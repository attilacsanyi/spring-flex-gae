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
import org.flex.base.entity.LoginEntity;
import org.springframework.transaction.annotation.Transactional;

privileged aspect LoginEntity_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager LoginEntity.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long LoginEntity.id;
    
    @Version
    @Column(name = "version")
    private Integer LoginEntity.version;
    
    public Long LoginEntity.getId() {
        return this.id;
    }
    
    public void LoginEntity.setId(Long id) {
        this.id = id;
    }
    
    public Integer LoginEntity.getVersion() {
        return this.version;
    }
    
    public void LoginEntity.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void LoginEntity.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void LoginEntity.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            LoginEntity attached = this.entityManager.find(this.getClass(), this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void LoginEntity.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public LoginEntity LoginEntity.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        LoginEntity merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager LoginEntity.entityManager() {
        EntityManager em = new LoginEntity().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long LoginEntity.countLoginEntitys() {
        return ((Number) entityManager().createQuery("select count(o) from LoginEntity o").getSingleResult()).longValue();
    }
    
    @SuppressWarnings("unchecked")
    public static List<LoginEntity> LoginEntity.findAllLoginEntitys() {
        return entityManager().createQuery("select o from LoginEntity o").getResultList();
    }
    
    public static LoginEntity LoginEntity.findLoginEntity(Long id) {
        if (id == null) return null;
        return entityManager().find(LoginEntity.class, id);
    }
    
    @SuppressWarnings("unchecked")
    public static List<LoginEntity> LoginEntity.findLoginEntityEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("select o from LoginEntity o").setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
