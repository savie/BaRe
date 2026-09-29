package com.bare.cloud.diagnostics;

import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public final class CloudDiagnosticsActivity extends AppCompatActivity {
 @Override protected void onCreate(Bundle state){
  super.onCreate(state);setContentView(R.layout.cloud_diagnostics_activity);
  androidx.appcompat.widget.Toolbar t=findViewById(R.id.toolbar);if(t!=null){setSupportActionBar(t);t.setNavigationOnClickListener(v->finish());}
  RecyclerView rv=findViewById(R.id.recycler_view);rv.setLayoutManager(new LinearLayoutManager(this));rv.setAdapter(new Adapter());
  findViewById(R.id.btn_connect_service).setOnClickListener(v->boundary(R.string.connect_cloud_account));
  findViewById(R.id.btn_run_diagnostics).setOnClickListener(v->boundary(R.string.run_diagnostics));
 }
 private void boundary(int title){new MaterialAlertDialogBuilder(this).setTitle(title).setMessage(R.string.p3_cloud_diagnostics_boundary).setPositiveButton(R.string.close,null).show();}
 static final class Adapter extends RecyclerView.Adapter<Holder>{
  final String[] titles={"Internet connectivity","Firebase Database connection","Account access","Large upload/download/delete","Multithreaded download"};
  final String[] summaries={"Checks device internet access before diagnostics run","Checks cloud metadata connectivity","Checks account and Swift Backup folder access","Verifies the large temporary transfer round trip","Checks multi-connection download behavior"};
  public Holder onCreateViewHolder(android.view.ViewGroup p,int t){return new Holder(android.view.LayoutInflater.from(p.getContext()).inflate(R.layout.cloud_diagnostics_test_item,p,false));}
  public void onBindViewHolder(Holder h,int p){h.title.setText(titles[p]);h.subtitle.setText(summaries[p]);h.status.setText(R.string.diagnostic_pending);}
  public int getItemCount(){return titles.length;}
 }
 static final class Holder extends RecyclerView.ViewHolder{
  android.widget.TextView title,subtitle,status;
  Holder(android.view.View v){super(v);title=v.findViewById(R.id.tv_title);subtitle=v.findViewById(R.id.tv_subtitle);status=v.findViewById(R.id.tv_status);}
 }
}