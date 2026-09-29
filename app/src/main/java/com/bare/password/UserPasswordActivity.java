package com.bare.password;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
public final class UserPasswordActivity extends AppCompatActivity{
 @Override protected void onCreate(@Nullable Bundle state){super.onCreate(state);setContentView(R.layout.user_password_activity);Toolbar t=findViewById(R.id.toolbar);setSupportActionBar(t);if(getSupportActionBar()!=null)getSupportActionBar().setDisplayHomeAsUpEnabled(true);findViewById(R.id.btn_edit_active_password).setOnClickListener(v->boundary(R.string.change_password));findViewById(R.id.btn_add_old_password).setOnClickListener(v->boundary(R.string.add_old_password));}
 private void boundary(int title){new MaterialAlertDialogBuilder(this).setTitle(title).setMessage(R.string.p3_password_boundary).setPositiveButton(R.string.close,null).show();}
 @Override public boolean onSupportNavigateUp(){finish();return true;}
}