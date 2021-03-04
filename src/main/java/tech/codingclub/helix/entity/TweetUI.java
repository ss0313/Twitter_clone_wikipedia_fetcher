package tech.codingclub.helix.entity;

public class TweetUI extends  Tweet{
    public String author_name;
    public String email;
    public TweetUI(Tweet tweet,Member member){
        this.id=tweet.id;
        this.author_id=tweet.author_id;
        this.message=tweet.message;
        this.created_at=tweet.created_at;
        this.author_name=member.name;
        this.email=member.email;
    }

    public TweetUI(){

    }
}
