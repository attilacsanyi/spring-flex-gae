package org.flex.tutorial.domain.auth;

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
import org.flex.tutorial.domain.auth.GrantedAuthority;
import org.springframework.transaction.annotation.Transactional;

privileged aspect GrantedAuthority_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager GrantedAuthority.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long GrantedAuthority.id;
    
    @Version
    @Column(name = "version")
    private Integer GrantedAuthority.version;
    
    public Long GrantedAuthority.getId() {
        return this.id;
    }
    
    public void GrantedAuthority.setId(Long id) {
        this.id = id;
    }
    
    public Integer GrantedAuthority.getVersion() {
        return this.version;
    }
    
    public void GrantedAuthority.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void GrantedAuthority.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void GrantedAuthority.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            GrantedAuthority attached = this.entityManager.find(this.getClass(), this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void GrantedAuthority.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public GrantedAuthority GrantedAuthority.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        GrantedAuthority merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager GrantedAuthority.entityManager() {
        EntityManager em = new GrantedAuthority().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long GrantedAuthority.countGrantedAuthoritys() {
        return ((Number) entityManager().createQuery("select count(o) from GrantedAuthority o").getSingleResult()).longValue();
    }
    
    @SuppressWarnings("unchecked")
    public static List<GrantedAuthority> GrantedAuthority.findAllGrantedAuthoritys() {
        return entityManager().createQuery("select o from GrantedAuthority o").getResultList();
    }
    
    public static GrantedAuthority GrantedAuthority.findGrantedAuthority(Long id) {
        if (id == null) return null;
        return entityManager().find(GrantedAuthority.class, id);
    }
    
    @SuppressWarnings("unchecked")
    public static List<GrantedAuthority> GrantedAuthority.findGrantedAuthorityEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("select o from GrantedAuthority o").setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
