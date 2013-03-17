package es.pupol.admin;

import es.pupol.beans.company.CompanyBean;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/companybeans")
@Controller
@RooWebScaffold(path = "companybeans", formBackingObject = CompanyBean.class)
public class CompanyBeanController {
}
