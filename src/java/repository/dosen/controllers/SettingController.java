/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Jaret
 */
@Controller
public class SettingController {
    
    @RequestMapping( value="/setting_admin", method = RequestMethod.GET)
    public String showSettingAdmin(){
        return "setting_admin";
    }
    
    @RequestMapping( value="/setting_dosen", method = RequestMethod.GET)
    public String showSettingDosen(){
        return "setting_dosen";
    }
    
    @RequestMapping( value="/add_admin", method = RequestMethod.GET)
    public String showAddAdmin(){
        return "add_admin";
    }
    
}
