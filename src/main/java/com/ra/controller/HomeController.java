package com.ra.controller;

import com.ra.model.entity.Acccount;
import com.ra.model.entity.Student;
import com.ra.model.service.StudentService;
import com.ra.model.service.StudentServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class HomeController {
    StudentService studentService = new StudentServiceImpl();
    @RequestMapping("/")
    public String home(){
        return "home";
    }

    @RequestMapping("/student")
    public String studentpage(Model model){
        List<Student> students = studentService.findAll();
        model.addAttribute("students", students);
        return "student";
    }
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginG(Model model){
        Acccount ac = new Acccount();
        model.addAttribute("account", ac);
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String loginP(@ModelAttribute("account") Acccount ac) {
        System.out.println(ac.getEmail());
        System.out.println(ac.getPassword());
        return "home";
    }

}
