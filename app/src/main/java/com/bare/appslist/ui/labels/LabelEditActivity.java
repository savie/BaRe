package com.bare.appslist.ui.labels;

import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.bare.ReferenceActivityBoundary;

public class LabelEditActivity extends ReferenceActivityBoundary {
    @Override protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        LinearLayout shell=(LinearLayout)((ViewGroup)findViewById(android.R.id.content)).getChildAt(0); shell.removeViewAt(1);
        LinearLayout body=new LinearLayout(this); body.setOrientation(LinearLayout.VERTICAL); body.setPadding(32,24,32,24);
        EditText name=new EditText(this); name.setHint("Label name"); body.addView(name);
        TextView note=new TextView(this); note.setText("Label assignment/color persistence remains evidence-bound."); body.addView(note);
        Button save=new Button(this); save.setText("Save"); save.setOnClickListener(v->finish()); body.addView(save);
        shell.addView(body,new LinearLayout.LayoutParams(-1,0,1));
    }
}