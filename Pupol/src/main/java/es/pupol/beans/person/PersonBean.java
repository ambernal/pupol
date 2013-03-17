package es.pupol.beans.person;

import es.pupol.beans.mail.MailBean;
import es.pupol.beans.phone.PhoneBean;
import java.util.Date;
import javax.persistence.Enumerated;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class PersonBean {

    private String name;

    private String surname1;

    private String surname2;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date birthday;

    private String address;

    private String picture;

    @Enumerated
    private PhoneBean phones;

    @Enumerated
    private MailBean mails;
}
