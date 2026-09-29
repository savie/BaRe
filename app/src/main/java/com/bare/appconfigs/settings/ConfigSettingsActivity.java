package com.bare.appconfigs.settings;

import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.Switch;
import androidx.annotation.Nullable;
import com.bare.ReferenceActivityBoundary;

public class ConfigSettingsActivity extends ReferenceActivityBoundary {
    @Override protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        LinearLayout shell=(LinearLayout)((ViewGroup)findViewById(android.R.id.content)).getChildAt(0); shell.removeViewAt(1);
        LinearLayout body=new LinearLayout(this); body.setOrientation(LinearLayout.VERTICAL); body.setPadding(32,24,32,24);
        Switch apps=new Switch(this); apps.setText("Include apps"); body.addView(apps);
        Switch data=new Switch(this); data.setText("Include app data"); body.addView(data);
        Button done=new Button(this); done.setText("Done"); done.setOnClickListener(v->finish()); body.addView(done);
        shell.addView(body,new LinearLayout.LayoutParams(-1,0,1));
    }
}