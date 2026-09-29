package com.bare.cloud.diagnostics;

import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.bare.ReferenceActivityBoundary;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public class CloudDiagnosticsActivity extends ReferenceActivityBoundary {
    @Override protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        LinearLayout shell=(LinearLayout)((ViewGroup)findViewById(android.R.id.content)).getChildAt(0); shell.removeViewAt(1);
        LinearLayout body=new LinearLayout(this); body.setOrientation(LinearLayout.VERTICAL); body.setPadding(32,24,32,24);
        TextView stateView=new TextView(this); stateView.setText("Cloud diagnostics"); body.addView(stateView);
        String[] actions={"Check connection","Test cloud listing","Test upload","Test download","Refresh diagnostics"};
        for(String action:actions){Button b=new Button(this); b.setText(action); b.setOnClickListener(v->new MaterialAlertDialogBuilder(this).setTitle(action).setMessage("Diagnostic engine is a P4 boundary.").setPositiveButton(android.R.string.ok,null).show()); body.addView(b);}
        shell.addView(body,new LinearLayout.LayoutParams(-1,0,1));
    }
}