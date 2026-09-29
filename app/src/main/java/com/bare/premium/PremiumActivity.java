package com.bare.premium;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
public final class PremiumActivity extends AppCompatActivity{
 @Override protected void onCreate(@Nullable Bundle state){super.onCreate(state);setContentView(R.layout.premium_activity);Toolbar t=findViewById(R.id.toolbar);setSupportActionBar(t);if(getSupportActionBar()!=null)getSupportActionBar().setDisplayHomeAsUpEnabled(true);((RecyclerView)findViewById(R.id.rv_premium_features)).setAdapter(new FeatureAdapter());findViewById(R.id.btn_purchase).setOnClickListener(v->boundary());}
 private void boundary(){new MaterialAlertDialogBuilder(this).setTitle(R.string.get_premium).setMessage(R.string.p3_activity_boundary).setPositiveButton(R.string.close,null).show();}
 @Override public boolean onSupportNavigateUp(){finish();return true;}
 final class FeatureAdapter extends RecyclerView.Adapter<FeatureAdapter.H>{final String[] titles={getString(R.string.cloud_sync),getString(R.string.scheduled_backups),getString(R.string.multiple_backups),getString(R.string.app_labels),getString(R.string.custom_configurations)};public H onCreateViewHolder(ViewGroup p,int t){return new H(getLayoutInflater().inflate(R.layout.premium_features_item,p,false));}public void onBindViewHolder(H h,int p){((TextView)h.v.findViewById(R.id.tv_title)).setText(titles[p]);}public int getItemCount(){return titles.length;}final class H extends RecyclerView.ViewHolder{final android.view.View v;H(android.view.View v){super(v);this.v=v;}}}
}