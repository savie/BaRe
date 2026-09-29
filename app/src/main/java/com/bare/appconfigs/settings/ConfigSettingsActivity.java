package com.bare.appconfigs.settings;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public final class ConfigSettingsActivity extends AppCompatActivity {
 @Override protected void onCreate(Bundle state){
  super.onCreate(state);setContentView(R.layout.config_settings_activity);
  Toolbar t=findViewById(R.id.toolbar);if(t!=null){setSupportActionBar(t);t.setNavigationOnClickListener(v->finish());}
  if(state==null)((android.widget.TextView)findViewById(R.id.tv_labels)).setText(R.string.config_labels_pending);
 }
 @Override public boolean onCreateOptionsMenu(Menu m){getMenuInflater().inflate(R.menu.menu_config_settings,m);return true;}
 @Override public boolean onOptionsItemSelected(MenuItem i){
  if(i.getItemId()==R.id.action_delete){new MaterialAlertDialogBuilder(this).setTitle(R.string.delete).setMessage(R.string.delete_config_settings).setPositiveButton(R.string.close,null).show();return true;}
  return super.onOptionsItemSelected(i);
 }
}