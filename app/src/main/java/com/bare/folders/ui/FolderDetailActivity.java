package com.bare.folders.ui;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
public final class FolderDetailActivity extends AppCompatActivity {
 @Override protected void onCreate(@Nullable Bundle state){
  super.onCreate(state);setContentView(R.layout.folder_detail_activity);
  Toolbar t=findViewById(R.id.toolbar);setSupportActionBar(t);if(getSupportActionBar()!=null)getSupportActionBar().setDisplayHomeAsUpEnabled(true);
  String name=getIntent().getStringExtra("folder_name");String path=getIntent().getStringExtra("folder_path");
  if(name!=null)((android.widget.TextView)findViewById(R.id.tv_display_name)).setText(name);
  if(path!=null)((android.widget.TextView)findViewById(R.id.tv_folder_path)).setText(path);
  findViewById(R.id.btn_open).setOnClickListener(v->boundary(R.string.open_folder));
  findViewById(R.id.btn_backup).setOnClickListener(v->boundary(R.string.folder_backup));
  findViewById(R.id.btn_delete).setOnClickListener(v->boundary(R.string.delete_folder_setup));
 }
 private void boundary(int title){new MaterialAlertDialogBuilder(this).setTitle(title).setMessage(R.string.p3_activity_boundary).setPositiveButton(R.string.close,null).show();}
 @Override public boolean onSupportNavigateUp(){finish();return true;}
}