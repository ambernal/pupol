package es.pupol.admin;

import es.pupol.beans.center.CenterBean;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/centerbeans")
@Controller
@RooWebScaffold(path = "centerbeans", formBackingObject = CenterBean.class)
public class CenterBeanController {
}
