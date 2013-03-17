// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.pupol.beans.phone;

import es.pupol.beans.phone.PhoneBean;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PhoneBean_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager PhoneBean.entityManager;
    
    public static final EntityManager PhoneBean.entityManager() {
        EntityManager em = new PhoneBean().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long PhoneBean.countPhoneBeans() {
        return entityManager().createQuery("SELECT COUNT(o) FROM PhoneBean o", Long.class).getSingleResult();
    }
    
    public static List<PhoneBean> PhoneBean.findAllPhoneBeans() {
        return entityManager().createQuery("SELECT o FROM PhoneBean o", PhoneBean.class).getResultList();
    }
    
    public static PhoneBean PhoneBean.findPhoneBean(Long id) {
        if (id == null) return null;
        return entityManager().find(PhoneBean.class, id);
    }
    
    public static List<PhoneBean> PhoneBean.findPhoneBeanEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM PhoneBean o", PhoneBean.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void PhoneBean.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void PhoneBean.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            PhoneBean attached = PhoneBean.findPhoneBean(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void PhoneBean.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void PhoneBean.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public PhoneBean PhoneBean.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        PhoneBean merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
