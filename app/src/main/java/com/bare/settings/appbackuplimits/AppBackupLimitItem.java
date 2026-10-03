package com.bare.settings.appbackuplimits;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

public final class AppBackupLimitItem implements Parcelable {
    public static final Creator<AppBackupLimitItem> CREATOR=new Creator<AppBackupLimitItem>(){
        @Override public AppBackupLimitItem createFromParcel(Parcel in){return new AppBackupLimitItem(in);}
        @Override public AppBackupLimitItem[] newArray(int n){return new AppBackupLimitItem[n];}
    };
    public final String part;
    public final Long localLimitMBs,cloudLimitMBs;
    public AppBackupLimitItem(){this("DATA",null,null);}
    public AppBackupLimitItem(String part,Long localLimitMBs,Long cloudLimitMBs){
        if(part==null)throw new IllegalArgumentException("part");
        this.part=normalizePart(part);this.localLimitMBs=normalize(localLimitMBs);this.cloudLimitMBs=normalize(cloudLimitMBs);
    }
    private static String normalizePart(String p){String x=p.trim().toUpperCase(java.util.Locale.ROOT);return "EXTERNAL_DATA".equals(x)?"EXTDATA":x;}
    private static Long normalize(Long v){return v==null||v<=0?null:v;}
    public String getPart(){return part;}
    public Long getLocalLimitMBs(){return localLimitMBs;}
    public Long getCloudLimitMBs(){return cloudLimitMBs;}
    public long getLocalLimitBytes(){return localLimitMBs==null?0:localLimitMBs*1048576L;}
    public long getCloudLimitBytes(){return cloudLimitMBs==null?0:cloudLimitMBs*1048576L;}
    public boolean hasLimits(){return localLimitMBs!=null||cloudLimitMBs!=null;}
    public boolean isValid(){return part.length()>0&&("DATA".equals(part)||"EXTDATA".equals(part)||"MEDIA".equals(part)||"EXPANSION".equals(part));}
    public String getItemId(){return part;}
    public AppBackupLimitItem copy(String p,Long local,Long cloud){return new AppBackupLimitItem(p,local,cloud);}
    public static ArrayList<AppBackupLimitItem> defaultItems(){ArrayList<AppBackupLimitItem> out=new ArrayList<>();out.add(new AppBackupLimitItem("DATA",null,null));out.add(new AppBackupLimitItem("EXTDATA",null,null));out.add(new AppBackupLimitItem("MEDIA",null,null));out.add(new AppBackupLimitItem("EXPANSION",null,null));return out;}
    private AppBackupLimitItem(Parcel in){part=in.readString();localLimitMBs=in.readByte()==0?null:in.readLong();cloudLimitMBs=in.readByte()==0?null:in.readLong();}
    @Override public int describeContents(){return 0;}
    @Override public void writeToParcel(Parcel out,int flags){out.writeString(part);if(localLimitMBs==null)out.writeByte((byte)0);else{out.writeByte((byte)1);out.writeLong(localLimitMBs);}if(cloudLimitMBs==null)out.writeByte((byte)0);else{out.writeByte((byte)1);out.writeLong(cloudLimitMBs);}}
}