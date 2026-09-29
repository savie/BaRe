package com.bare.cloud.orphans;

import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public final class CloudOrphanCleanerActivity extends AppCompatActivity {
 @Override protected void onCreate(Bundle state){
  super.onCreate(state);setContentView(R.layout.cloud_orphan_cleaner_activity);
  androidx.appcompat.widget.Toolbar t=findViewById(R.id.toolbar);if(t!=null){setSupportActionBar(t);t.setNavigationOnClickListener(v->finish());}
  RecyclerView rv=findViewById(R.id.recycler_view);rv.setLayoutManager(new LinearLayoutManager(this));rv.setAdapter(new Adapter());
  findViewById(R.id.btn_scan).setOnClickListener(v->boundary(R.string.cloud_orphan_scan));
  findViewById(R.id.btn_delete_selected).setOnClickListener(v->boundary(R.string.cloud_orphan_delete_selected));
 }
 private void boundary(int title){new MaterialAlertDialogBuilder(this).setTitle(title).setMessage(R.string.p3_cloud_orphan_boundary).setPositiveButton(R.string.close,null).show();}
 static final class Adapter extends RecyclerView.Adapter<Holder>{
  public Holder onCreateViewHolder(android.view.ViewGroup p,int t){return new Holder(android.view.LayoutInflater.from(p.getContext()).inflate(R.layout.cloud_orphan_file_item,p,false));}
  public void onBindViewHolder(Holder h,int p){h.title.setText(R.string.cloud_orphan_pending_file);h.subtitle.setText(R.string.cloud_orphan_pending_detail);h.modified.setText(R.string.cloud_orphan_pending_modified);}
  public int getItemCount(){return 0;}
 }
 static final class Holder extends RecyclerView.ViewHolder{
  android.widget.TextView title,subtitle,modified;
  Holder(android.view.View v){super(v);title=v.findViewById(R.id.tv_title);subtitle=v.findViewById(R.id.tv_subtitle);modified=v.findViewById(R.id.tv_modified);}
 }
}