package com.bare.settings;
import android.os.Bundle; import androidx.annotation.Nullable; import androidx.appcompat.app.AppCompatActivity; import androidx.appcompat.widget.Toolbar; import com.bare.R;
public final class MultipleBackupsActivity extends AppCompatActivity{
 protected void onCreate(@Nullable Bundle s){super.onCreate(s);setContentView(R.layout.multiple_backups_activity);Toolbar t=findViewById(R.id.toolbar);setSupportActionBar(t);if(getSupportActionBar()!=null)getSupportActionBar().setDisplayHomeAsUpEnabled(true);((com.google.android.material.slider.Slider)findViewById(R.id.slider_count)).addOnChangeListener((sl,v,u)->((android.widget.TextView)findViewById(R.id.tv_count)).setText(getString(R.string.multiple_backups)+" ("+(int)v+")"));}
 public boolean onSupportNavigateUp(){finish();return true;}
}