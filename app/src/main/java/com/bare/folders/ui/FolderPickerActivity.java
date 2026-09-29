package com.bare.folders.ui;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
public final class FolderPickerActivity extends AppCompatActivity {
 @Override protected void onCreate(@Nullable Bundle state){
  super.onCreate(state);setContentView(R.layout.folder_picker_activity);
  Toolbar t=findViewById(R.id.toolbar);setSupportActionBar(t);if(getSupportActionBar()!=null)getSupportActionBar().setDisplayHomeAsUpEnabled(true);
  findViewById(R.id.btn_select).setOnClickListener(v->new MaterialAlertDialogBuilder(this).setTitle(R.string.select_folder).setMessage(R.string.p3_activity_boundary).setPositiveButton(R.string.close,null).show());
 }
 @Override public boolean onSupportNavigateUp(){finish();return true;}
}