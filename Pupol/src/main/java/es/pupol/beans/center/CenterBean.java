package es.pupol.beans.center;

import es.pupol.beans.classroom.ClassRoomBean;
import es.pupol.beans.image.ImageBean;
import es.pupol.beans.person.PersonBean;
import javax.persistence.Enumerated;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class CenterBean {

    private String name;

    private String address;

    private String description;

    @Enumerated
    private ClassRoomBean classrooms;

    @Enumerated
    private PersonBean managers;

    @Enumerated
    private ImageBean images;
}
