package com.bare.wifi;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
public final class WifiActivity extends AppCompatActivity {
 @Override protected void onCreate(@Nullable Bundle state){super.onCreate(state);setContentView(R.layout.wifi_activity);Toolbar t=findViewById(R.id.toolbar);setSupportActionBar(t);if(getSupportActionBar()!=null)getSupportActionBar().setDisplayHomeAsUpEnabled(true);((RecyclerView)findViewById(R.id.wifi_card_system).findViewById(R.id.recycler_view)).setAdapter(new EmptyAdapter());((RecyclerView)findViewById(R.id.wifi_card_local).findViewById(R.id.recycler_view)).setAdapter(new EmptyAdapter());((RecyclerView)findViewById(R.id.wifi_card_cloud).findViewById(R.id.recycler_view)).setAdapter(new EmptyAdapter());findViewById(R.id.btn_got_it).setOnClickListener(v->findViewById(R.id.notice_no_batch_restore_on_q).setVisibility(android.view.View.GONE));}
 @Override public boolean onSupportNavigateUp(){finish();return true;}
 static final class EmptyAdapter extends RecyclerView.Adapter<EmptyAdapter.H>{public H onCreateViewHolder(android.view.ViewGroup p,int t){android.view.View v=new android.view.View(p.getContext());v.setLayoutParams(new RecyclerView.LayoutParams(1,1));return new H(v);}public void onBindViewHolder(H h,int p){}public int getItemCount(){return 0;}static final class H extends RecyclerView.ViewHolder{H(android.view.View v){super(v);}}}
}