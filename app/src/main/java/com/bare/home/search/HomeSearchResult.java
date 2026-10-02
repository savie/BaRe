package com.bare.home.search;
import java.util.Collections;
import java.util.List;
public final class HomeSearchResult {
    private final String id;
    private final HomeSearchSection section;
    private final String title;
    private final String subtitle;
    private final List<String> searchableText;
    private final int displayOrder;
    public HomeSearchResult(String id, HomeSearchSection section, String title, String subtitle, List<String> searchableText, int displayOrder){
        if(id==null||section==null||title==null||searchableText==null)throw new IllegalArgumentException();
        this.id=id;this.section=section;this.title=title;this.subtitle=subtitle;this.searchableText=Collections.unmodifiableList(searchableText);this.displayOrder=displayOrder;
    }
    public String getId(){return id;} public HomeSearchSection getSection(){return section;} public String getTitle(){return title;} public String getSubtitle(){return subtitle;} public List<String> getSearchableText(){return searchableText;} public int getDisplayOrder(){return displayOrder;}
}