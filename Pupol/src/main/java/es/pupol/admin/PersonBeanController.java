package es.pupol.admin;

import es.pupol.beans.person.PersonBean;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/personbeans")
@Controller
@RooWebScaffold(path = "personbeans", formBackingObject = PersonBean.class)
public class PersonBeanController {
}
