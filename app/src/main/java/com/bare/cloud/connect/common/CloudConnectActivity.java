package com.bare.cloud.connect.common;

import android.content.Intent;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bare.R;
import com.bare.cloud.connect.BoxSignInActivity;
import com.bare.cloud.connect.DropboxSignInActivity;
import com.bare.cloud.connect.FilenSignInActivity;
import com.bare.cloud.connect.GmsSignInActivity;
import com.bare.cloud.connect.MegaSignInActivity;
import com.bare.cloud.connect.NoGmsSignInActivity;
import com.bare.cloud.connect.OneDriveSignInActivity;
import com.bare.cloud.connect.PCloudSignInActivity;
import com.bare.cloud.connect.TeraBoxSignInActivity;
import com.bare.cloud.connect.YandexSignInActivity;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import java.util.Arrays;
import java.util.List;

public final class CloudConnectActivity extends AppCompatActivity {
 @Override protected void onCreate(Bundle state){
  super.onCreate(state);setContentView(R.layout.cloud_connect_activity);
  androidx.appcompat.widget.Toolbar t=findViewById(R.id.toolbar);if(t!=null){setSupportActionBar(t);t.setNavigationOnClickListener(v->finish());}
  ((RecyclerView)findViewById(R.id.rv_cloud_connect)).setLayoutManager(new LinearLayoutManager(this));
  ((RecyclerView)findViewById(R.id.rv_cloud_connect)).setAdapter(new ProviderAdapter());
 }
 private final class ProviderAdapter extends RecyclerView.Adapter<ProviderAdapter.H>{
  final List<String> names=Arrays.asList("Google Drive","Google Drive (browser)","Dropbox","OneDrive","Box","MEGA","Yandex","pCloud","TeraBox","Filen");
  @Override public H onCreateViewHolder(android.view.ViewGroup p,int t){return new H(getLayoutInflater().inflate(R.layout.cloud_connect_item,p,false));}
  @Override public void onBindViewHolder(H h,int pos){
   h.title.setText(names.get(pos));h.subtitle.setText(R.string.connect_cloud_subtitle);h.button.setOnClickListener(v->launch(pos));
  }
  void launch(int p){
   Class<?> c;
   switch(p){case 0:c=GmsSignInActivity.class;break;case 1:c=NoGmsSignInActivity.class;break;case 2:c=DropboxSignInActivity.class;break;case 3:c=OneDriveSignInActivity.class;break;case 4:c=BoxSignInActivity.class;break;case 5:c=MegaSignInActivity.class;break;case 6:c=YandexSignInActivity.class;break;case 7:c=PCloudSignInActivity.class;break;case 8:c=TeraBoxSignInActivity.class;break;default:c=FilenSignInActivity.class;}
   startActivity(new Intent(CloudConnectActivity.this,c));
  }
  final class H extends RecyclerView.ViewHolder{android.widget.TextView title,subtitle;com.google.android.material.button.MaterialButton button;H(android.view.View v){super(v);title=v.findViewById(R.id.tv_title);subtitle=v.findViewById(R.id.tv_subtitle);button=v.findViewById(R.id.btn_connect_service);}}
 }
}