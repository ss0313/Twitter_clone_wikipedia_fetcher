package tech.codingclub.helix.entity;

public class Tweet {
    public String message;
    public  Long author_id;
    public Long created_at;
    public Long id;
    public Tweet(String message,Long id,Long created_at,Long author_id ){
        this.id=id;
        this.author_id=author_id;
        this.message=message;
        this.created_at=created_at;
    }
    public  Tweet(){

    }
}
