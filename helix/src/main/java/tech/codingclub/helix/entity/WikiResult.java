package tech.codingclub.helix.entity;

public class WikiResult {
    public WikiResult(String query,String t,String url) {
        this.query = query;
        this.text_result=t;
        this.url=url;
    }
    public WikiResult(){

    }
    private String query;
    private String text_result;
    private String url;

    public String getUrl() {
        return url;
    }

    public String getQuery() {
        return query;
    }

    public String getText_result() {
        return text_result;
    }
}
