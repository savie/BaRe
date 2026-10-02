package com.bare.home.search;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
public final class HomeSearchEngine {
    public List<HomeSearchResult> filter(List<HomeSearchResult> source,String query){
        if(source==null)return new ArrayList<>();
        String q=query==null?"":query.trim().toLowerCase(Locale.ROOT);
        ArrayList<HomeSearchResult> out=new ArrayList<>();
        for(HomeSearchResult r:source){
            boolean match=q.isEmpty();
            if(!match) for(String text:r.getSearchableText()) if(text!=null&&text.toLowerCase(Locale.ROOT).contains(q)){match=true;break;}
            if(match)out.add(r);
        }
        out.sort(Comparator.comparingInt(HomeSearchResult::getDisplayOrder).thenComparing(HomeSearchResult::getTitle,String.CASE_INSENSITIVE_ORDER));
        return out;
    }
}