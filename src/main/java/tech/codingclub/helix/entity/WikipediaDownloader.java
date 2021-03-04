package tech.codingclub.helix.entity;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

public class WikipediaDownloader {

    private String keyword;

    public WikipediaDownloader(){};

    public WikipediaDownloader(String keyword) {
        this.keyword = keyword;
    }

    public WikiResult getResult() {

        //1. get clean keyword
        //2. get the URL
        //3. make a GET request
        //4. parsing the useful results using jsoup
        //5. shoeing result

        if(keyword == null || keyword.length() == 0){
            return null;
        }

        // trim() for removing all spaces at start, end
        // replaceAll() for replacing spaces in between words with "_", [] for multiple spaces(regex)
        keyword = keyword.trim().replaceAll("[ ]", "_");

        String wikiUrl = "https://en.m.wikipedia.org/wiki/" + keyword;

        System.out.println(wikiUrl);
        String response = "";
        String imageUrl = "";
        try {

            String wikipediaResponseHTML = HttpURLConnectionExample.sendGet(wikiUrl);
//            System.out.println(wikipediaResponseHTML);

            // step 4
            Document document = Jsoup.parse(wikipediaResponseHTML, "https://en.wikipedia.org/wiki/Wikipedia");

//            Elements childElements = document.body().select(".mw-parser-output > *");
//            int state = 0;
//            for(Element childElement : childElements){
//                if(state == 0){
//                    if(childElement.tagName().equals("table")){
//                        state = 1;
//                    }
//                }else if(state == 1){
//                    if(childElement.tagName().equals("p")){
//                        state = 2;
//                        response = childElement.text();
//                        break;
//                    }
//                }
//            }

            response = document.body().select(".mw-parser-output p").get(2).text();

            try{
                imageUrl = document.body().select(".infobox img").get(0).attr("src");
            }catch(Exception e){
                e.printStackTrace();
            }


        } catch (Exception e) {
            e.printStackTrace();
        }

        // clean image url
        if(imageUrl.startsWith("//")){
            imageUrl = "http:" + imageUrl;
        }

        WikiResult wikiResult = new WikiResult(this.keyword, response, imageUrl);
//        Gson gson = new GsonBuilder().setPrettyPrinting().create();
//        return gson.toJson(wikiResult);
        return wikiResult;


    }

}
