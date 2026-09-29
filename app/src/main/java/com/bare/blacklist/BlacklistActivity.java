package com.bare.blacklist;

import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.bare.ReferenceActivityBoundary;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public class BlacklistActivity extends ReferenceActivityBoundary {
    @Override protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        LinearLayout shell=(LinearLayout)((ViewGroup)findViewById(android.R.id.content)).getChildAt(0); shell.removeViewAt(1);
        LinearLayout body=new LinearLayout(this); body.setOrientation(LinearLayout.VERTICAL); body.setPadding(32,24,32,24);
        TextView msg=new TextView(this); msg.setText("Apps on the blacklist are excluded from applicable operations."); body.addView(msg);
        Button add=new Button(this); add.setText("Add apps"); add.setOnClickListener(v->new MaterialAlertDialogBuilder(this).setTitle("Add apps").setMessage("App selection data is not connected yet.").setPositiveButton(android.R.string.ok,null).show()); body.addView(add);
        shell.addView(body,new LinearLayout.LayoutParams(-1,0,1));
    }
}