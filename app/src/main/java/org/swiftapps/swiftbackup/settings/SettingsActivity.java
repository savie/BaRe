package org.swiftapps.swiftbackup.settings;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;

public final class SettingsActivity extends Activity {
    @Override protected void onCreate(Bundle state) {
        super.onCreate(state);
        TextView view = new TextView(this);
        view.setPadding(32, 32, 32, 32);
        view.setText("Settings\n\nConfiguration surface identified from the reference APK.");
        view.setTextSize(20);
        setContentView(view);
    }
}
