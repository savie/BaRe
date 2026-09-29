package com.bare.cloud.connect.common;

import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.bare.ReferenceActivityBoundary;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public class CloudConnectActivity extends ReferenceActivityBoundary {
    @Override protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        LinearLayout shell=(LinearLayout)((ViewGroup)findViewById(android.R.id.content)).getChildAt(0); shell.removeViewAt(1);
        LinearLayout body=new LinearLayout(this); body.setOrientation(LinearLayout.VERTICAL); body.setPadding(32,24,32,24);
        TextView title=new TextView(this); title.setText("Connect cloud storage"); body.addView(title);
        String[] providers={"Google Drive","Dropbox","OneDrive","Box","pCloud","MEGA","TeraBox","Filen","Yandex"};
        for(String provider:providers){Button b=new Button(this); b.setText(provider); b.setOnClickListener(v->new MaterialAlertDialogBuilder(this).setTitle(provider).setMessage("Provider sign-in flow is a P4 boundary.").setPositiveButton(android.R.string.ok,null).show()); body.addView(b);}
        shell.addView(body,new LinearLayout.LayoutParams(-1,0,1));
    }
}