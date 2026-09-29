package com.bare.cloud.connect;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
public final class CsActivity extends AppCompatActivity{
 @Override protected void onCreate(@Nullable Bundle state){super.onCreate(state);setContentView(R.layout.cs_activity);findViewById(R.id.btn_test_connect).setOnClickListener(v->boundary(R.string.test));findViewById(R.id.btn_connect_cloud).setOnClickListener(v->boundary(R.string.connect_service));}
 private void boundary(int title){new MaterialAlertDialogBuilder(this).setTitle(title).setMessage(R.string.p3_cloud_auth_boundary).setPositiveButton(R.string.close,null).show();}
}