package com.bare.appinfo;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.widget.TextView;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;

import com.google.android.material.appbar.MaterialToolbar;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import com.bare.R;

public final class AppInfoActivity extends AppCompatActivity {
    private static final String APP_PARCEL = "APP_PARCEL";
    private Parcelable appParcel;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.app_info_activity);

        MaterialToolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        toolbar.setNavigationOnClickListener(v -> finish());

        appParcel = state != null
                ? state.getParcelable(APP_PARCEL)
                : getIntent().getParcelableExtra(APP_PARCEL);

        if (appParcel == null) {
            finish();
            return;
        }

        TextView info = findViewById(R.id.tv_info);
        String pkg = getIntent().getStringExtra("package_name");
        if(pkg!=null){
            try{
                PackageInfo pi=getPackageManager().getPackageInfo(pkg,0); ApplicationInfo ai=pi.applicationInfo;
                StringBuilder b=new StringBuilder(); b.append(getString(R.string.app_info_name, ai==null?pkg:ai.loadLabel(getPackageManager()))).append("\\n\\n");
                b.append(getString(R.string.app_info_package, pkg)).append("\\n\\n"); b.append(getString(R.string.app_info_version, pi.versionName, pi.getLongVersionCode())).append("\\n\\n");
                if(ai!=null){b.append(getString(R.string.app_info_app_location, ai.sourceDir)).append("\\n\\n");b.append(getString(R.string.app_info_data_location, ai.dataDir==null?"":ai.dataDir)).append("\\n\\n");}
                if(ai!=null&&ai.splitSourceDirs!=null&&ai.splitSourceDirs.length>0){b.append(getString(R.string.app_info_split_apks, ai.splitSourceDirs.length)).append("\\n");for(int i=0;i<ai.splitSourceDirs.length;i++)b.append(i+1).append(". ").append(ai.splitSourceDirs[i]).append("\\n");b.append("\\n");}
                b.append(getString(R.string.app_info_uid, ai==null?"":ai.uid)); info.setText(b.toString());
            }catch(Exception e){info.setText(getString(R.string.app_info_unable_read_package, pkg, e.getClass().getSimpleName()));}
        }else info.setText(R.string.app_info_received);
        ((TextView) findViewById(R.id.tv_contract_status))
                .setText(R.string.app_info_contract_ready);

        if (state == null) setTitle(R.string.app_info);
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        if (appParcel != null) outState.putParcelable(APP_PARCEL, appParcel);
        super.onSaveInstanceState(outState);
    }

    @Override
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }
}
