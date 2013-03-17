// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.pupol.admin;

import es.pupol.admin.PersonBeanController;
import es.pupol.beans.mail.MailBean;
import es.pupol.beans.person.PersonBean;
import es.pupol.beans.phone.PhoneBean;
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

privileged aspect PersonBeanController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String PersonBeanController.create(@Valid PersonBean personBean, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, personBean);
            return "personbeans/create";
        }
        uiModel.asMap().clear();
        personBean.persist();
        return "redirect:/personbeans/" + encodeUrlPathSegment(personBean.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String PersonBeanController.createForm(Model uiModel) {
        populateEditForm(uiModel, new PersonBean());
        return "personbeans/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String PersonBeanController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("personbean", PersonBean.findPersonBean(id));
        uiModel.addAttribute("itemId", id);
        return "personbeans/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String PersonBeanController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("personbeans", PersonBean.findPersonBeanEntries(firstResult, sizeNo));
            float nrOfPages = (float) PersonBean.countPersonBeans() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("personbeans", PersonBean.findAllPersonBeans());
        }
        addDateTimeFormatPatterns(uiModel);
        return "personbeans/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String PersonBeanController.update(@Valid PersonBean personBean, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, personBean);
            return "personbeans/update";
        }
        uiModel.asMap().clear();
        personBean.merge();
        return "redirect:/personbeans/" + encodeUrlPathSegment(personBean.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String PersonBeanController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, PersonBean.findPersonBean(id));
        return "personbeans/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String PersonBeanController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        PersonBean personBean = PersonBean.findPersonBean(id);
        personBean.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/personbeans";
    }
    
    void PersonBeanController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("personBean_birthday_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void PersonBeanController.populateEditForm(Model uiModel, PersonBean personBean) {
        uiModel.addAttribute("personBean", personBean);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("mailbeans", MailBean.findAllMailBeans());
        uiModel.addAttribute("phonebeans", PhoneBean.findAllPhoneBeans());
    }
    
    String PersonBeanController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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