// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.pupol.admin;

import es.pupol.admin.MensajeBeanController;
import es.pupol.beans.mensaje.MensajeBean;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect MensajeBeanController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String MensajeBeanController.create(@Valid MensajeBean mensajeBean, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, mensajeBean);
            return "mensajebeans/create";
        }
        uiModel.asMap().clear();
        mensajeBean.persist();
        return "redirect:/mensajebeans/" + encodeUrlPathSegment(mensajeBean.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String MensajeBeanController.createForm(Model uiModel) {
        populateEditForm(uiModel, new MensajeBean());
        return "mensajebeans/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String MensajeBeanController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("mensajebean", MensajeBean.findMensajeBean(id));
        uiModel.addAttribute("itemId", id);
        return "mensajebeans/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String MensajeBeanController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("mensajebeans", MensajeBean.findMensajeBeanEntries(firstResult, sizeNo));
            float nrOfPages = (float) MensajeBean.countMensajeBeans() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("mensajebeans", MensajeBean.findAllMensajeBeans());
        }
        addDateTimeFormatPatterns(uiModel);
        return "mensajebeans/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String MensajeBeanController.update(@Valid MensajeBean mensajeBean, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, mensajeBean);
            return "mensajebeans/update";
        }
        uiModel.asMap().clear();
        mensajeBean.merge();
        return "redirect:/mensajebeans/" + encodeUrlPathSegment(mensajeBean.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String MensajeBeanController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, MensajeBean.findMensajeBean(id));
        return "mensajebeans/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String MensajeBeanController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        MensajeBean mensajeBean = MensajeBean.findMensajeBean(id);
        mensajeBean.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/mensajebeans";
    }
    
    void MensajeBeanController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("mensajeBean_datemessage_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void MensajeBeanController.populateEditForm(Model uiModel, MensajeBean mensajeBean) {
        uiModel.addAttribute("mensajeBean", mensajeBean);
        addDateTimeFormatPatterns(uiModel);
    }
    
    String MensajeBeanController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
