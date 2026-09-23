package org.swiftapps.swiftbackup.folders;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;

public final class FoldersActivity extends Activity {
    @Override protected void onCreate(Bundle state) {
        super.onCreate(state);
        TextView view = new TextView(this);
        view.setPadding(32, 32, 32, 32);
        view.setText("Folders\n\nFolder backup and restore surface identified from the reference APK.");
        view.setTextSize(20);
        setContentView(view);
    }
}
