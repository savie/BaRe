package com.bare.appslist.ui.listbatch;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;
import com.bare.settings.SettingsActivity;
import com.bare.settings.SettingsDetailActivity;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;

import java.util.Arrays;
import java.util.List;

/**
 * P3 Apps Batch surface reconstructed from the Reference batch screen.
 *
 * The screen exposes selection/search/filter/action boundaries but never
 * fabricates installed-app inventory or executes batch operations.
 */
public final class AppsBatchActivity extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.apps_batch_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setTitle(R.string.apps_batch_actions);
        }
        toolbar.setNavigationOnClickListener(v -> finish());

        RecyclerView recyclerView = findViewById(R.id.rv_apps_quick_perform);
        recyclerView.setAdapter(new EmptySelectionAdapter());

        ExtendedFloatingActionButton actions = findViewById(R.id.btn_actions);
        actions.setOnClickListener(v -> showBatchActions());

        TextView empty = findViewById(R.id.empty_state);
        empty.setText(R.string.apps_list_pending);
    }

    private void showBatchActions() {
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.apps_batch_actions)
                .setItems(new String[]{
                        getString(R.string.apps_batch_backup),
                        getString(R.string.apps_batch_restore),
                        getString(R.string.apps_batch_boundary)
                }, (dialog, which) -> new MaterialAlertDialogBuilder(this)
                        .setTitle(which == 0 ? R.string.apps_batch_backup : (which == 1 ? R.string.apps_batch_restore : R.string.apps_batch_actions))
                        .setMessage(which == 2 ? R.string.p3_batch_selection_boundary : R.string.apps_engine_boundary)
                        .setPositiveButton(R.string.close, null)
                        .show())
                .show();
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_apps_batch_activity, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        int id = item.getItemId();
        if (id == R.id.action_search || id == R.id.action_filter) {
            showSelectionBoundary();
            return true;
        }
        if (id == R.id.action_select_all) {
            item.setChecked(!item.isChecked());
            showSelectionBoundary();
            return true;
        }
        if (id == R.id.action_app_backup_settings) {
            Intent i = new Intent(this, SettingsDetailActivity.class);
            i.putExtra("category", 1);
            i.putExtra("category_title", getString(R.string.app_backups));
            startActivity(i);
            return true;
        }
        if (id == R.id.action_settings) {
            startActivity(new Intent(this, SettingsActivity.class));
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    private void showSelectionBoundary() {
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.select_apps)
                .setMessage(R.string.p3_batch_selection_boundary)
                .setPositiveButton(R.string.close, null)
                .show();
    }

    @Override
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }

    private static final class EmptySelectionAdapter extends RecyclerView.Adapter<EmptySelectionAdapter.Holder> {
        @Override public Holder onCreateViewHolder(android.view.ViewGroup parent, int viewType) {
            View v = new View(parent.getContext());
            v.setLayoutParams(new RecyclerView.LayoutParams(1, 1));
            return new Holder(v);
        }
        @Override public void onBindViewHolder(Holder holder, int position) {}
        @Override public int getItemCount() { return 0; }
        static final class Holder extends RecyclerView.ViewHolder {
            Holder(View itemView) { super(itemView); }
        }
    }
}
