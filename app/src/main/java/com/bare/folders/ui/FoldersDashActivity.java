package com.bare.folders.ui;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import com.bare.R;
import com.google.android.material.tabs.TabLayout;
public final class FoldersDashActivity extends AppCompatActivity {
 @Override protected void onCreate(@Nullable Bundle state){
  super.onCreate(state); setContentView(R.layout.folders_dash_activity);
  Toolbar t=findViewById(R.id.toolbar); setSupportActionBar(t); if(getSupportActionBar()!=null)getSupportActionBar().setDisplayHomeAsUpEnabled(true);
  TabLayout tabs=findViewById(R.id.tabLayout);
  tabs.addTab(tabs.newTab().setText(R.string.local_folder_setups));
  tabs.addTab(tabs.newTab().setText(R.string.copy_folder_setups_from_cloud));
  RecyclerView rv=findViewById(R.id.rv_folders);
  rv.setAdapter(new RecyclerView.Adapter<RecyclerView.ViewHolder>(){
   public RecyclerView.ViewHolder onCreateViewHolder(android.view.ViewGroup p,int v){android.widget.TextView x=new android.widget.TextView(p.getContext());x.setText(R.string.create_your_first_folder_msg);x.setPadding(48,48,48,48);return new RecyclerView.ViewHolder(x){};}
   public void onBindViewHolder(RecyclerView.ViewHolder h,int p){}
   public int getItemCount(){return 1;}
  });
  findViewById(R.id.fab_new_folder).setOnClickListener(v->startActivity(new Intent(this,FolderEditActivity.class)));
 }
 @Override public boolean onSupportNavigateUp(){finish();return true;}
}