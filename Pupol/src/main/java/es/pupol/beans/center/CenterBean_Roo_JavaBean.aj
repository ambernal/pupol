// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.pupol.beans.center;

import es.pupol.beans.center.CenterBean;
import es.pupol.beans.classroom.ClassRoomBean;
import es.pupol.beans.image.ImageBean;
import es.pupol.beans.person.PersonBean;

privileged aspect CenterBean_Roo_JavaBean {
    
    public String CenterBean.getName() {
        return this.name;
    }
    
    public void CenterBean.setName(String name) {
        this.name = name;
    }
    
    public String CenterBean.getAddress() {
        return this.address;
    }
    
    public void CenterBean.setAddress(String address) {
        this.address = address;
    }
    
    public String CenterBean.getDescription() {
        return this.description;
    }
    
    public void CenterBean.setDescription(String description) {
        this.description = description;
    }
    
    public ClassRoomBean CenterBean.getClassrooms() {
        return this.classrooms;
    }
    
    public void CenterBean.setClassrooms(ClassRoomBean classrooms) {
        this.classrooms = classrooms;
    }
    
    public PersonBean CenterBean.getManagers() {
        return this.managers;
    }
    
    public void CenterBean.setManagers(PersonBean managers) {
        this.managers = managers;
    }
    
    public ImageBean CenterBean.getImages() {
        return this.images;
    }
    
    public void CenterBean.setImages(ImageBean images) {
        this.images = images;
    }
    
}
