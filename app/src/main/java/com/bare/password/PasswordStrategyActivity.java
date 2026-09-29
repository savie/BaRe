package com.bare.password;
import android.os.Bundle;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
public final class PasswordStrategyActivity extends AppCompatActivity {
 @Override protected void onCreate(@Nullable Bundle state){super.onCreate(state);setContentView(R.layout.password_strategy_activity);Toolbar t=findViewById(R.id.toolbar);setSupportActionBar(t);if(getSupportActionBar()!=null)getSupportActionBar().setDisplayHomeAsUpEnabled(true);ViewBinder.bind(this,R.id.password_item_app_based,R.string.password_mode_standard,R.string.p3_password_boundary);ViewBinder.bind(this,R.id.password_item_user_based,R.string.password_mode_user,R.string.p3_password_boundary);}
 @Override public boolean onSupportNavigateUp(){finish();return true;}
 static final class ViewBinder{static void bind(android.app.Activity a,int root,int title,int sub){android.view.View v=a.findViewById(root);((TextView)v.findViewById(R.id.tv_title)).setText(title);((TextView)v.findViewById(R.id.tv_subtitle)).setText(sub);v.setOnClickListener(x->new MaterialAlertDialogBuilder(a).setTitle(title).setMessage(sub).setPositiveButton(R.string.close,null).show());}}
}