package com.bare.appconfigs.edit;

import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.bare.ReferenceActivityBoundary;

public class ConfigEditActivity extends ReferenceActivityBoundary {
    @Override protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        LinearLayout shell=(LinearLayout)((ViewGroup)findViewById(android.R.id.content)).getChildAt(0); shell.removeViewAt(1);
        LinearLayout body=new LinearLayout(this); body.setOrientation(LinearLayout.VERTICAL); body.setPadding(32,24,32,24);
        EditText name=new EditText(this); name.setHint("Configuration name"); body.addView(name,new LinearLayout.LayoutParams(-1,-2));
        TextView note=new TextView(this); note.setText("Configuration options are reconstructed in P3; execution remains P4."); body.addView(note);
        Button manage=new Button(this); manage.setText("Configuration settings"); manage.setOnClickListener(v->startActivity(new android.content.Intent(this,com.bare.appconfigs.settings.ConfigSettingsActivity.class))); body.addView(manage);
        Button save=new Button(this); save.setText("Save"); save.setOnClickListener(v->new com.google.android.material.dialog.MaterialAlertDialogBuilder(this).setMessage("Configuration persistence is a P4 boundary.").setPositiveButton(android.R.string.ok,null).show()); body.addView(save);
        shell.addView(body,new LinearLayout.LayoutParams(-1,0,1));
    }
}