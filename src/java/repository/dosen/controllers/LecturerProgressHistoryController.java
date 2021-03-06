/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository.dosen.controllers;

import com.google.gson.Gson;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import repository.dosen.dto.LecturerProgressHistoryDto;
import repository.dosen.service.LecturerProgressHistoryService;

/**
 *
 * @author Jaret
 */
@Controller
public class LecturerProgressHistoryController {
    
    @Autowired
    LecturerProgressHistoryService lecturerProgressHistoryService;
    
    @RequestMapping(value = "/getLecturerProgressHistory", method = RequestMethod.GET)
    @ResponseBody
    public String getLecturerProgressHistory(){
        List<LecturerProgressHistoryDto> listData = lecturerProgressHistoryService.getLecturerProgressHistory();
        return new Gson().toJson(listData);
    }
    
    @RequestMapping(value = "/getLecturerProgressHistoryByFaculty", method = RequestMethod.GET)
    @ResponseBody
    public String getLecturerProgressHistoryByFaculty(String idFaculty){
        List<LecturerProgressHistoryDto> listData = lecturerProgressHistoryService.getLecturerProgressHistoryByFaculty(idFaculty);
        return new Gson().toJson(listData);
    }
    
    @RequestMapping(value = "/getLecturerProgressHistoryByMajor", method = RequestMethod.GET)
    @ResponseBody
    public String getLecturerProgressHistoryByMajor(String idMajor, String idFaculty){
        if (idMajor.equals("0")){
            List<LecturerProgressHistoryDto> listData = lecturerProgressHistoryService.getLecturerProgressHistoryByFaculty(idFaculty);
            return new Gson().toJson(listData);
        } else {
            List<LecturerProgressHistoryDto> listData = lecturerProgressHistoryService.getLecturerProgressHistoryByMajor(idMajor);
            return new Gson().toJson(listData);
        }
    }
}
