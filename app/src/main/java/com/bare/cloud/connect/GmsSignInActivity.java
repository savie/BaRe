package com.bare.cloud.connect;

import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public final class GmsSignInActivity extends AppCompatActivity {
 @Override protected void onCreate(Bundle state){
  super.onCreate(state);setContentView(R.layout.cloud_provider_signin_boundary);
  ((android.widget.TextView)findViewById(R.id.tv_title)).setText("Google Drive");
  findViewById(R.id.btn_authenticate).setOnClickListener(v->new MaterialAlertDialogBuilder(this).setTitle("Google Drive").setMessage(R.string.p3_google_stub).setPositiveButton(R.string.close,null).show());
 }
}