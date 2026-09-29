package com.bare.apkshare;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
public final class ApkImportActivity extends AppCompatActivity {
 @Override protected void onCreate(@Nullable Bundle state){
  super.onCreate(state); setContentView(R.layout.apk_import_activity);
  TextView status=findViewById(R.id.tvStatus);
  Intent i=getIntent(); Uri uri=i!=null?i.getData():null;
  if(uri==null && i!=null) uri=i.getParcelableExtra(Intent.EXTRA_STREAM);
  status.setText(uri!=null ? uri.toString() : getString(R.string.p3_activity_boundary));
  findViewById(R.id.btnClose).setOnClickListener(v->finish());
  findViewById(R.id.ivMenu).setOnClickListener(v->boundary());
  findViewById(R.id.importRoot).setOnClickListener(v->{});
 }
 private void boundary(){new MaterialAlertDialogBuilder(this).setTitle(R.string.apk_import_title).setMessage(R.string.p3_activity_boundary).setPositiveButton(R.string.close,null).show();}
}