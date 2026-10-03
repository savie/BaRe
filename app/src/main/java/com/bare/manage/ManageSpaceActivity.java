package com.bare.manage;

import android.os.Bundle;
import android.text.format.Formatter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;

import java.util.Collections;
import java.util.List;

public final class ManageSpaceActivity extends AppCompatActivity {
    private ManageSpaceInventoryRepository inventoryRepository;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.manage_space_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }

        inventoryRepository = new ManageSpaceInventoryRepository(this);
        List<ManageSpaceReclaimItem> items = inventoryRepository.loadLocalInventory();

        RecyclerView recycler = findViewById(R.id.recycler_view);
        recycler.setAdapter(new Adapter(items));
    }

    @Override
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }

    final class Adapter extends RecyclerView.Adapter<Adapter.H> {
        private final List<ManageSpaceReclaimItem> items;

        Adapter(List<ManageSpaceReclaimItem> items) {
            this.items = items == null ? Collections.emptyList() : items;
        }

        @Override
        public H onCreateViewHolder(ViewGroup parent, int viewType) {
            View view = getLayoutInflater()
                    .inflate(R.layout.manage_space_item_normal, parent, false);
            return new H(view);
        }

        @Override
        public void onBindViewHolder(H holder, int position) {
            ManageSpaceReclaimItem item = items.get(position);

            TextView title = holder.view.findViewById(R.id.tv_title);
            TextView size = holder.view.findViewById(R.id.tv_size);
            TextView subtitle = holder.view.findViewById(R.id.tv_subtitle1);
            Button action = holder.view.findViewById(R.id.btn_action);

            title.setText(item.title);
            size.setText(Formatter.formatFileSize(
                    ManageSpaceActivity.this,
                    item.bytes));
            subtitle.setText(item.root.getPath());

            /*
             * F125 owns inventory-to-reclaim routing; F105 owns protected-backup
             * revalidation/deletion. Unknown protection therefore remains
             * non-destructive until F105 supplies the authoritative decision.
             */
            boolean cleanupAllowed = item.cleanupAllowed();
            action.setEnabled(cleanupAllowed);
            action.setAlpha(cleanupAllowed ? 1.0f : 0.5f);
            action.setOnClickListener(v -> {
                if (!cleanupAllowed) return;
                // F105 supplies the concrete delete/revalidation executor.
            });
        }

        @Override
        public int getItemCount() {
            return items.size();
        }

        final class H extends RecyclerView.ViewHolder {
            final View view;

            H(View view) {
                super(view);
                this.view = view;
            }
        }
    }
}
