package com.bare.detail;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/** Receiver boundary only; pinned-shortcut side effects remain downstream. */
public final class ShortcutPinnedReceiver extends BroadcastReceiver {
    public static final String LOG_TAG="SPR";
    @Override public void onReceive(Context context,Intent intent){ if(context==null||intent==null)return; }
}