package com.bare.cloud.connect;

import android.app.Activity;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public final class NoGmsSignInActivity extends AppCompatActivity {
 @Override protected void onCreate(@Nullable Bundle state){
  super.onCreate(state);
  setContentView(R.layout.cloud_provider_signin_boundary);
  ((android.widget.TextView)findViewById(R.id.tv_title)).setText(R.string.google_drive_browser);
  findViewById(R.id.btn_authenticate).setOnClickListener(v -> confirmAuth());
 }
 private void confirmAuth(){
  new MaterialAlertDialogBuilder(this)
   .setTitle(R.string.google_drive_browser)
   .setMessage(R.string.p3_cloud_auth_boundary)
   .setNegativeButton(R.string.close, null)
   .show();
 }
 @Override public void onBackPressed(){
  setResult(Activity.RESULT_CANCELED);
  super.onBackPressed();
 }
 @Override public boolean onSupportNavigateUp(){
  setResult(Activity.RESULT_CANCELED);
  finish();
  return true;
 }
}
