package com.bare.appconfigs.edit;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.EditText;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import com.bare.R;
import com.bare.appconfigs.data.ConfigSettings;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import java.util.UUID;

public final class ConfigEditActivity extends AppCompatActivity {
    private String configId;
    private EditText name;
    @Override protected void onCreate(@Nullable Bundle state){
        super.onCreate(state);setContentView(R.layout.config_edit_activity);
        Toolbar t=findViewById(R.id.toolbar);setSupportActionBar(t);if(getSupportActionBar()!=null)getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        configId=state!=null?state.getString("config_id"):getIntent().getStringExtra("config_id");
        if(configId==null)configId=UUID.randomUUID().toString();
        name=findViewById(R.id.et_config_name);
        String existing=getSharedPreferences("app_configs_v1",MODE_PRIVATE).getString("name_"+configId,null);
        if(existing!=null)name.setText(existing);
        if(getSupportActionBar()!=null)getSupportActionBar().setTitle(existing==null?R.string.new_config:R.string.manage_config);
        findViewById(R.id.btn_add_settings).setOnClickListener(v->showConfigBoundary());
        findViewById(R.id.btn_action).setOnClickListener(v->saveConfig());
    }
    private void showConfigBoundary(){new MaterialAlertDialogBuilder(this).setTitle(R.string.new_custom_settings).setMessage(R.string.p3_config_run_boundary).setPositiveButton(R.string.close,null).show();}
    private void saveConfig(){String n=name.getText()==null?"":name.getText().toString().trim();if(n.isEmpty()){name.setError("Name required");return;}getSharedPreferences("app_configs_v1",MODE_PRIVATE).edit().putString("name_"+configId,n).apply();setResult(RESULT_OK);finish();}
    private void deleteConfig(){getSharedPreferences("app_configs_v1",MODE_PRIVATE).edit().remove("name_"+configId).remove("settings_"+configId).apply();setResult(RESULT_OK);finish();}
    @Override public boolean onCreateOptionsMenu(Menu m){if(getSharedPreferences("app_configs_v1",MODE_PRIVATE).contains("name_"+configId)){m.add(0,R.id.action_delete,0,R.string.delete_config);}return true;}
    @Override public boolean onOptionsItemSelected(MenuItem i){if(i.getItemId()==R.id.action_delete){new MaterialAlertDialogBuilder(this).setTitle(R.string.delete_config).setMessage(R.string.delete_config_settings).setNegativeButton(R.string.cancel,null).setPositiveButton(android.R.string.ok,(d,w)->deleteConfig()).show();return true;}return super.onOptionsItemSelected(i);}
    @Override public boolean onSupportNavigateUp(){finish();return true;}
    @Override protected void onSaveInstanceState(Bundle out){out.putString("config_id",configId);super.onSaveInstanceState(out);}
}