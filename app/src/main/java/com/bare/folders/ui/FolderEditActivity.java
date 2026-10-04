package com.bare.folders.ui;

import android.app.Activity; import android.content.Intent; import android.os.Bundle;
import androidx.annotation.Nullable; import androidx.appcompat.app.AppCompatActivity; import androidx.appcompat.widget.Toolbar;
import com.bare.R; import com.bare.folders.data.FolderItem;
import com.google.android.material.button.MaterialButton; import com.google.android.material.textfield.TextInputEditText; import com.google.android.material.textfield.TextInputLayout;

public final class FolderEditActivity extends AppCompatActivity {
 private TextInputEditText name,path; private TextInputLayout nameLayout,pathLayout; private FolderItem existing;
 @Override protected void onCreate(@Nullable Bundle state){
  super.onCreate(state); setContentView(R.layout.folder_edit_activity);
  Toolbar t=findViewById(R.id.toolbar); setSupportActionBar(t); if(getSupportActionBar()!=null)getSupportActionBar().setDisplayHomeAsUpEnabled(true);
  name=findViewById(R.id.et_display_name); path=findViewById(R.id.et_folder_path); nameLayout=findViewById(R.id.til_display_name); pathLayout=findViewById(R.id.til_folder_path);
  existing=state!=null ? state.getParcelable("extra_folder_item") : getIntent().getParcelableExtra("extra_folder_item");
  if(existing!=null){ name.setText(existing.getDisplayName()); path.setText(existing.getSourceFolder()); if(getSupportActionBar()!=null)getSupportActionBar().setTitle(R.string.edit_folder_setup); } else if(getSupportActionBar()!=null)getSupportActionBar().setTitle(R.string.new_folder_setup);
  findViewById(R.id.btn_cancel).setOnClickListener(v->{setResult(Activity.RESULT_CANCELED);finish();});
  ((MaterialButton)findViewById(R.id.btn_save)).setOnClickListener(v->save());
 }
 private void save(){
  String n=name.getText()==null?"":name.getText().toString().trim(), p=path.getText()==null?"":path.getText().toString().trim();
  nameLayout.setError(null); pathLayout.setError(null);
  if(n.isEmpty()||n.contains("  ")||n.length()>30){nameLayout.setError(getString(R.string.invalid_display_name));return;}
  if(p.isEmpty()){pathLayout.setError(getString(R.string.invalid_folder_path));return;}
  String id=existing!=null?existing.getId():Integer.toHexString((n+":"+p+":"+System.currentTimeMillis()).hashCode()).toUpperCase(java.util.Locale.ROOT);
  FolderItem item=new FolderItem(id,n,p,existing!=null?existing.getSetupCreationTime():System.currentTimeMillis());
  new com.bare.folders.repository.LocalFolderSetupRepository(this).save(item);
  Intent result=new Intent().putExtra("extra_folder_item",item).putExtra("saveLocalItemFromCloud",false);
  setResult(Activity.RESULT_OK,result); finish();
 }
 @Override protected void onSaveInstanceState(Bundle out){if(existing!=null)out.putParcelable("extra_folder_item",existing);super.onSaveInstanceState(out);}
 @Override public boolean onSupportNavigateUp(){setResult(Activity.RESULT_CANCELED);finish();return true;}
}