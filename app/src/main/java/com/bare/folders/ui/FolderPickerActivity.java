package com.bare.folders.ui;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public final class FolderPickerActivity extends AppCompatActivity {
 @Override protected void onCreate(@Nullable Bundle state){
  super.onCreate(state); setContentView(R.layout.folder_picker_activity);
  Toolbar t=findViewById(R.id.toolbar); setSupportActionBar(t);
  if(getSupportActionBar()!=null){getSupportActionBar().setDisplayHomeAsUpEnabled(true); getSupportActionBar().setTitle(R.string.select_folder);}
  ((RecyclerView)findViewById(R.id.rv)).setAdapter(new EmptyAdapter());
  ((RecyclerView)findViewById(R.id.rv_navigation)).setAdapter(new EmptyAdapter());
  findViewById(R.id.progress_bar).setVisibility(View.GONE);
  findViewById(R.id.btn_select).setOnClickListener(v -> boundary(R.string.select_folder, R.string.p3_schedule_folder_boundary));
 }
 @Override public boolean onCreateOptionsMenu(Menu menu){getMenuInflater().inflate(R.menu.menu_folder_picker,menu);return true;}
 @Override public boolean onOptionsItemSelected(MenuItem item){
  if(item.getItemId()==R.id.action_new_folder){showNewFolderDialog();return true;}
  if(item.getItemId()==R.id.action_storage_switch){boundary(R.string.select_storage,R.string.p3_activity_boundary);return true;}
  return super.onOptionsItemSelected(item);
 }
 private void showNewFolderDialog(){
  View content=getLayoutInflater().inflate(R.layout.folder_picker_new_folder_dialog,null,false);
  EditText name=content.findViewById(R.id.et_folder_name);
  new MaterialAlertDialogBuilder(this).setTitle(R.string.new_folder).setView(content)
   .setNegativeButton(R.string.cancel,null)
   .setPositiveButton(R.string.save,(d,w)->boundary(R.string.new_folder,R.string.p3_schedule_folder_boundary)).show();
 }
 private void boundary(int title,int message){
  new MaterialAlertDialogBuilder(this).setTitle(title).setMessage(message).setPositiveButton(R.string.close,null).show();
 }
 @Override public boolean onSupportNavigateUp(){finish();return true;}
 private static final class EmptyAdapter extends RecyclerView.Adapter<EmptyAdapter.H>{
  public H onCreateViewHolder(android.view.ViewGroup p,int t){View v=new View(p.getContext());v.setLayoutParams(new RecyclerView.LayoutParams(1,1));return new H(v);}
  public void onBindViewHolder(H h,int p){} public int getItemCount(){return 0;}
  static final class H extends RecyclerView.ViewHolder{H(View v){super(v);}}
 }
}