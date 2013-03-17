package es.pupol.admin;

import es.pupol.beans.image.ImageBean;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/imagebeans")
@Controller
@RooWebScaffold(path = "imagebeans", formBackingObject = ImageBean.class)
public class ImageBeanController {
}
