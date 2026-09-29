package com.bare.folders.ui;
import android.content.Intent;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.bare.ReferenceActivityBoundary;
import com.bare.folders.ui.batch.FoldersBatchActivity;
public class FoldersDashActivity extends ReferenceActivityBoundary {
 @Override protected void onCreate(@Nullable Bundle state) {
  super.onCreate(state);
  LinearLayout shell=(LinearLayout)((ViewGroup)findViewById(android.R.id.content)).getChildAt(0); shell.removeViewAt(1);
  LinearLayout body=new LinearLayout(this); body.setOrientation(LinearLayout.VERTICAL); body.setPadding(32,24,32,24);
  TextView tabs=new TextView(this); tabs.setText("From device    |    From cloud"); body.addView(tabs);
  TextView empty=new TextView(this); empty.setText("Folder setups"); body.addView(empty);
  Button batch=new Button(this); batch.setText("Manage folders"); batch.setOnClickListener(v->startActivity(new Intent(this,FoldersBatchActivity.class))); body.addView(batch);
  Button picker=new Button(this); picker.setText("Add folder"); picker.setOnClickListener(v->startActivity(new Intent(this,FolderPickerActivity.class))); body.addView(picker);
  shell.addView(body,new LinearLayout.LayoutParams(-1,0,1));
 }
}