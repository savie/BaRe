package com.bare.appslist.ui.labels;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public final class LabelsActivity extends AppCompatActivity {
 @Override protected void onCreate(@Nullable Bundle state){
  super.onCreate(state);
  setContentView(R.layout.labels_activity);
  Toolbar t=findViewById(R.id.toolbar);
  setSupportActionBar(t);
  if(getSupportActionBar()!=null)getSupportActionBar().setDisplayHomeAsUpEnabled(true);
  ((RecyclerView)findViewById(R.id.rv_labels)).setAdapter(new EmptyAdapter());
  ((RecyclerView)findViewById(R.id.rv_selected_labels)).setAdapter(new EmptyAdapter());
  ((RecyclerView)findViewById(R.id.rv_app_labels)).setAdapter(new EmptyAdapter());
  findViewById(R.id.progress_bar).setVisibility(View.GONE);
  findViewById(R.id.main_view).setVisibility(View.VISIBLE);
  findViewById(R.id.iv_clear).setOnClickListener(v -> confirmClear(false));
  findViewById(R.id.iv_clear_app_labels).setOnClickListener(v -> confirmClear(true));
  findViewById(R.id.btn_apply_labels).setOnClickListener(v -> startActivity(new Intent(this, LabelEditActivity.class)));
 }
 @Override public boolean onCreateOptionsMenu(Menu menu){
  getMenuInflater().inflate(R.menu.menu_labels, menu);
  return true;
 }
 @Override public boolean onOptionsItemSelected(MenuItem item){
  if(item.getItemId()==R.id.action_create_label){
   startActivityForResult(new Intent(this, LabelEditActivity.class), 264);
   return true;
  }
  if(item.getItemId()==R.id.action_delete_all){
   confirmDeleteAll();
   return true;
  }
  return super.onOptionsItemSelected(item);
 }
 private void confirmClear(boolean appLabels){
  new MaterialAlertDialogBuilder(this)
   .setTitle(appLabels ? R.string.clear_app_labels : R.string.clear_labels)
   .setMessage(R.string.p3_schedule_labels_boundary)
   .setNegativeButton(R.string.close,null)
   .setPositiveButton(android.R.string.ok,null)
   .show();
 }
 private void confirmDeleteAll(){
  new MaterialAlertDialogBuilder(this)
   .setTitle(R.string.delete_all)
   .setMessage(R.string.p3_schedule_labels_boundary)
   .setNegativeButton(R.string.close,null)
   .setPositiveButton(android.R.string.ok,null)
   .show();
 }
 @Override public boolean onSupportNavigateUp(){setResult(Activity.RESULT_CANCELED);finish();return true;}
 private static final class EmptyAdapter extends RecyclerView.Adapter<EmptyAdapter.H>{
  public H onCreateViewHolder(android.view.ViewGroup p,int t){View v=new View(p.getContext());v.setLayoutParams(new RecyclerView.LayoutParams(1,1));return new H(v);}
  public void onBindViewHolder(H h,int p){}
  public int getItemCount(){return 0;}
  static final class H extends RecyclerView.ViewHolder{H(View v){super(v);}}
 }
}