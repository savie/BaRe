package com.bare.shortcuts;

import android.content.Intent;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import com.bare.R;
import com.bare.appconfigs.list.ConfigListActivity;
import com.bare.appsquickactions.AppsQuickActionsActivity;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public final class ShortcutsActivity extends AppCompatActivity {
 @Override protected void onCreate(Bundle state){
  super.onCreate(state);
  String id=getIntent().getStringExtra("extra_id");
  if("configs".equals(id)){startActivity(new Intent(this,ConfigListActivity.class));finish();return;}
  if("quick_actions".equals(id)){startActivity(new Intent(this,AppsQuickActionsActivity.class));finish();return;}
  String cmd=getIntent().getStringExtra("cmd");
  if(cmd!=null && !cmd.trim().isEmpty()){
   new MaterialAlertDialogBuilder(this).setTitle(R.string.shortcuts).setMessage(R.string.p3_shortcut_command_boundary).setPositiveButton(R.string.close,(d,w)->finish()).show();
  } else {
   new MaterialAlertDialogBuilder(this).setTitle(R.string.shortcuts).setMessage(R.string.p3_shortcut_missing_boundary).setPositiveButton(R.string.close,(d,w)->finish()).show();
  }
 }
}