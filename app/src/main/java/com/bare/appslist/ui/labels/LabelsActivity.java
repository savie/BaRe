package com.bare.appslist.ui.labels;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public final class LabelsActivity extends AppCompatActivity {
 @Override protected void onCreate(@Nullable Bundle state){
  super.onCreate(state); setContentView(R.layout.labels_activity);
  Toolbar t=findViewById(R.id.toolbar); setSupportActionBar(t);
  if(getSupportActionBar()!=null)getSupportActionBar().setDisplayHomeAsUpEnabled(true);
  ((RecyclerView)findViewById(R.id.rv_labels)).setAdapter(new EmptyAdapter());
  ((RecyclerView)findViewById(R.id.rv_selected_labels)).setAdapter(new EmptyAdapter());
  ((RecyclerView)findViewById(R.id.rv_app_labels)).setAdapter(new EmptyAdapter());
  findViewById(R.id.progress_bar).setVisibility(View.GONE);
  findViewById(R.id.main_view).setVisibility(View.VISIBLE);
  findViewById(R.id.iv_clear).setOnClickListener(v -> clearBoundary());
  findViewById(R.id.iv_clear_app_labels).setOnClickListener(v -> clearBoundary());
  findViewById(R.id.btn_apply_labels).setOnClickListener(v -> startActivity(new Intent(this,LabelEditActivity.class)));
 }
 private void clearBoundary(){
  new MaterialAlertDialogBuilder(this).setTitle(R.string.clear_labels)
   .setMessage(R.string.p3_schedule_labels_boundary).setPositiveButton(R.string.close,null).show();
 }
 @Override public boolean onSupportNavigateUp(){finish();return true;}
 private static final class EmptyAdapter extends RecyclerView.Adapter<EmptyAdapter.H>{
  public H onCreateViewHolder(android.view.ViewGroup p,int t){View v=new View(p.getContext());v.setLayoutParams(new RecyclerView.LayoutParams(1,1));return new H(v);}
  public void onBindViewHolder(H h,int p){} public int getItemCount(){return 0;}
  static final class H extends RecyclerView.ViewHolder{H(View v){super(v);}}
 }
}