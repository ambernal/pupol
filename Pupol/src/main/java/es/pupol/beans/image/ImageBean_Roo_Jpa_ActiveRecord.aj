// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.pupol.beans.image;

import es.pupol.beans.image.ImageBean;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ImageBean_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager ImageBean.entityManager;
    
    public static final EntityManager ImageBean.entityManager() {
        EntityManager em = new ImageBean().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long ImageBean.countImageBeans() {
        return entityManager().createQuery("SELECT COUNT(o) FROM ImageBean o", Long.class).getSingleResult();
    }
    
    public static List<ImageBean> ImageBean.findAllImageBeans() {
        return entityManager().createQuery("SELECT o FROM ImageBean o", ImageBean.class).getResultList();
    }
    
    public static ImageBean ImageBean.findImageBean(Long id) {
        if (id == null) return null;
        return entityManager().find(ImageBean.class, id);
    }
    
    public static List<ImageBean> ImageBean.findImageBeanEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM ImageBean o", ImageBean.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void ImageBean.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void ImageBean.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            ImageBean attached = ImageBean.findImageBean(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void ImageBean.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void ImageBean.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public ImageBean ImageBean.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        ImageBean merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
