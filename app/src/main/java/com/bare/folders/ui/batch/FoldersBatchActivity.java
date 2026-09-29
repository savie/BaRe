package com.bare.folders.ui.batch;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import com.bare.R;
import com.bare.folders.ui.FolderEditActivity;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
public final class FoldersBatchActivity extends AppCompatActivity {
 @Override protected void onCreate(@Nullable Bundle state){
  super.onCreate(state);setContentView(R.layout.folders_batch_activity);
  Toolbar t=findViewById(R.id.toolbar);setSupportActionBar(t);if(getSupportActionBar()!=null)getSupportActionBar().setDisplayHomeAsUpEnabled(true);
  findViewById(R.id.btn_actions).setOnClickListener(v->new MaterialAlertDialogBuilder(this).setTitle(R.string.folder_backup).setItems(new String[]{getString(R.string.backup_folders),getString(R.string.restore_folders),getString(R.string.edit_folder_setup)},(d,w)->{if(w==2)startActivity(new Intent(this,FolderEditActivity.class));else new MaterialAlertDialogBuilder(this).setMessage(R.string.p3_activity_boundary).setPositiveButton(R.string.close,null).show();}).show());
 }
 @Override public boolean onSupportNavigateUp(){finish();return true;}
}