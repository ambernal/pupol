// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.pupol.beans.classroom;

import es.pupol.beans.classroom.ClassRoomBean;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect ClassRoomBean_Roo_Jpa_Entity {
    
    declare @type: ClassRoomBean: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long ClassRoomBean.id;
    
    @Version
    @Column(name = "version")
    private Integer ClassRoomBean.version;
    
    public Long ClassRoomBean.getId() {
        return this.id;
    }
    
    public void ClassRoomBean.setId(Long id) {
        this.id = id;
    }
    
    public Integer ClassRoomBean.getVersion() {
        return this.version;
    }
    
    public void ClassRoomBean.setVersion(Integer version) {
        this.version = version;
    }
    
}