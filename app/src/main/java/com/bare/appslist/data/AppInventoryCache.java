package com.bare.appslist.data;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.ArrayList;
import java.util.List;

/** F83 local app_cached_data persistence/refresh boundary. */
public final class AppInventoryCache {
    private final AppInventoryRepository repository=new AppInventoryRepository();
    private final Db db;
    public AppInventoryCache(){db=null;}
    public AppInventoryCache(Context context){db=new Db(context.getApplicationContext());}

    public synchronized void refresh(List<AppInventoryItem> items){repository.replace(items);if(db!=null){SQLiteDatabase w=db.getWritableDatabase();w.beginTransaction();try{w.delete("app_cached_data",null,null);if(items!=null)for(AppInventoryItem a:items){ContentValues v=new ContentValues();v.put("pkgName",a.packageName);v.put("name",a.name);v.put("isInstalled",a.installed?1:0);v.put("isEnabled",a.enabled?1:0);v.put("isLaunchable",a.launchable?1:0);w.insertWithOnConflict("app_cached_data",null,v,SQLiteDatabase.CONFLICT_REPLACE);}w.setTransactionSuccessful();}finally{w.endTransaction();}}}
    public synchronized List<AppInventoryItem> read(){if(db==null)return new ArrayList<>(repository.list());List<AppInventoryItem> out=new ArrayList<>();Cursor c=db.getReadableDatabase().query("app_cached_data",new String[]{"pkgName","name","isInstalled","isEnabled","isLaunchable","locale"},null,null,null,null,"name COLLATE NOCASE");try{while(c.moveToNext()){out.add(new AppInventoryItem(c.getString(0),c.getString(1),null,null,c.isNull(3)||c.getInt(3)!=0,c.isNull(4)||c.getInt(4)!=0,false,c.isNull(2)||c.getInt(2)!=0,false,false));}}finally{c.close();}repository.replace(out);return out;}
    public synchronized void replaceFromPackageManager(List<AppInventoryItem> items){refresh(items);}
    private static final class Db extends SQLiteOpenHelper{
        Db(Context c){super(c,"bare-db",null,1);}
        @Override public void onCreate(SQLiteDatabase d){d.execSQL("CREATE TABLE IF NOT EXISTS app_cached_data (pkgName TEXT NOT NULL,name TEXT NOT NULL,isInstalled INTEGER,isEnabled INTEGER,isLaunchable INTEGER,locale TEXT,PRIMARY KEY(pkgName))");}
        @Override public void onUpgrade(SQLiteDatabase d,int oldVersion,int newVersion){onCreate(d);}
    }
}