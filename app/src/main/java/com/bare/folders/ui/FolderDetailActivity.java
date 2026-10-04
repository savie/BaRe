package com.bare.folders.ui;
import android.app.Activity; import android.os.Bundle; import android.widget.TextView;
import androidx.annotation.Nullable; import androidx.appcompat.app.AppCompatActivity; import androidx.appcompat.widget.Toolbar;
import com.bare.R; import com.bare.folders.data.FolderItem;
import com.bare.folders.backup.FolderLocalBackupEngine;
import com.bare.folders.repository.LocalFolderSetupRepository; import com.google.android.material.dialog.MaterialAlertDialogBuilder;
public final class FolderDetailActivity extends AppCompatActivity {
 private FolderItem folderItem;
 @Override protected void onCreate(@Nullable Bundle state){
  super.onCreate(state); setContentView(R.layout.folder_detail_activity);
  Toolbar t=findViewById(R.id.toolbar); setSupportActionBar(t); if(getSupportActionBar()!=null)getSupportActionBar().setDisplayHomeAsUpEnabled(true);
  folderItem=state!=null ? state.getParcelable("extra_folder_info") : getIntent().getParcelableExtra("extra_folder_info");
  if(folderItem==null || !folderItem.isValid()){finish();return;}
  ((TextView)findViewById(R.id.tv_display_name)).setText(folderItem.getDisplayName());
  ((TextView)findViewById(R.id.tv_folder_path)).setText(folderItem.getSourceFolder());
  ((TextView)findViewById(R.id.tv_last_modified)).setText(Long.toString(folderItem.getSetupCreationTime()));
  findViewById(R.id.btn_open).setOnClickListener(v->boundary(R.string.open_folder));
  findViewById(R.id.btn_backup).setOnClickListener(v->backupFolder());
  findViewById(R.id.btn_delete).setOnClickListener(v->deleteSetup());
 }
 private void backupFolder(){
  new Thread(() -> {
   try {
    FolderLocalBackupEngine.Result result = new FolderLocalBackupEngine(this).backup(folderItem);
    runOnUiThread(() -> new MaterialAlertDialogBuilder(this)
      .setTitle(R.string.folder_backup)
      .setMessage(result.kind == FolderLocalBackupEngine.Result.Kind.NO_CHANGE
        ? getString(R.string.no_changes)
        : getString(R.string.folder_backup_result, 1, 0))
      .setPositiveButton(R.string.close,null).show());
   } catch(Exception e){
    runOnUiThread(() -> new MaterialAlertDialogBuilder(this).setTitle(R.string.folder_backup)
      .setMessage(getString(R.string.folder_backup_failed,
        e.getMessage()==null?e.getClass().getSimpleName():e.getMessage()))
      .setPositiveButton(R.string.close,null).show());
   }
  },"folder-detail-backup").start();
 }
 private void deleteSetup(){
  new MaterialAlertDialogBuilder(this).setTitle(R.string.delete_folder_setup)
    .setMessage(R.string.delete_folder_confirmation)
    .setNegativeButton(R.string.cancel,null)
    .setPositiveButton(R.string.delete,(d,w)->{
      new LocalFolderSetupRepository(this).remove(folderItem.getId());
      finish();
    }).show();
 }
 private void boundary(int title){new MaterialAlertDialogBuilder(this).setTitle(title).setMessage(R.string.p3_activity_boundary).setPositiveButton(R.string.close,null).show();}
 @Override protected void onSaveInstanceState(Bundle out){if(folderItem!=null)out.putParcelable("extra_folder_info",folderItem);super.onSaveInstanceState(out);}
 @Override public boolean onSupportNavigateUp(){setResult(Activity.RESULT_CANCELED);finish();return true;}
}