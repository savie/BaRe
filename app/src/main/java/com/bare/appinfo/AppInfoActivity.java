package com.bare.appinfo;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.widget.TextView;

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
        info.setText(R.string.app_info_received);
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
