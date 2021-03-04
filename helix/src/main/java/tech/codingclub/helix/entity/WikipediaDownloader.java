package tech.codingclub.helix.entity;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import tech.codingclub.helix.global.HttpURLConnectionExample;

import java.awt.*;

public class WikipediaDownloader {
    //public static TaskManager taskManager=new TaskManager(20);
    public String keyword;
    //private String result;
    public WikipediaDownloader(){

    }
    public WikipediaDownloader(String s){
        this.keyword=s;
    }


    public WikiResult getResult() {
        if(this.keyword==null||this.keyword.length()==0){
            return null;
        }
        this.keyword=this.keyword.trim().replaceAll("[ ]+","_");
        String wikiUrl=getWikipediaUrlForQuery(this.keyword);
        String response="";
        String imgUrl="";
        try {
            String wikiResponse= HttpURLConnectionExample.sendGet(wikiUrl);
            //System.out.println(wikiResponse);
            Document document= Jsoup.parse(wikiResponse,"https://en.wikipedia.org/wiki/");
            Elements childelements=document.body().select(".mw-parser-output > *");
            int state=0;

            for(Element childElement:childelements){
                if(state==0){
                    if(childElement.tagName().equals("table")){
                        state=1;
                    }
                }else if(state==1){
                    if(childElement.tagName().equals("p")){
                        response=childElement.text();
                        state=2;
                        break;
                    }
                }
                //System.out.println(childElement.tagName());
                try {
                    imgUrl=document.body().select(".infobox img").get(0).attr("src");
                }catch (Exception ex){

                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        //this.result=response;

        if(imgUrl.startsWith("//")){
            imgUrl= "https://"+imgUrl;
        }
        Image image=null;

        WikiResult wikiResult=new WikiResult(this.keyword,response,imgUrl);
        Gson gson=new GsonBuilder().setPrettyPrinting().create();
        String json=gson.toJson(wikiResult);
        System.out.println(json);
        return wikiResult;
        //System.out.println(new Gson().toJson(wikiResult));
    }

    private String getWikipediaUrlForQuery(String cleanKeyword) {
        return "https://en.wikipedia.org/wiki/"+cleanKeyword;
    }
}
