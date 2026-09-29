package com.bare.folders.ui;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
public final class FolderEditActivity extends AppCompatActivity {
 @Override protected void onCreate(@Nullable Bundle state){
  super.onCreate(state);setContentView(R.layout.folder_edit_activity);
  Toolbar t=findViewById(R.id.toolbar);setSupportActionBar(t);if(getSupportActionBar()!=null)getSupportActionBar().setDisplayHomeAsUpEnabled(true);
  findViewById(R.id.btn_cancel).setOnClickListener(v->finish());
  findViewById(R.id.btn_save).setOnClickListener(v->new MaterialAlertDialogBuilder(this).setTitle(R.string.new_folder_setup).setMessage(R.string.p3_activity_boundary).setPositiveButton(R.string.close,null).show());
 }
 @Override public boolean onSupportNavigateUp(){finish();return true;}
}