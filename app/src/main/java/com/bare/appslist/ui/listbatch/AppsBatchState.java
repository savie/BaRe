package com.bare.appslist.ui.listbatch;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
public final class AppsBatchState {
    private final List<String> selectedPackageNames;
    private final String action;
    public AppsBatchState(List<String> selectedPackageNames,String action){
        this.selectedPackageNames=selectedPackageNames==null?Collections.emptyList():Collections.unmodifiableList(new ArrayList<>(selectedPackageNames));
        this.action=action;
    }
    public List<String> getSelectedPackageNames(){return selectedPackageNames;}
    public String getAction(){return action;}
    public boolean isEmpty(){return selectedPackageNames.isEmpty();}
}