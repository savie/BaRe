package com.bare.appconfigs.list;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bare.R;
import com.bare.appconfigs.edit.ConfigEditActivity;
import com.bare.appslist.ui.labels.LabelsActivity;
import com.bare.settings.SettingsActivity;
import com.bare.settings.SettingsDetailActivity;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class ConfigListActivity extends AppCompatActivity {
 @Override protected void onCreate(Bundle state){super.onCreate(state);setContentView(R.layout.configs_list_activity);Toolbar t=findViewById(R.id.toolbar);if(t!=null){setSupportActionBar(t);t.setNavigationOnClickListener(v->finish());}RecyclerView rv=findViewById(R.id.recycler_view);rv.setLayoutManager(new LinearLayoutManager(this));rv.setAdapter(new Adapter(load()));findViewById(R.id.btn_create).setOnClickListener(v->startActivity(new Intent(this,ConfigEditActivity.class)));}
 private List<String[]> load(){List<String[]> out=new ArrayList<>();for(Map.Entry<String,?> e:getSharedPreferences("app_configs_v1",MODE_PRIVATE).getAll().entrySet())if(e.getKey().startsWith("name_"))out.add(new String[]{e.getKey().substring(5),String.valueOf(e.getValue())});return out;}
 @Override protected void onResume(){super.onResume();RecyclerView rv=findViewById(R.id.recycler_view);if(rv!=null)rv.setAdapter(new Adapter(load()));}
 @Override public boolean onCreateOptionsMenu(Menu m){getMenuInflater().inflate(R.menu.menu_config_list,m);return true;}
 @Override public boolean onOptionsItemSelected(MenuItem i){int id=i.getItemId();if(id==R.id.action_manage_labels){startActivity(new Intent(this,LabelsActivity.class));return true;}if(id==R.id.action_app_backup_settings){Intent x=new Intent(this,SettingsDetailActivity.class);x.putExtra("category",1);x.putExtra("category_title",getString(R.string.app_backups));startActivity(x);return true;}if(id==R.id.action_settings){startActivity(new Intent(this,SettingsActivity.class));return true;}return super.onOptionsItemSelected(i);}
 static final class Adapter extends RecyclerView.Adapter<Holder>{private final List<String[]>items;Adapter(List<String[]>x){items=x;}@Override public Holder onCreateViewHolder(ViewGroup p,int t){TextView v=new TextView(p.getContext());v.setPadding(32,24,32,24);return new Holder(v);}@Override public void onBindViewHolder(Holder h,int p){String[]x=items.get(p);h.v.setText(x[1]);h.v.setOnClickListener(v->{Intent i=new Intent(v.getContext(),ConfigEditActivity.class);i.putExtra("config_id",x[0]);v.getContext().startActivity(i);});}@Override public int getItemCount(){return items.size();}}
 static final class Holder extends RecyclerView.ViewHolder{final TextView v;Holder(TextView v){super(v);this.v=v;}}
}