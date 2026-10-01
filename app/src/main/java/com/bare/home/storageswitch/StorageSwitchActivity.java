package com.bare.home.storageswitch;

import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public final class StorageSwitchActivity extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.storage_switch_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        RecyclerView recycler = findViewById(R.id.recycler_view);
        recycler.setLayoutManager(new LinearLayoutManager(this));
        recycler.setAdapter(new StorageAdapter());

        findViewById(R.id.progress_bar).setVisibility(android.view.View.GONE);

        findViewById(R.id.btn_action).setOnClickListener(v ->
                new MaterialAlertDialogBuilder(this)
                        .setTitle(R.string.apply_and_restart)
                        .setMessage(R.string.p3_storage_switch_boundary)
                        .setNegativeButton(R.string.close, null)
                        .show());
    }

    @Override public boolean onSupportNavigateUp() {
        finish();
        return true;
    }

    private static final class StorageAdapter extends RecyclerView.Adapter<StorageAdapter.Holder> {
        private final String[] items = {"Internal storage", "External storage", "Current storage"};

        @Override public Holder onCreateViewHolder(ViewGroup parent, int viewType) {
            TextView view = new TextView(parent.getContext());
            view.setPadding(48, 32, 48, 32);
            view.setTextSize(16);
            return new Holder(view);
        }

        @Override public void onBindViewHolder(Holder holder, int position) {
            holder.text.setText(items[position]);
        }

        @Override public int getItemCount() { return items.length; }

        static final class Holder extends RecyclerView.ViewHolder {
            final TextView text;
            Holder(TextView itemView) { super(itemView); text = itemView; }
        }
    }
}
