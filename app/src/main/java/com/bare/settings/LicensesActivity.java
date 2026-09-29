package com.bare.settings;

import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import com.bare.R;

public final class LicensesActivity extends AppCompatActivity {
 @Override protected void onCreate(Bundle state){
  super.onCreate(state);setContentView(R.layout.licenses_activity);
  Toolbar toolbar=new Toolbar(this);toolbar.setTitle(R.string.licenses);toolbar.setNavigationIcon(android.R.drawable.ic_menu_revert);toolbar.setNavigationOnClickListener(v->finish());
  addContentView(toolbar,new android.view.ViewGroup.LayoutParams(-1,56));
  ((RecyclerView)findViewById(R.id.rv_licenses)).setAdapter(new RecyclerView.Adapter<Holder>(){
   @Override public Holder onCreateViewHolder(android.view.ViewGroup p,int t){android.widget.TextView v=new android.widget.TextView(p.getContext());v.setPadding(32,24,32,24);return new Holder(v);}
   @Override public void onBindViewHolder(Holder h,int p){((android.widget.TextView)h.itemView).setText(R.string.licenses_pending);}
   @Override public int getItemCount(){return 0;}
  });
 }
 static final class Holder extends RecyclerView.ViewHolder{Holder(android.view.View v){super(v);}}
}