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
import org.flex.tutorial.domain.auth.UserDetails;
import org.springframework.transaction.annotation.Transactional;

privileged aspect UserDetails_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager UserDetails.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long UserDetails.id;
    
    @Version
    @Column(name = "version")
    private Integer UserDetails.version;
    
    public Long UserDetails.getId() {
        return this.id;
    }
    
    public void UserDetails.setId(Long id) {
        this.id = id;
    }
    
    public Integer UserDetails.getVersion() {
        return this.version;
    }
    
    public void UserDetails.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void UserDetails.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void UserDetails.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            UserDetails attached = this.entityManager.find(this.getClass(), this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void UserDetails.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public UserDetails UserDetails.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        UserDetails merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager UserDetails.entityManager() {
        EntityManager em = new UserDetails().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long UserDetails.countUserDetailses() {
        return ((Number) entityManager().createQuery("select count(o) from UserDetails o").getSingleResult()).longValue();
    }
    
    @SuppressWarnings("unchecked")
    public static List<UserDetails> UserDetails.findAllUserDetailses() {
        return entityManager().createQuery("select o from UserDetails o").getResultList();
    }
    
    public static UserDetails UserDetails.findUserDetails(Long id) {
        if (id == null) return null;
        return entityManager().find(UserDetails.class, id);
    }
    
    @SuppressWarnings("unchecked")
    public static List<UserDetails> UserDetails.findUserDetailsEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("select o from UserDetails o").setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
