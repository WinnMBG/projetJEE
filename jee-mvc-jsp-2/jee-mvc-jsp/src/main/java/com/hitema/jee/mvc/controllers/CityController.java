package com.hitema.jee.mvc.controllers;

import com.hitema.jee.mvc.entities.City;
import com.hitema.jee.mvc.entities.Country;
import com.hitema.jee.mvc.services.CityService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.List;

@Controller
public class CityController {

    public static String UPLOAD_DIRECTORY = System.getProperty("user.dir") + "/static/images";

    private static final Logger log = LoggerFactory.getLogger(CityController.class);

    private CityService service;

    public CityController(CityService service) {
        this.service = service;
    }

    @GetMapping("/cities")
    public ModelAndView getAll(){
        log.trace("Cities Get All called ...");
        var view = new ModelAndView();
        view.addObject("mmsg","autres attribut");
        view.addObject("cities",service.readAll());
        return view;
    }

    @GetMapping("/city/{id}")
    public ModelAndView getCityInfos(@PathVariable("id") Long id) {
        log.trace("City Informations");
        City city = service.read(id);
        log.trace("Infos de la Ville : {}", city);
        return new ModelAndView("cityInfos","city",city);
    }

    @PostMapping(value = "/city/{id}")
    public ModelAndView cityModify(@RequestParam("image") MultipartFile file, @PathVariable("id") Long id) throws IOException {
        log.info("Images infos : {}", file.getBytes());
        City city = service.read(id);
        log.trace("Infos de la Ville : {}", city);
        city.setData(file.getBytes());
        service.create(city);
        return new ModelAndView("cityInfos","city",city);
    }
}
