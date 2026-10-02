package com.bare.home.data;
public final class HomeState {
    private final int selectedDestination;
    private final boolean compactStorageInfo;
    public HomeState(int selectedDestination, boolean compactStorageInfo){this.selectedDestination=selectedDestination;this.compactStorageInfo=compactStorageInfo;}
    public int getSelectedDestination(){return selectedDestination;}
    public boolean isCompactStorageInfo(){return compactStorageInfo;}
}