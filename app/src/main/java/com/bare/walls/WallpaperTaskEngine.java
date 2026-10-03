package com.bare.walls;

/** F82 static wallpaper task decision boundary; WallpaperManager/file I/O stays downstream. */
public final class WallpaperTaskEngine {
    public enum Decision { READY, NO_DATA }

    public Decision plan(WallpaperTaskRequest request) {
        if (request == null) throw new NullPointerException("request");
        return request.getItemCount() == 0 ? Decision.NO_DATA : Decision.READY;
    }
}
