package com.bare.appslist.ui.listconfig;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;
import com.bare.settings.SettingsActivity;
import com.bare.settings.SettingsDetailActivity;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;

public final class AppsConfigRunActivity extends AppCompatActivity {
    @Override protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.apps_config_run_activity);
        Toolbar toolbar=new Toolbar(this);
        toolbar.setTitle(R.string.custom_configurations);
        addContentView(toolbar,new android.view.ViewGroup.LayoutParams(-1,56));
        toolbar.setNavigationIcon(android.R.drawable.ic_menu_revert);
        toolbar.setNavigationOnClickListener(v->finish());
        RecyclerView rv=findViewById(R.id.rv_apps_quick_perform);
        rv.setAdapter(new RecyclerView.Adapter<Holder>() {
            @Override public Holder onCreateViewHolder(android.view.ViewGroup p,int t){ android.widget.TextView v=new android.widget.TextView(p.getContext()); v.setPadding(32,24,32,24); return new Holder(v);}
            @Override public void onBindViewHolder(Holder h,int p){((android.widget.TextView)h.itemView).setText(R.string.apps_config_run_pending);}
            @Override public int getItemCount(){return 0;}
        });
        ExtendedFloatingActionButton fab=findViewById(R.id.btn_actions);
        fab.setText(R.string.run_config);
        fab.setOnClickListener(v->new MaterialAlertDialogBuilder(this).setTitle(R.string.run_config).setMessage(R.string.p3_config_run_boundary).setPositiveButton(R.string.close,null).show());
    }
    @Override public boolean onCreateOptionsMenu(Menu m){getMenuInflater().inflate(R.menu.menu_apps_config_run_activity,m);return true;}
    @Override public boolean onOptionsItemSelected(MenuItem item){
        if(item.getItemId()==R.id.action_select_all){item.setChecked(!item.isChecked());return true;}
        if(item.getItemId()==R.id.action_app_backup_settings){Intent i=new Intent(this,SettingsDetailActivity.class);i.putExtra("category",1);i.putExtra("category_title",getString(R.string.app_backups));startActivity(i);return true;}
        if(item.getItemId()==R.id.action_settings){startActivity(new Intent(this,SettingsActivity.class));return true;}
        return super.onOptionsItemSelected(item);
    }
    static final class Holder extends RecyclerView.ViewHolder{Holder(android.view.View v){super(v);}}
}