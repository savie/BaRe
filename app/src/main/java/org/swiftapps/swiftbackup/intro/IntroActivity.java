package org.swiftapps.swiftbackup.intro;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Gravity;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.swiftapps.swiftbackup.home.HomeActivity;

/** Launcher/first-run surface reconstructed from the APK activity contract. */
public final class IntroActivity extends Activity {
    @Override
    protected void onCreate(Bundle state) {
        super.onCreate(state);

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setGravity(Gravity.CENTER);
        root.setPadding(48, 48, 48, 48);

        TextView title = new TextView(this);
        title.setText("Swift Backup");
        title.setTextSize(28);
        title.setGravity(Gravity.CENTER);

        TextView description = new TextView(this);
        description.setText("Reference reconstruction\nBackup and restore your device data.");
        description.setGravity(Gravity.CENTER);
        description.setPadding(0, 24, 0, 24);

        Button start = new Button(this);
        start.setText("Continue");
        start.setOnClickListener(v -> startActivity(new Intent(this, HomeActivity.class)));

        root.addView(title);
        root.addView(description);
        root.addView(start);
        setContentView(root);
    }
}
