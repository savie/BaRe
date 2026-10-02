package com.bare.appslist.settings;
import android.content.SharedPreferences;
import java.util.List;
public final class AppSwipeActionsRepository {
    public static final String RIGHT_KEY="app_list_right_swipe_actions";
    public static final String LEFT_KEY="app_list_left_swipe_actions";
    private final SharedPreferences preferences;
    public AppSwipeActionsRepository(SharedPreferences preferences){if(preferences==null)throw new IllegalArgumentException("preferences");this.preferences=preferences;}
    public AppSwipeActions get(boolean right){String raw=preferences.getString(right?RIGHT_KEY:LEFT_KEY,null);return parse(raw,right?new AppSwipeActions(AppSwipeAction.LAUNCH,null):new AppSwipeActions(AppSwipeAction.UNINSTALL,null));}
    public void set(boolean right,AppSwipeActions actions){preferences.edit().putString(right?RIGHT_KEY:LEFT_KEY,serialize(actions)).apply();}
    public void reset(boolean right){preferences.edit().remove(right?RIGHT_KEY:LEFT_KEY).apply();}
    private static String serialize(AppSwipeActions a){if(a==null||a.asList().isEmpty())return "none";StringBuilder b=new StringBuilder();for(AppSwipeAction v:a.asList()){if(b.length()>0)b.append(',');b.append(v.getId());}return b.toString();}
    private static AppSwipeActions parse(String raw,AppSwipeActions fallback){if(raw==null||raw.trim().isEmpty())return fallback;if("none".equals(raw.trim()))return new AppSwipeActions(null,null);String[]p=raw.split(",");java.util.LinkedHashSet<AppSwipeAction>s=new java.util.LinkedHashSet<>();for(String x:p){AppSwipeAction a=AppSwipeAction.fromId(x.trim());if(a!=null)s.add(a);if(s.size()==2)break;}if(s.isEmpty())return fallback;AppSwipeAction[]a=s.toArray(new AppSwipeAction[0]);return new AppSwipeActions(a[0],a.length>1?a[1]:null);}
}