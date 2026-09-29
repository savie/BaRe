package com.bare.appconfigs.list;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bare.R;
import com.bare.appconfigs.edit.ConfigEditActivity;
import com.bare.appslist.ui.labels.LabelsActivity;
import com.bare.settings.SettingsActivity;
import com.bare.settings.SettingsDetailActivity;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public final class ConfigListActivity extends AppCompatActivity {
 @Override protected void onCreate(Bundle state) {
  super.onCreate(state); setContentView(R.layout.configs_list_activity);
  Toolbar t=findViewById(R.id.toolbar); if(t!=null){setSupportActionBar(t);t.setNavigationOnClickListener(v->finish());}
  RecyclerView rv=findViewById(R.id.recycler_view); rv.setLayoutManager(new LinearLayoutManager(this)); rv.setAdapter(new Adapter());
  findViewById(R.id.btn_create).setOnClickListener(v->startActivity(new Intent(this, ConfigEditActivity.class)));
 }
 @Override public boolean onCreateOptionsMenu(Menu m){getMenuInflater().inflate(R.menu.menu_config_list,m);return true;}
 @Override public boolean onOptionsItemSelected(MenuItem i){
  int id=i.getItemId();
  if(id==R.id.action_sort){new MaterialAlertDialogBuilder(this).setTitle(R.string.sort).setItems(new String[]{getString(R.string.config_sort_name),getString(R.string.config_sort_created)},null).show();return true;}
  if(id==R.id.action_help){new MaterialAlertDialogBuilder(this).setTitle(R.string.help_center).setMessage(R.string.p3_config_help_boundary).setPositiveButton(R.string.close,null).show();return true;}
  if(id==R.id.action_manage_labels){startActivity(new Intent(this,LabelsActivity.class));return true;}
  if(id==R.id.action_app_backup_settings){Intent x=new Intent(this,SettingsDetailActivity.class);x.putExtra("category",1);x.putExtra("category_title",getString(R.string.app_backups));startActivity(x);return true;}
  if(id==R.id.action_settings){startActivity(new Intent(this,SettingsActivity.class));return true;}
  return super.onOptionsItemSelected(i);
 }
 static final class Adapter extends RecyclerView.Adapter<Holder>{
  @Override public Holder onCreateViewHolder(android.view.ViewGroup p,int t){android.widget.TextView v=new android.widget.TextView(p.getContext());v.setPadding(32,24,32,24);v.setTextColor(0xff666666);return new Holder(v);}
  @Override public void onBindViewHolder(Holder h,int p){((android.widget.TextView)h.itemView).setText(R.string.configs_pending);}
  @Override public int getItemCount(){return 0;}
 }
 static final class Holder extends RecyclerView.ViewHolder{Holder(android.view.View v){super(v);}}
}