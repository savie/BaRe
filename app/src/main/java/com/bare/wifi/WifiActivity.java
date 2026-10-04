package com.bare.wifi;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

import java.util.ArrayList;
import java.util.List;

public final class WifiActivity extends AppCompatActivity {
    private static final String PREFS = "wifi_p3";
    private static final String KEY_ACK_Q = "user_acknowledge_no_batch_restore_on_q";
    private static final String KEY_NOTICE = "wifi_notice_visible";

    private WifiNetworkAdapter systemAdapter;

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

        bindSystemCard();
        bindEmptyCard(R.id.wifi_card_local, R.string.device_backups);
        bindEmptyCard(R.id.wifi_card_cloud, R.string.cloud_backups);

        boolean notice = Build.VERSION.SDK_INT == 29
                && !getSharedPreferences(PREFS, Context.MODE_PRIVATE)
                .getBoolean(KEY_ACK_Q, false);
        if (state != null) {
            notice = state.getBoolean(KEY_NOTICE, notice);
        }

        View noticeView = findViewById(R.id.notice_no_batch_restore_on_q);
        noticeView.setVisibility(notice ? View.VISIBLE : View.GONE);
        findViewById(R.id.btn_got_it).setOnClickListener(v -> {
            getSharedPreferences(PREFS, Context.MODE_PRIVATE)
                    .edit().putBoolean(KEY_ACK_Q, true).apply();
            noticeView.setVisibility(View.GONE);
        });
    }

    private void bindSystemCard() {
        View card = findViewById(R.id.wifi_card_system);
        ((TextView) card.findViewById(R.id.tv_card_title)).setText(R.string.wifi_on_device);

        RecyclerView list = card.findViewById(R.id.recycler_view);
        systemAdapter = new WifiNetworkAdapter();
        list.setAdapter(systemAdapter);
        card.findViewById(R.id.shortcuts_container).setVisibility(View.GONE);
        card.findViewById(R.id.error_container_parent).setVisibility(View.GONE);

        WifiManager manager = (WifiManager) getApplicationContext()
                .getSystemService(Context.WIFI_SERVICE);
        if (manager == null) {
            systemAdapter.showError(getString(R.string.wifi_device_read_failed));
            return;
        }

        new Thread(() -> {
            WifiSystemNetworkRepository.Result legacy =
                    new WifiSystemNetworkRepository(manager).read();

            if (legacy.isSuccess() && !legacy.getItems().isEmpty()) {
                runOnUiThread(() -> systemAdapter.submit(legacy.getItems()));
                return;
            }

            WifiRootXmlRepository.Result root = new WifiRootXmlRepository().read();
            runOnUiThread(() -> {
                if (root.isSuccess()) {
                    systemAdapter.submit(root.getItems());
                } else if (legacy.isSuccess()) {
                    systemAdapter.submit(legacy.getItems());
                } else {
                    systemAdapter.showError(getString(R.string.wifi_device_read_failed));
                }
            });
        }).start();
    }

    private void bindEmptyCard(int id, int titleRes) {
        View card = findViewById(id);
        ((TextView) card.findViewById(R.id.tv_card_title)).setText(titleRes);
        RecyclerView list = card.findViewById(R.id.recycler_view);
        list.setAdapter(new EmptyAdapter());
        card.findViewById(R.id.shortcuts_container).setVisibility(View.GONE);
        card.findViewById(R.id.error_container_parent).setVisibility(View.GONE);
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

    private final class WifiNetworkAdapter
            extends RecyclerView.Adapter<WifiNetworkAdapter.Holder> {
        private final List<WifiCredentialState> items = new ArrayList<>();
        private String error;

        void submit(List<WifiCredentialState> values) {
            items.clear();
            error = null;
            if (values != null) items.addAll(values);
            notifyDataSetChanged();
        }

        void showError(String message) {
            items.clear();
            error = message;
            notifyDataSetChanged();
        }

        @Override
        public Holder onCreateViewHolder(ViewGroup parent, int type) {
            TextView view = (TextView) LayoutInflater.from(parent.getContext())
                    .inflate(android.R.layout.simple_list_item_1, parent, false);
            view.setPadding(24, 18, 24, 18);
            return new Holder(view);
        }

        @Override
        public void onBindViewHolder(Holder holder, int position) {
            TextView view = (TextView) holder.itemView;
            if (error != null) {
                view.setText(error);
                return;
            }

            WifiCredentialState item = items.get(position);
            view.setText(item.getSsid());
            view.setOnClickListener(v ->
                    new MaterialAlertDialogBuilder(WifiActivity.this)
                            .setTitle(item.getSsid())
                            .setMessage(item.isHiddenSsid()
                                    ? getString(R.string.wifi_networks_backup) + " • hidden"
                                    : getString(R.string.wifi_networks_backup))
                            .setPositiveButton(R.string.close, null)
                            .show());
        }

        @Override
        public int getItemCount() {
            return error == null ? items.size() : 1;
        }

        final class Holder extends RecyclerView.ViewHolder {
            Holder(View item) { super(item); }
        }
    }

    static final class EmptyAdapter extends RecyclerView.Adapter<EmptyAdapter.H> {
        @Override public H onCreateViewHolder(ViewGroup parent, int type) {
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
