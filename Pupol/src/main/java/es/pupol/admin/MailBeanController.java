package es.pupol.admin;

import es.pupol.beans.mail.MailBean;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/mailbeans")
@Controller
@RooWebScaffold(path = "mailbeans", formBackingObject = MailBean.class)
public class MailBeanController {
}
