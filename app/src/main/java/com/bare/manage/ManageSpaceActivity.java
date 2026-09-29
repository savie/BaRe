package com.bare.manage;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
public final class ManageSpaceActivity extends AppCompatActivity {
 @Override protected void onCreate(@Nullable Bundle state){super.onCreate(state);setContentView(R.layout.manage_space_activity);Toolbar t=findViewById(R.id.toolbar);setSupportActionBar(t);if(getSupportActionBar()!=null)getSupportActionBar().setDisplayHomeAsUpEnabled(true);((RecyclerView)findViewById(R.id.recycler_view)).setAdapter(new Adapter(this));}
 private void boundary(String title){new MaterialAlertDialogBuilder(this).setTitle(title).setMessage(R.string.p3_activity_boundary).setPositiveButton(R.string.close,null).show();}
 @Override public boolean onSupportNavigateUp(){finish();return true;}
 final class Adapter extends RecyclerView.Adapter<Adapter.H>{final android.content.Context c;final String[] items={getString(R.string.apps),getString(R.string.messages),getString(R.string.call_logs),getString(R.string.folders),getString(R.string.wallpapers),getString(R.string.wifi)};Adapter(android.content.Context c){this.c=c;}public H onCreateViewHolder(ViewGroup p,int t){View v=getLayoutInflater().inflate(R.layout.manage_space_item_normal,p,false);return new H(v);}public void onBindViewHolder(H h,int p){TextView title=h.v.findViewById(R.id.tv_title);title.setText(items[p]);h.v.findViewById(R.id.btn_action).setOnClickListener(v->boundary(items[p]));}public int getItemCount(){return items.length;}final class H extends RecyclerView.ViewHolder{final View v;H(View v){super(v);this.v=v;}}}
}