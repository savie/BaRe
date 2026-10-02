package com.bare.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

import com.bare.BaReApp;

public final class LocaleChangedReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        if (!Intent.ACTION_LOCALE_CHANGED.equals(intent.getAction())) {
            return;
        }

        Context application = context.getApplicationContext();
        if (application instanceof BaReApp) {
            ((BaReApp) application).refreshLocalizedNotificationChannels();
        }
    }
}
