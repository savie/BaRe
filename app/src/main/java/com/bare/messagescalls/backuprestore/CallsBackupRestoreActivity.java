package com.bare.messagescalls.backuprestore;
import android.os.Bundle; import androidx.annotation.Nullable; import androidx.appcompat.app.AppCompatActivity; import androidx.appcompat.widget.Toolbar; import com.bare.R; import com.google.android.material.dialog.MaterialAlertDialogBuilder;
public final class CallsBackupRestoreActivity extends AppCompatActivity{
 protected void onCreate(@Nullable Bundle s){super.onCreate(s);setContentView(R.layout.smscalls_backup_restore_activity);Toolbar t=findViewById(R.id.toolbar);t.setTitle(R.string.call_logs_backup);setSupportActionBar(t);if(getSupportActionBar()!=null)getSupportActionBar().setDisplayHomeAsUpEnabled(true);findViewById(R.id.btn_backup).setOnClickListener(v->boundary(R.string.call_logs_backup));findViewById(R.id.btn_restore).setOnClickListener(v->boundary(R.string.restore_call_logs));}
 void boundary(int title){new MaterialAlertDialogBuilder(this).setTitle(title).setMessage(R.string.p3_activity_boundary).setPositiveButton(R.string.close,null).show();}
 public boolean onSupportNavigateUp(){finish();return true;}
}