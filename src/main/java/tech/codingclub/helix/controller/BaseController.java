package tech.codingclub.helix.controller;


import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by rishabh.
 * Handle errors if code breaks
 */
public class BaseController {
    @ExceptionHandler
    public
    //@ResponseBody
    String defaultErrorHandler(HttpServletRequest req,  Exception e) throws Exception {
        System.out.println(e.getMessage());
        //modelMap.addAttribute("MESSAGE","Something went wrong");
        return "alien";
    }
}
