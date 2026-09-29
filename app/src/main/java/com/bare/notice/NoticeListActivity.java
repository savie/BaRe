package com.bare.notice;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import com.bare.R;
public final class NoticeListActivity extends AppCompatActivity{
 @Override protected void onCreate(@Nullable Bundle s){super.onCreate(s);setContentView(R.layout.notice_list_activity);Toolbar t=findViewById(R.id.toolbar);setSupportActionBar(t);if(getSupportActionBar()!=null)getSupportActionBar().setDisplayHomeAsUpEnabled(true);findViewById(R.id.rv_notices).setAdapter(new EmptyAdapter());}
 @Override public boolean onSupportNavigateUp(){finish();return true;}
 static final class EmptyAdapter extends RecyclerView.Adapter<EmptyAdapter.H>{public H onCreateViewHolder(android.view.ViewGroup p,int t){android.view.View v=new android.view.View(p.getContext());v.setLayoutParams(new RecyclerView.LayoutParams(1,1));return new H(v);}public void onBindViewHolder(H h,int p){}public int getItemCount(){return 0;}static final class H extends RecyclerView.ViewHolder{H(android.view.View v){super(v);}}}
}