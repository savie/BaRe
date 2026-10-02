package com.bare.walls;
public final class WallpaperSelection {
 private final String id; private final boolean home,lock;
 public WallpaperSelection(String id,boolean home,boolean lock){this.id=id;this.home=home;this.lock=lock;}
 public String getId(){return id;} public boolean isHome(){return home;} public boolean isLock(){return lock;}
}