package com.bare.folders.ui;
import android.app.Activity; import android.os.Bundle; import android.widget.TextView;
import androidx.annotation.Nullable; import androidx.appcompat.app.AppCompatActivity; import androidx.appcompat.widget.Toolbar;
import com.bare.R; import com.bare.folders.data.FolderItem; import com.google.android.material.dialog.MaterialAlertDialogBuilder;
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
  findViewById(R.id.btn_backup).setOnClickListener(v->boundary(R.string.folder_backup));
  findViewById(R.id.btn_delete).setOnClickListener(v->boundary(R.string.delete_folder_setup));
 }
 private void boundary(int title){new MaterialAlertDialogBuilder(this).setTitle(title).setMessage(R.string.p3_activity_boundary).setPositiveButton(R.string.close,null).show();}
 @Override protected void onSaveInstanceState(Bundle out){if(folderItem!=null)out.putParcelable("extra_folder_info",folderItem);super.onSaveInstanceState(out);}
 @Override public boolean onSupportNavigateUp(){setResult(Activity.RESULT_CANCELED);finish();return true;}
}