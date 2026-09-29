package com.bare.cloud.connect;

import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public final class FilenSignInActivity extends AppCompatActivity {
 @Override protected void onCreate(Bundle state){
  super.onCreate(state);setContentView(R.layout.filen_signin_activity);
  findViewById(R.id.btn_connect_filen).setOnClickListener(v->new MaterialAlertDialogBuilder(this).setTitle(R.string.filen).setMessage(R.string.p3_cloud_auth_boundary).setPositiveButton(R.string.close,null).show());
 }
}