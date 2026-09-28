package com.bare.tasks;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

/** Reference service skeleton; execution behavior remains evidence-bound. */
public class TaskService extends Service {
    @Override public IBinder onBind(Intent intent) { return null; }
}
