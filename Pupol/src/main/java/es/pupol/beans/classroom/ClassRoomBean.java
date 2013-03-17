package es.pupol.beans.classroom;

import es.pupol.beans.person.PersonBean;
import javax.persistence.Enumerated;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class ClassRoomBean {

    private String name;

    @Enumerated
    private PersonBean profesores;
}
