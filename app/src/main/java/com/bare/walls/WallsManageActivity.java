package com.bare.walls;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import com.bare.R;
public final class WallsManageActivity extends AppCompatActivity {
 @Override protected void onCreate(@Nullable Bundle state){super.onCreate(state);setContentView(R.layout.walls_manage_activity);Toolbar t=findViewById(R.id.toolbar);setSupportActionBar(t);if(getSupportActionBar()!=null)getSupportActionBar().setDisplayHomeAsUpEnabled(true);((RecyclerView)findViewById(R.id.recycler_view)).setAdapter(new EmptyAdapter());}
 @Override public boolean onSupportNavigateUp(){finish();return true;}
 static final class EmptyAdapter extends RecyclerView.Adapter<EmptyAdapter.H>{public H onCreateViewHolder(android.view.ViewGroup p,int t){android.view.View v=new android.view.View(p.getContext());v.setLayoutParams(new RecyclerView.LayoutParams(1,1));return new H(v);}public void onBindViewHolder(H h,int p){}public int getItemCount(){return 0;}static final class H extends RecyclerView.ViewHolder{H(android.view.View v){super(v);}}}
}