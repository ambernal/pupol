package es.pupol.admin;

import es.pupol.beans.child.ChildBean;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/childbeans")
@Controller
@RooWebScaffold(path = "childbeans", formBackingObject = ChildBean.class)
public class ChildBeanController {
}
