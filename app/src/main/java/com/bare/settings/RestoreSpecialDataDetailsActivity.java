package com.bare.settings;

import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.Switch;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.bare.ReferenceActivityBoundary;

public class RestoreSpecialDataDetailsActivity extends ReferenceActivityBoundary {
    @Override protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        LinearLayout shell=(LinearLayout)((ViewGroup)findViewById(android.R.id.content)).getChildAt(0); shell.removeViewAt(1);
        LinearLayout body=new LinearLayout(this); body.setOrientation(LinearLayout.VERTICAL); body.setPadding(32,24,32,24);
        TextView title=new TextView(this); title.setText("Restore special data"); body.addView(title);
        Switch permissions=new Switch(this); permissions.setText("Restore special permissions"); permissions.setChecked(getIntent().getBooleanExtra("restore_special_permissions",false)); body.addView(permissions);
        TextView note=new TextView(this); note.setText("Reference returns the updated ConfigSettings parcelable. P3 keeps the switch interactive; privileged execution is P4."); body.addView(note);
        Button done=new Button(this); done.setText("Done"); done.setOnClickListener(v->{setResult(RESULT_OK,new android.content.Intent().putExtra("restore_special_permissions",permissions.isChecked()));finish();}); body.addView(done);
        shell.addView(body,new LinearLayout.LayoutParams(-1,0,1));
    }
}