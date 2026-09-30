package com.bare.appslist.ui.labels;

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.textfield.TextInputEditText;

public final class LabelEditActivity extends AppCompatActivity {
 @Override protected void onCreate(@Nullable Bundle state){
  super.onCreate(state);
  setContentView(R.layout.label_edit_activity);
  Toolbar t=findViewById(R.id.toolbar);
  setSupportActionBar(t);
  if(getSupportActionBar()!=null)getSupportActionBar().setDisplayHomeAsUpEnabled(true);
  TextInputEditText name=findViewById(R.id.et_label_name);
  TextView preview=findViewById(R.id.label_preview).findViewById(R.id.tv_title);
  name.addTextChangedListener(new android.text.TextWatcher(){
   public void beforeTextChanged(CharSequence s,int st,int c,int a){}
   public void onTextChanged(CharSequence s,int st,int before,int count){preview.setText(s!=null&&s.length()>0?s:getString(R.string.app_labels));}
   public void afterTextChanged(android.text.Editable e){}
  });
  findViewById(R.id.btn_cancel).setOnClickListener(v->{setResult(Activity.RESULT_CANCELED);finish();});
  findViewById(R.id.btn_save).setOnClickListener(v->confirmSave());
 }
 @Override public boolean onCreateOptionsMenu(Menu menu){
  getMenuInflater().inflate(R.menu.menu_label_edit, menu);
  return true;
 }
 @Override public boolean onOptionsItemSelected(MenuItem item){
  if(item.getItemId()==R.id.action_delete_label){confirmDelete();return true;}
  return super.onOptionsItemSelected(item);
 }
 private void confirmSave(){
  new MaterialAlertDialogBuilder(this)
   .setTitle(R.string.save)
   .setMessage(R.string.p3_schedule_labels_boundary)
   .setNegativeButton(R.string.close,null)
   .setPositiveButton(android.R.string.ok,(d,w)->{setResult(Activity.RESULT_OK);finish();})
   .show();
 }
 private void confirmDelete(){
  new MaterialAlertDialogBuilder(this)
   .setTitle(R.string.delete_label)
   .setMessage(R.string.p3_schedule_labels_boundary)
   .setNegativeButton(R.string.close,null)
   .setPositiveButton(android.R.string.ok,(d,w)->{setResult(Activity.RESULT_OK);finish();})
   .show();
 }
 @Override public boolean onSupportNavigateUp(){setResult(Activity.RESULT_CANCELED);finish();return true;}
}