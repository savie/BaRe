package com.bare.walls;
public final class WallpaperTaskRequest {
 private final int itemCount;
 public WallpaperTaskRequest(int itemCount){this.itemCount=Math.max(0,itemCount);}
 public int getItemCount(){return itemCount;}
}