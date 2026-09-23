package org.swiftapps.swiftbackup.detail;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;

public final class DetailActivity extends Activity {
    @Override protected void onCreate(Bundle state) {
        super.onCreate(state);
        String item = getIntent().getStringExtra("item");
        TextView view = new TextView(this);
        view.setPadding(32, 32, 32, 32);
        view.setText("Item detail\n\n" + (item == null ? "Unknown item" : item));
        view.setTextSize(20);
        setContentView(view);
    }
}
