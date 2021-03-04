package tech.codingclub.helix.controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.apache.log4j.Logger;
import org.springframework.http.HttpEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import tech.codingclub.helix.database.GenericDB;
import tech.codingclub.helix.entity.Member;
import tech.codingclub.helix.entity.TimeApi;
import tech.codingclub.helix.entity.WikiResult;
import tech.codingclub.helix.entity.WikipediaDownloader;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.HashMap;

/**
 * User: rishabh
 */
@Controller
@RequestMapping("/")
public class MainController extends BaseController {

    private static Logger logger = Logger.getLogger(MainController.class);

    @RequestMapping(method = RequestMethod.GET, value = "/helloworld")
    public String getQuiz(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        return "hello";
    }
    @RequestMapping(method = RequestMethod.GET, value = "/signup")
    public String signUp(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        return "signup";
    }

     /*@RequestMapping(method = RequestMethod.POST, value = "/signup")
    public

   @ResponseBody
    String signUpData(@RequestBody Member member, HttpServletRequest request, HttpServletResponse response) {
        new GenericDB<Member>().addRow(tech.codingclub.helix.tables.Member.MEMBER,member);
        return "ok";
    }*/

    @RequestMapping(method = RequestMethod.GET, value = "/api/time")
    public @ResponseBody String getTime(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        TimeApi time=new TimeApi(new Date().toString(),new Date().getTime());
        return new Gson().toJson(time);
    }
    @RequestMapping(method = RequestMethod.GET, value = "/api/wiki")
    public @ResponseBody String getWiki(ModelMap modelMap,@RequestParam("country")String Country, HttpServletResponse response, HttpServletRequest request) {
        WikipediaDownloader wikipediaDownloader=new WikipediaDownloader(Country);
        Gson gson=new GsonBuilder().setPrettyPrinting().create();
        String json=gson.toJson(wikipediaDownloader.getResult());
        //System.out.println(json);
        return json;
    }

    @RequestMapping(method = RequestMethod.GET, value = "/api/wiki/html")
    public String getWikiHTML(ModelMap modelMap,@RequestParam("country")String Country, HttpServletResponse response, HttpServletRequest request) {
        WikipediaDownloader wikipediaDownloader=new WikipediaDownloader(Country);
        WikiResult wikiResult= wikipediaDownloader.getResult();
        modelMap.addAttribute("IMAGE",wikiResult.getUrl());
        modelMap.addAttribute("DESCRIPTION",wikiResult.getText_result());
        return "wikiapi";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/handle")
    public
    @ResponseBody
    String handleEncrypt(@RequestBody String data, HttpServletRequest request, HttpServletResponse response) {
        return "ok";
    }


}