package org.swiftapps.swiftbackup.home;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.swiftapps.swiftbackup.appslist.AppListActivity;
import org.swiftapps.swiftbackup.folders.FoldersActivity;
import org.swiftapps.swiftbackup.messagescalls.MessagesCallsActivity;
import org.swiftapps.swiftbackup.settings.SettingsActivity;

/** Main dashboard reconstructed from the observed activity contract. */
public final class HomeActivity extends Activity {
    @Override protected void onCreate(Bundle state) {
        super.onCreate(state);
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(32, 32, 32, 32);

        TextView title = new TextView(this);
        title.setText("Swift Backup");
        title.setTextSize(26);
        root.addView(title);
        root.addView(action("Apps", AppListActivity.class));
        root.addView(action("Folders", FoldersActivity.class));
        root.addView(action("Messages & Calls", MessagesCallsActivity.class));
        root.addView(action("Settings", SettingsActivity.class));
        setContentView(root);
    }

    private View action(String label, Class<? extends Activity> target) {
        Button button = new Button(this);
        button.setText(label);
        button.setOnClickListener(v -> startActivity(new Intent(this, target)));
        return button;
    }
}
