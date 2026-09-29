package com.bare.cloud.connect;

import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public final class DropboxSignInActivity extends AppCompatActivity {
 @Override protected void onCreate(@Nullable Bundle state){
  super.onCreate(state);setContentView(R.layout.dropbox_signin_activity);
  Toolbar t=new Toolbar(this);t.setTitle(R.string.dropbox);t.setNavigationIcon(android.R.drawable.ic_menu_revert);t.setNavigationOnClickListener(v->finish());addContentView(t,new android.view.ViewGroup.LayoutParams(-1,56));
  findViewById(R.id.tv_connected_status).setOnClickListener(v->new MaterialAlertDialogBuilder(this).setTitle(R.string.dropbox).setMessage(R.string.p3_cloud_auth_boundary).setPositiveButton(R.string.close,null).show());
 }
}