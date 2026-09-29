package com.bare.settings;
import android.content.Intent; import android.os.Bundle; import androidx.annotation.Nullable; import androidx.appcompat.app.AppCompatActivity; import androidx.appcompat.widget.Toolbar; import com.bare.R;
public final class RestoreSpecialDataDetailsActivity extends AppCompatActivity{
 protected void onCreate(@Nullable Bundle state){super.onCreate(state);setContentView(R.layout.restore_special_data_activity);Toolbar t=findViewById(R.id.toolbar);setSupportActionBar(t);if(getSupportActionBar()!=null)getSupportActionBar().setDisplayHomeAsUpEnabled(true);android.widget.Switch sw=findViewById(R.id.switch_permissions);sw.setChecked(getIntent().getBooleanExtra("restore_special_permissions",true));sw.setOnCheckedChangeListener((b,v)->setResult(RESULT_OK,new Intent().putExtra("restore_special_permissions",v)));}
 public boolean onSupportNavigateUp(){finish();return true;}
}