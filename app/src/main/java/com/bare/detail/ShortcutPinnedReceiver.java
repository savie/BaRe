package com.bare.detail;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/** F37/F61 pinned-shortcut result consumer and Detail launch-origin propagation. */
public final class ShortcutPinnedReceiver extends BroadcastReceiver {
    public static final String LOG_TAG="SPR";
    public static final String EXTRA_PINNED="shortcut_pinned";
    public static final String DETAIL_ORIGIN="detail_launched_from_shortcut";
    @Override public void onReceive(Context context,Intent intent){
        if(context==null||intent==null)return;
        String packageName=intent.getStringExtra("package_name");
        android.content.SharedPreferences p=context.getSharedPreferences("shortcuts_v1",Context.MODE_PRIVATE);
        p.edit().putBoolean(EXTRA_PINNED,true).putString("last_package",packageName).apply();
    }
    public static Intent detailLaunch(Context context,String packageName){
        Intent i=new Intent(context,DetailActivity.class);
        i.putExtra(DETAIL_ORIGIN,true);
        if(packageName!=null)i.putExtra("package_name",packageName);
        return i;
    }
}