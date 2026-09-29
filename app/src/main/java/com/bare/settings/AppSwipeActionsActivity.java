package com.bare.settings;
import android.os.Bundle; import android.widget.LinearLayout; import android.widget.TextView; import androidx.annotation.Nullable; import androidx.appcompat.app.AppCompatActivity; import androidx.appcompat.widget.Toolbar; import com.bare.R; import com.google.android.material.button.MaterialButton; import com.google.android.material.dialog.MaterialAlertDialogBuilder;
public final class AppSwipeActionsActivity extends AppCompatActivity{
 protected void onCreate(@Nullable Bundle s){super.onCreate(s);setContentView(R.layout.app_swipe_actions_activity);Toolbar t=findViewById(R.id.toolbar);setSupportActionBar(t);if(getSupportActionBar()!=null)getSupportActionBar().setDisplayHomeAsUpEnabled(true);findViewById(R.id.btn_reset).setOnClickListener(v->new MaterialAlertDialogBuilder(this).setTitle(R.string.reset).setMessage(R.string.p3_activity_boundary).setPositiveButton(R.string.close,null).show());}
 public boolean onSupportNavigateUp(){finish();return true;}
}