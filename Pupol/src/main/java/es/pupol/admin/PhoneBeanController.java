package es.pupol.admin;

import es.pupol.beans.phone.PhoneBean;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/phonebeans")
@Controller
@RooWebScaffold(path = "phonebeans", formBackingObject = PhoneBean.class)
public class PhoneBeanController {
}
