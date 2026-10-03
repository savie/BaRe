package com.bare.shortcuts;

import android.content.Intent;
import android.os.Bundle;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.graphics.drawable.Icon;
import android.app.PendingIntent;
import androidx.appcompat.app.AppCompatActivity;
import com.bare.R;
import com.bare.appconfigs.list.ConfigListActivity;
import com.bare.appsquickactions.AppsQuickActionsActivity;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public final class ShortcutsActivity extends AppCompatActivity {
 public static Intent detailShortcutIntent(android.content.Context context,String packageName){return com.bare.detail.ShortcutPinnedReceiver.detailLaunch(context,packageName);}
 public static final class PinRequest { public final String id,packageName; public PinRequest(String i,String p){id=i;packageName=p;} }
 @Override protected void onCreate(Bundle state){
  super.onCreate(state);
  String id=getIntent().getStringExtra("extra_id");
  if("configs".equals(id)){startActivity(new Intent(this,ConfigListActivity.class));finish();return;}
  if("quick_actions".equals(id)){startActivity(new Intent(this,AppsQuickActionsActivity.class));finish();return;}
  String cmd=getIntent().getStringExtra("cmd");
  if("pin_detail".equals(cmd)){String pkg=getIntent().getStringExtra("package_name");if(pkg!=null&&android.os.Build.VERSION.SDK_INT>=26){ShortcutManager sm=getSystemService(ShortcutManager.class);ShortcutInfo info=new ShortcutInfo.Builder(this,"detail:"+pkg).setShortLabel(pkg).setIntent(detailShortcutIntent(this,pkg)).build();if(sm!=null&&sm.isRequestPinShortcutSupported())sm.requestPinShortcut(info,null);}finish();return;}
  if(cmd!=null && !cmd.trim().isEmpty()){
   new MaterialAlertDialogBuilder(this).setTitle(R.string.shortcuts).setMessage(R.string.p3_shortcut_command_boundary).setPositiveButton(R.string.close,(d,w)->finish()).show();
  } else {
   new MaterialAlertDialogBuilder(this).setTitle(R.string.shortcuts).setMessage(R.string.p3_shortcut_missing_boundary).setPositiveButton(R.string.close,(d,w)->finish()).show();
  }
 }
}