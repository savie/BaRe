package com.bare.appslist.ui.labels;

import android.os.Bundle;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.textfield.TextInputEditText;

public final class LabelEditActivity extends AppCompatActivity {
 @Override protected void onCreate(@Nullable Bundle state){
  super.onCreate(state); setContentView(R.layout.label_edit_activity);
  Toolbar t=findViewById(R.id.toolbar); setSupportActionBar(t);
  if(getSupportActionBar()!=null)getSupportActionBar().setDisplayHomeAsUpEnabled(true);
  TextInputEditText name=findViewById(R.id.et_label_name);
  TextView preview=findViewById(R.id.label_preview).findViewById(R.id.tv_title);
  name.addTextChangedListener(new android.text.TextWatcher(){
   public void beforeTextChanged(CharSequence s,int st,int c,int a){}
   public void onTextChanged(CharSequence s,int st,int before,int count){preview.setText(s!=null&&s.length()>0?s:getString(R.string.app_labels));}
   public void afterTextChanged(android.text.Editable e){}
  });
  findViewById(R.id.btn_cancel).setOnClickListener(v->finish());
  findViewById(R.id.btn_save).setOnClickListener(v -> new MaterialAlertDialogBuilder(this)
   .setTitle(R.string.save).setMessage(R.string.p3_schedule_labels_boundary).setPositiveButton(R.string.close,null).show());
 }
 @Override public boolean onSupportNavigateUp(){finish();return true;}
}