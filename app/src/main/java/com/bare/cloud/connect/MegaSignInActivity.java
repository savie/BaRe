package com.bare.cloud.connect;

import android.os.Bundle;
import android.widget.EditText;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public final class MegaSignInActivity extends AppCompatActivity {
 @Override protected void onCreate(@Nullable Bundle state){
  super.onCreate(state);setContentView(R.layout.mega_signin_activity);
  findViewById(R.id.btn_connect_cloud).setOnClickListener(v->new MaterialAlertDialogBuilder(this).setTitle(R.string.connect_service).setMessage(R.string.p3_cloud_auth_boundary).setPositiveButton(R.string.close,null).show());
 }
}