package es.pupol.beans.company;

import es.pupol.beans.center.CenterBean;
import javax.persistence.Enumerated;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class CompanyBean {

    private String name;

    private String address;

    @Enumerated
    private CenterBean centers;
}
