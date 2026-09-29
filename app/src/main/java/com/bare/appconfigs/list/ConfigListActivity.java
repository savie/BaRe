package com.bare.appconfigs.list;

import android.content.Intent;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.bare.ReferenceActivityBoundary;
import com.bare.R;
import com.bare.appconfigs.edit.ConfigEditActivity;
import com.bare.appconfigs.settings.ConfigSettingsActivity;
import com.bare.appslist.ui.labels.LabelsActivity;

public class ConfigListActivity extends ReferenceActivityBoundary {
    @Override protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        LinearLayout shell=(LinearLayout)((ViewGroup)findViewById(android.R.id.content)).getChildAt(0);
        shell.removeViewAt(1);
        LinearLayout body=new LinearLayout(this); body.setOrientation(LinearLayout.VERTICAL); body.setPadding(32,24,32,24);
        TextView desc=new TextView(this); desc.setText("Custom configurations"); body.addView(desc);
        Button create=new Button(this); create.setText(R.string.new_config); create.setOnClickListener(v->startActivity(new Intent(this,ConfigEditActivity.class))); body.addView(create);
        Button labels=new Button(this); labels.setText("Manage labels"); labels.setOnClickListener(v->startActivity(new Intent(this,LabelsActivity.class).putExtra("labels_activity_mode",0))); body.addView(labels);
        Button settings=new Button(this); settings.setText(R.string.settings); settings.setOnClickListener(v->startActivity(new Intent(this,ConfigSettingsActivity.class))); body.addView(settings);
        shell.addView(body,new LinearLayout.LayoutParams(-1,0,1));
    }
}