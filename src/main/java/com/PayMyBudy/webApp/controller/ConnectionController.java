package com.PayMyBudy.webApp.controller;

import com.PayMyBudy.service.form.AddConnectionForm;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

public class ConnectionController {
    @GetMapping()
    public ModelAndView getAddConnectionForm(Model model) {
        return new ModelAndView("addconnection", "addConnectionForm", new AddConnectionForm());
    }
    @PostMapping()
    public ModelAndView addConnection(@ModelAttribute("addConnectionForm") AddConnectionForm form) {
        ConnectionController connectionService = new ConnectionController();
        connectionService.addConnection(form);
        return new ModelAndView("addconnection", "addConnectionForm", new AddConnectionForm());
    }

}
