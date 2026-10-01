package com.bare.appconfigs.edit;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.EditText;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;

public final class ConfigEditActivity extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.config_edit_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }

        boolean editing = getIntent() != null && getIntent().hasExtra("extra_config");
        if (getIntent() != null) {
            incomingConfigSettings = getIntent().getParcelableExtra("extra_config_settings");
            deleteConfigSettingsRequested = getIntent().getBooleanExtra("extra_config_settings_delete", false);
        }
        if (getSupportActionBar() != null) {
            getSupportActionBar().setTitle(editing ? R.string.manage_config : R.string.new_config);
        }

        EditText name = findViewById(R.id.et_config_name);
        if (editing) {
            String supplied = getIntent().getStringExtra("extra_config_name");
            if (supplied != null) name.setText(supplied);
        }

        RecyclerView recyclerView = findViewById(R.id.recycler_view);
        recyclerView.setAdapter(new EmptySettingsAdapter());

        findViewById(R.id.btn_add_settings).setOnClickListener(v ->
                new MaterialAlertDialogBuilder(this)
                        .setTitle(R.string.new_custom_settings)
                        .setMessage(R.string.p3_config_run_boundary)
                        .setPositiveButton(R.string.close, null)
                        .show());

        ExtendedFloatingActionButton action = findViewById(R.id.btn_action);
        action.setOnClickListener(v ->
                new MaterialAlertDialogBuilder(this)
                        .setTitle(R.string.save_config)
                        .setMessage(R.string.p3_config_run_boundary)
                        .setPositiveButton(R.string.close, null)
                        .show());
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        if (getIntent() != null && getIntent().hasExtra("extra_config")) {
            menu.add(0, R.id.action_delete, 0, R.string.delete_config);
        }
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == R.id.action_delete) {
            new MaterialAlertDialogBuilder(this)
                    .setTitle(R.string.delete_config)
                    .setMessage(R.string.delete_config_settings)
                    .setPositiveButton(R.string.close, null)
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

    private static final class EmptySettingsAdapter extends RecyclerView.Adapter<EmptySettingsAdapter.Holder> {
        @Override public Holder onCreateViewHolder(android.view.ViewGroup parent, int viewType) {
            android.view.View v = new android.view.View(parent.getContext());
            v.setLayoutParams(new RecyclerView.LayoutParams(1, 1));
            return new Holder(v);
        }
        @Override public void onBindViewHolder(Holder holder, int position) {}
        @Override public int getItemCount() { return 0; }
        static final class Holder extends RecyclerView.ViewHolder {
            Holder(android.view.View itemView) { super(itemView); }
        }
    }
}
