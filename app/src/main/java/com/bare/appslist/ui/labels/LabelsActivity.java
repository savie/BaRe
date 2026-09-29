package com.bare.appslist.ui.labels;

import android.content.Intent;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.bare.ReferenceActivityBoundary;

public class LabelsActivity extends ReferenceActivityBoundary {
    @Override protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        LinearLayout shell=(LinearLayout)((ViewGroup)findViewById(android.R.id.content)).getChildAt(0); shell.removeViewAt(1);
        LinearLayout body=new LinearLayout(this); body.setOrientation(LinearLayout.VERTICAL); body.setPadding(32,24,32,24);
        TextView empty=new TextView(this); empty.setText("Create and manage app labels."); body.addView(empty);
        Button create=new Button(this); create.setText("Create new label"); create.setOnClickListener(v->startActivity(new Intent(this,LabelEditActivity.class))); body.addView(create);
        shell.addView(body,new LinearLayout.LayoutParams(-1,0,1));
    }
}