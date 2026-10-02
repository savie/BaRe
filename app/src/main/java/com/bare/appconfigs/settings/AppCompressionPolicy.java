package com.bare.appconfigs.settings;

public final class AppCompressionPolicy {
    public enum Level {
        NO_COMPRESSION(0), FASTEST(1), FAST(3), NORMAL(5), MAXIMUM(7), ULTRA(9);
        private final int value;
        Level(int value){this.value=value;}
        public int getValue(){return value;}
        public static Level fromValue(Integer value){
            if(value!=null) for(Level level:values()) if(level.value==value.intValue()) return level;
            return null;
        }
    }

    private Integer value;
    public AppCompressionPolicy(Integer value){this.value=value;}
    public Integer getValue(){return value;}
    public void setValue(Integer value){this.value=value;}
    public Level getEffectiveLevel(){
        Level level=Level.fromValue(value);
        return level==null ? Level.FASTEST : level;
    }
}