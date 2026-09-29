package com.bare.notice;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import com.bare.R;
public final class NoticeViewActivity extends AppCompatActivity{
 @Override protected void onCreate(@Nullable Bundle s){super.onCreate(s);String msg=getIntent().getStringExtra("extra_message");if(msg==null||msg.length()==0){finish();return;}setContentView(R.layout.notice_view_activity);Toolbar t=findViewById(R.id.toolbar);setSupportActionBar(t);if(getSupportActionBar()!=null){getSupportActionBar().setDisplayHomeAsUpEnabled(true);String title=getIntent().getStringExtra("extra_title");if(title!=null)getSupportActionBar().setTitle(title);}((android.widget.TextView)findViewById(R.id.tv_message)).setText(msg);}
 @Override public boolean onSupportNavigateUp(){finish();return true;}
}