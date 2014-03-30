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
import org.flex.base.entity.RoleEntity;
import org.springframework.transaction.annotation.Transactional;

privileged aspect RoleEntity_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager RoleEntity.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long RoleEntity.id;
    
    @Version
    @Column(name = "version")
    private Integer RoleEntity.version;
    
    public Long RoleEntity.getId() {
        return this.id;
    }
    
    public void RoleEntity.setId(Long id) {
        this.id = id;
    }
    
    public Integer RoleEntity.getVersion() {
        return this.version;
    }
    
    public void RoleEntity.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void RoleEntity.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void RoleEntity.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            RoleEntity attached = this.entityManager.find(this.getClass(), this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void RoleEntity.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public RoleEntity RoleEntity.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        RoleEntity merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager RoleEntity.entityManager() {
        EntityManager em = new RoleEntity().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long RoleEntity.countRoleEntitys() {
        return ((Number) entityManager().createQuery("select count(o) from RoleEntity o").getSingleResult()).longValue();
    }
    
    @SuppressWarnings("unchecked")
    public static List<RoleEntity> RoleEntity.findAllRoleEntitys() {
        return entityManager().createQuery("select o from RoleEntity o").getResultList();
    }
    
    public static RoleEntity RoleEntity.findRoleEntity(Long id) {
        if (id == null) return null;
        return entityManager().find(RoleEntity.class, id);
    }
    
    @SuppressWarnings("unchecked")
    public static List<RoleEntity> RoleEntity.findRoleEntityEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("select o from RoleEntity o").setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
