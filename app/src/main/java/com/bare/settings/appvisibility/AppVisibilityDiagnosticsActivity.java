package com.bare.settings.appvisibility;
import android.os.Bundle; import androidx.annotation.Nullable; import androidx.appcompat.app.AppCompatActivity; import androidx.appcompat.widget.Toolbar; import androidx.recyclerview.widget.RecyclerView; import com.bare.R; import com.google.android.material.dialog.MaterialAlertDialogBuilder;
public final class AppVisibilityDiagnosticsActivity extends AppCompatActivity{
 protected void onCreate(@Nullable Bundle s){super.onCreate(s);setContentView(R.layout.app_visibility_diagnostics_activity);Toolbar t=findViewById(R.id.toolbar);setSupportActionBar(t);if(getSupportActionBar()!=null)getSupportActionBar().setDisplayHomeAsUpEnabled(true);findViewById(R.id.btn_refresh).setOnClickListener(v->boundary(R.string.refresh));findViewById(R.id.btn_copy).setOnClickListener(v->boundary(R.string.copy));}
 void boundary(int title){new MaterialAlertDialogBuilder(this).setTitle(title).setMessage(R.string.p3_activity_boundary).setPositiveButton(R.string.close,null).show();}
 public boolean onSupportNavigateUp(){finish();return true;}
}