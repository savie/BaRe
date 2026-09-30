package com.bare.wifi;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public final class WifiActivity extends AppCompatActivity {
    private static final String PREFS = "wifi_p3";
    private static final String KEY_ACK_Q = "user_acknowledge_no_batch_restore_on_q";
    private static final String KEY_NOTICE = "wifi_notice_visible";

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.wifi_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setTitle(R.string.wifi_networks_backup);
        }

        bindCard(R.id.wifi_card_system, R.string.wifi_on_device,
                R.string.backup_to_local, R.string.manage, this::showBoundary);
        bindCard(R.id.wifi_card_local, R.string.local_backups,
                R.string.delete, R.string.restore, this::showBoundary);
        bindCard(R.id.wifi_card_cloud, R.string.cloud_backups,
                R.string.delete, R.string.restore, this::showBoundary);

        boolean notice = Build.VERSION.SDK_INT == 29
                && !getSharedPreferences(PREFS, Context.MODE_PRIVATE).getBoolean(KEY_ACK_Q, false);
        if (state != null) {
            notice = state.getBoolean(KEY_NOTICE, notice);
        }
        View noticeView = findViewById(R.id.notice_no_batch_restore_on_q);
        noticeView.setVisibility(notice ? View.VISIBLE : View.GONE);
        findViewById(R.id.btn_got_it).setOnClickListener(v -> {
            getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit().putBoolean(KEY_ACK_Q, true).apply();
            noticeView.setVisibility(View.GONE);
        });
    }

    private void bindCard(int id, int titleRes, int action1Res, int action2Res, View.OnClickListener boundary) {
        View card = findViewById(id);
        ((TextView) card.findViewById(R.id.tv_card_title)).setText(titleRes);
        RecyclerView list = card.findViewById(R.id.recycler_view);
        list.setAdapter(new EmptyAdapter());
        card.findViewById(R.id.shortcuts_container).setVisibility(View.VISIBLE);
        TextView b1 = (TextView) card.findViewById(R.id.btn_shortcut1);
        TextView b2 = (TextView) card.findViewById(R.id.btn_shortcut2);
        b1.setText(action1Res);
        b2.setText(action2Res);
        b1.setOnClickListener(boundary);
        b2.setOnClickListener(boundary);
    }

    private void showBoundary(View v) {
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.wifi_networks_backup)
                .setMessage(R.string.p3_wifi_engine_boundary)
                .setPositiveButton(R.string.close, null)
                .show();
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        outState.putBoolean(KEY_NOTICE,
                findViewById(R.id.notice_no_batch_restore_on_q).getVisibility() == View.VISIBLE);
        super.onSaveInstanceState(outState);
    }

    @Override public boolean onSupportNavigateUp() {
        finish();
        return true;
    }

    static final class EmptyAdapter extends RecyclerView.Adapter<EmptyAdapter.H> {
        @Override public H onCreateViewHolder(android.view.ViewGroup parent, int type) {
            View v = new View(parent.getContext());
            v.setLayoutParams(new RecyclerView.LayoutParams(1, 1));
            return new H(v);
        }
        @Override public void onBindViewHolder(H holder, int position) {}
        @Override public int getItemCount() { return 0; }
        static final class H extends RecyclerView.ViewHolder {
            H(View v) { super(v); }
        }
    }
}