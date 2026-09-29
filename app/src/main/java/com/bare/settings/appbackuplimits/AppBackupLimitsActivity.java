package com.bare.settings.appbackuplimits;

import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.bare.ReferenceActivityBoundary;

public class AppBackupLimitsActivity extends ReferenceActivityBoundary {
    @Override protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        LinearLayout shell=(LinearLayout)((ViewGroup)findViewById(android.R.id.content)).getChildAt(0); shell.removeViewAt(1);
        LinearLayout body=new LinearLayout(this); body.setOrientation(LinearLayout.VERTICAL); body.setPadding(32,24,32,24);
        TextView title=new TextView(this); title.setText("Per-app backup limits"); body.addView(title);
        EditText local=new EditText(this); local.setHint("Local backup limit (MB)"); local.setInputType(2); body.addView(local);
        EditText cloud=new EditText(this); cloud.setHint("Cloud backup limit (MB)"); cloud.setInputType(2); body.addView(cloud);
        TextView note=new TextView(this); note.setText("Reference uses local/cloud MB limits per app. Result persistence remains P4."); body.addView(note);
        Button done=new Button(this); done.setText("Done"); done.setOnClickListener(v->finish()); body.addView(done);
        shell.addView(body,new LinearLayout.LayoutParams(-1,0,1));
    }
}