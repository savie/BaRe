package com.bare.messagescalls.defaulthandler;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

/** Reference RESPOND_VIA_MESSAGE endpoint. */
public final class HeadlessSmsSendService extends Service {
    @Override
    public final IBinder onBind(Intent intent) {
        if (intent == null) throw new NullPointerException("intent");
        return null;
    }
}
