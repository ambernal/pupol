// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.pupol.beans.image;

import es.pupol.beans.image.ImageBean;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect ImageBean_Roo_Jpa_Entity {
    
    declare @type: ImageBean: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long ImageBean.id;
    
    @Version
    @Column(name = "version")
    private Integer ImageBean.version;
    
    public Long ImageBean.getId() {
        return this.id;
    }
    
    public void ImageBean.setId(Long id) {
        this.id = id;
    }
    
    public Integer ImageBean.getVersion() {
        return this.version;
    }
    
    public void ImageBean.setVersion(Integer version) {
        this.version = version;
    }
    
}
