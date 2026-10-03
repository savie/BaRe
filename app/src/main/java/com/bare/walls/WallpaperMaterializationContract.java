package com.bare.walls;
import java.io.File;
public final class WallpaperMaterializationContract {public static final String HOME="home_wall.wal",LOCK="lock_wall.wal";public boolean reusable(File f,long expected){return f!=null&&f.isFile()&&expected>0&&f.length()==expected;}public File target(File root,boolean lock){return new File(root,lock?LOCK:HOME);}public boolean usableSource(File f){return f!=null&&f.isFile()&&f.length()>0;}}
