package com.bare.shortcuts;
public final class ShortcutRequest {
    private final String extraId; private final String command;
    public ShortcutRequest(String extraId,String command){this.extraId=extraId;this.command=command;}
    public String getExtraId(){return extraId;} public String getCommand(){return command;}
    public boolean isConfigs(){return "configs".equals(extraId);} public boolean isQuickActions(){return "quick_actions".equals(extraId);}
}