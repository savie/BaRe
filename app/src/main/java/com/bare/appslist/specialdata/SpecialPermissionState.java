package com.bare.appslist.specialdata;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class SpecialPermissionState {
 private final String packageName; private final String token; private final boolean granted;
 public SpecialPermissionState(String packageName,String token,boolean granted){this.packageName=packageName;this.token=token;this.granted=granted;}
 public String getPackageName(){return packageName;} public String getToken(){return token;} public boolean isGranted(){return granted;}
 public boolean isValid(){return packageName!=null&&!packageName.isEmpty()&&token!=null&&!token.isEmpty();}
 public boolean canRestore(boolean privileged){return isValid()&&privileged;}
 public static List<SpecialPermissionState> parseCsv(String packageName,String csv){List<SpecialPermissionState> out=new ArrayList<>();if(csv==null||csv.isEmpty())return out;for(String token:csv.split(",")){String t=token.trim();if(!t.isEmpty())out.add(new SpecialPermissionState(packageName,t,true));}return Collections.unmodifiableList(out);}
}