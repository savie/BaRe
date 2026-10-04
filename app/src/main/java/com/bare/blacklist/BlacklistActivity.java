package com.bare.blacklist;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;
import com.bare.blacklist.data.BlacklistApp;
import com.bare.blacklist.data.BlacklistData;
import com.bare.blacklist.repository.BlacklistRepository;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

import java.util.ArrayList;
import java.util.List;

public final class BlacklistActivity extends AppCompatActivity {
    private BlacklistRepository blacklistRepository;
    private BlacklistAdapter adapter;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.blacklist_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        blacklistRepository = new BlacklistRepository(this);
        RecyclerView list = findViewById(R.id.rv_blacklist);
        list.setLayoutManager(new LinearLayoutManager(this));
        adapter = new BlacklistAdapter();
        list.setAdapter(adapter);
        reload();

        View add = findViewById(R.id.btn_add_apps);
        if (add != null) add.setOnClickListener(v -> addAppsBoundary());
        View fab = findViewById(R.id.fab_add);
        if (fab != null) fab.setOnClickListener(v -> addAppsBoundary());
    }

    private void reload() {
        BlacklistData data = blacklistRepository.load();
        adapter.replace(data.getItems());
        invalidateOptionsMenu();
    }

    private void addAppsBoundary() {
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.add_apps)
                .setMessage(R.string.p3_blacklist_boundary)
                .setPositiveButton(R.string.close, null)
                .show();
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_blacklist_apps, menu);
        MenuItem clear = menu.findItem(R.id.action_clear);
        if (clear != null) clear.setVisible(adapter != null && adapter.getItemCount() > 0);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == R.id.action_clear) {
            if (adapter == null || adapter.getItemCount() == 0) return true;
            new MaterialAlertDialogBuilder(this)
                    .setTitle(R.string.clear_all)
                    .setMessage(R.string.sure_to_proceed)
                    .setNegativeButton(R.string.no, null)
                    .setPositiveButton(R.string.yes, (d, which) -> {
                        blacklistRepository.clear();
                        reload();
                    })
                    .show();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }

    private final class BlacklistAdapter extends RecyclerView.Adapter<BlacklistAdapter.Holder> {
        private final List<BlacklistApp> items = new ArrayList<>();

        void replace(List<BlacklistApp> values) {
            items.clear();
            if (values != null) items.addAll(values);
            notifyDataSetChanged();
        }

        @Override
        public Holder onCreateViewHolder(android.view.ViewGroup parent, int viewType) {
            TextView view = new TextView(parent.getContext());
            int p = (int) (parent.getResources().getDisplayMetrics().density * 16f);
            view.setPadding(p, p, p, p);
            view.setMinHeight((int) (parent.getResources().getDisplayMetrics().density * 56f));
            return new Holder(view);
        }

        @Override
        public void onBindViewHolder(Holder holder, int position) {
            BlacklistApp item = items.get(position);
            String mode = item.isNoData() ? "NO_DATA" : "HIDE";
            holder.view.setText(item.getName() + "\n" + item.getPackageName() + " • " + mode);
            holder.view.setOnClickListener(v -> {
                blacklistRepository.remove(item.getPackageName());
                reload();
            });
        }

        @Override public int getItemCount() { return items.size(); }

        final class Holder extends RecyclerView.ViewHolder {
            final TextView view;
            Holder(TextView view) {
                super(view);
                this.view = view;
            }
        }
    }
}
