package com.bare.messagescalls.conversations;

public final class SmsMessageState {
    private final String address;
    private final String body;
    private final long date;
    private final boolean incoming;

    public SmsMessageState(String address,String body,long date,boolean incoming){
        this.address=address; this.body=body; this.date=Math.max(0,date); this.incoming=incoming;
    }
    public String getAddress(){return address;}
    public String getBody(){return body;}
    public long getDate(){return date;}
    public boolean isIncoming(){return incoming;}
}
