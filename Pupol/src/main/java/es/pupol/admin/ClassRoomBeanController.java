package es.pupol.admin;

import es.pupol.beans.classroom.ClassRoomBean;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/classroombeans")
@Controller
@RooWebScaffold(path = "classroombeans", formBackingObject = ClassRoomBean.class)
public class ClassRoomBeanController {
}
