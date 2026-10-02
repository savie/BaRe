package com.bare.home.search;
public final class HomeSearchLimits {
    private HomeSearchLimits(){}
    public static int limit(HomeSearchSection section, boolean emptyQuery){
        if(emptyQuery){
            switch(section){case SHORTCUTS:return 8;case APPS:return 2;case FOLDERS:return 2;case QUICK_ACTIONS:return 2;default:return 0;}
        }
        switch(section){case SHORTCUTS:return 4;case APPS:return 16;case FOLDERS:return 8;case QUICK_ACTIONS:return Integer.MAX_VALUE;default:return 0;}
    }
}