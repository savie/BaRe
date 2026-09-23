package org.swiftapps.swiftbackup.messagescalls;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;

public final class MessagesCallsActivity extends Activity {
    @Override protected void onCreate(Bundle state) {
        super.onCreate(state);
        TextView view = new TextView(this);
        view.setPadding(32, 32, 32, 32);
        view.setText("Messages & Calls\n\nSMS, MMS and call-log backup surfaces identified from the reference APK.");
        view.setTextSize(20);
        setContentView(view);
    }
}
