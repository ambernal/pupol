package es.pupol.admin;

import es.pupol.beans.mensaje.MensajeBean;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/mensajebeans")
@Controller
@RooWebScaffold(path = "mensajebeans", formBackingObject = MensajeBean.class)
public class MensajeBeanController {
}
