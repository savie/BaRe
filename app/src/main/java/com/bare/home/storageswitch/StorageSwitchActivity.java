package com.bare.home.storageswitch;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;
import com.bare.storage.AndroidStorageInventory;
import com.bare.storage.LocalStorageCoordinator;
import com.bare.storage.StorageCoordinator;
import com.bare.storage.StorageSelection;
import com.bare.storage.StorageVolumeInfo;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

import java.util.List;

public final class StorageSwitchActivity extends AppCompatActivity {
    private StorageCoordinator storageCoordinator;
    private StorageAdapter adapter;
    private StorageVolumeInfo pendingSelection;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.storage_switch_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }

        storageCoordinator = new LocalStorageCoordinator(
                this,
                new AndroidStorageInventory(this));

        StorageSelection current = storageCoordinator.resolveSelection();
        pendingSelection = current == null ? null : current.selected;

        RecyclerView recycler = findViewById(R.id.recycler_view);
        recycler.setLayoutManager(new LinearLayoutManager(this));
        adapter = new StorageAdapter(storageCoordinator.listVolumes(), pendingSelection);
        adapter.onSelectionChanged = volume -> pendingSelection = volume;
        recycler.setAdapter(adapter);

        findViewById(R.id.progress_bar).setVisibility(View.GONE);

        findViewById(R.id.btn_action).setOnClickListener(v -> applySelection());
    }

    private void applySelection() {
        if (pendingSelection == null) {
            new MaterialAlertDialogBuilder(this)
                    .setTitle(R.string.select_storage)
                    .setMessage(R.string.p3_storage_switch_boundary)
                    .setPositiveButton(R.string.close, null)
                    .show();
            return;
        }

        storageCoordinator.persistPreferredStorageDir(pendingSelection.rootPath);
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.apply_and_restart)
                .setMessage(R.string.p3_storage_switch_boundary)
                .setPositiveButton(R.string.close, (dialog, which) -> finish())
                .show();
    }

    @Override
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }

    private static final class StorageAdapter
            extends RecyclerView.Adapter<StorageAdapter.Holder> {
        interface SelectionChanged {
            void onChanged(StorageVolumeInfo volume);
        }

        private final List<StorageVolumeInfo> items;
        private StorageVolumeInfo selected;
        private SelectionChanged onSelectionChanged;

        StorageAdapter(List<StorageVolumeInfo> items, StorageVolumeInfo selected) {
            this.items = items;
            this.selected = selected;
        }

        @Override
        public Holder onCreateViewHolder(ViewGroup parent, int viewType) {
            TextView view = new TextView(parent.getContext());
            view.setPadding(48, 32, 48, 32);
            view.setTextSize(16);
            return new Holder(view);
        }

        @Override
        public void onBindViewHolder(Holder holder, int position) {
            StorageVolumeInfo item = items.get(position);
            String state = item.isValid() ? "" : " — unavailable";
            holder.text.setText(item.displayName + " (" + item.rootPath + ")" + state);
            holder.text.setOnClickListener(v -> {
                selected = item;
                if (onSelectionChanged != null) onSelectionChanged.onChanged(item);
                notifyDataSetChanged();
            });
        }

        @Override
        public int getItemCount() {
            return items.size();
        }

        static final class Holder extends RecyclerView.ViewHolder {
            final TextView text;
            Holder(TextView itemView) {
                super(itemView);
                text = itemView;
            }
        }
    }
}
