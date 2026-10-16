package com.gun0912.tedpermission.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;

/**
 * Compatibility provider retained from the SwiftBackup 5.1.0 (620) reference.
 * The reference APK declares this class in its manifest and uses it to retain
 * the application Context for TedPermission.
 */
public final class TedPermissionProvider extends ContentProvider {
    public static Context a;

    @Override
    public boolean onCreate() {
        a = getContext();
        return false;
    }

    @Override
    public Cursor query(Uri uri, String[] projection, String selection,
                        String[] selectionArgs, String sortOrder) {
        return null;
    }

    @Override
    public String getType(Uri uri) {
        return null;
    }

    @Override
    public Uri insert(Uri uri, ContentValues values) {
        return null;
    }

    @Override
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        return 0;
    }

    @Override
    public int update(Uri uri, ContentValues values, String selection,
                      String[] selectionArgs) {
        return 0;
    }
}
