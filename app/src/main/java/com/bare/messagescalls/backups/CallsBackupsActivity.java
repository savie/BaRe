package com.bare.messagescalls.backups;
import android.content.Intent; import android.os.Bundle; import androidx.annotation.Nullable; import androidx.appcompat.app.AppCompatActivity; import androidx.appcompat.widget.Toolbar; import com.bare.R; import com.bare.messagescalls.backuprestore.CallsBackupRestoreActivity;
public final class CallsBackupsActivity extends AppCompatActivity{
 protected void onCreate(@Nullable Bundle s){super.onCreate(s);setContentView(R.layout.smscalls_backups_activity);Toolbar t=findViewById(R.id.toolbar);t.setTitle(R.string.call_logs_backups);setSupportActionBar(t);if(getSupportActionBar()!=null)getSupportActionBar().setDisplayHomeAsUpEnabled(true);((android.widget.TextView)findViewById(R.id.empty)).setText(R.string.no_call_logs_found);findViewById(R.id.empty).setOnClickListener(v->startActivity(new Intent(this,CallsBackupRestoreActivity.class)));}
 public boolean onSupportNavigateUp(){finish();return true;}
}