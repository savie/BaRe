package com.bare.settings.appbackuplimits;
import android.os.Bundle; import androidx.annotation.Nullable; import androidx.appcompat.app.AppCompatActivity; import androidx.appcompat.widget.Toolbar; import com.bare.R;
public final class AppBackupLimitsActivity extends AppCompatActivity{
 protected void onCreate(@Nullable Bundle s){super.onCreate(s);setContentView(R.layout.app_backup_limits_activity);Toolbar t=findViewById(R.id.toolbar);setSupportActionBar(t);if(getSupportActionBar()!=null)getSupportActionBar().setDisplayHomeAsUpEnabled(true);String part=getIntent().getStringExtra("app_part");if(part!=null)((android.widget.TextView)findViewById(R.id.tv_app_part)).setText(part);}
 public boolean onSupportNavigateUp(){finish();return true;}
}