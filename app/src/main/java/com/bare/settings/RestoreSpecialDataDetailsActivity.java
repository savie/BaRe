package com.bare.settings;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;
import com.google.android.material.materialswitch.MaterialSwitch;

import java.util.Arrays;
import java.util.List;

public final class RestoreSpecialDataDetailsActivity extends AppCompatActivity {
    public static final String EXTRA_RESTORE_SPECIAL_PERMISSIONS = "restore_special_permissions";
    public static final String EXTRA_CONFIG_SETTINGS = "extra_config_settings";

    private MaterialSwitch permissionsSwitch;
    private boolean restoreSpecialPermissions;

    private static final List<SpecialDataItem> ITEMS = Arrays.asList(
            new SpecialDataItem(R.drawable.ic_settings_notifications_filled,
                    R.string.restore_special_data_notification_settings_title,
                    R.string.restore_special_data_notification_settings_summary),
            new SpecialDataItem(R.drawable.ic_settings_security_filled,
                    R.string.restore_special_data_notification_access_title,
                    R.string.restore_special_data_notification_access_summary),
            new SpecialDataItem(R.drawable.ic_settings_admin_panel_settings_filled,
                    R.string.restore_special_data_accessibility_service_title,
                    R.string.restore_special_data_accessibility_service_summary),
            new SpecialDataItem(R.drawable.ic_settings_history_filled,
                    R.string.restore_special_data_usage_access_title,
                    R.string.restore_special_data_usage_access_summary),
            new SpecialDataItem(R.drawable.ic_settings_install_mobile_filled,
                    R.string.restore_special_data_install_unknown_apps_title,
                    R.string.restore_special_data_install_unknown_apps_summary),
            new SpecialDataItem(R.drawable.ic_settings_picture_in_picture_alt_filled,
                    R.string.restore_special_data_display_over_apps_title,
                    R.string.restore_special_data_display_over_apps_summary),
            new SpecialDataItem(R.drawable.ic_settings_settings_filled,
                    R.string.restore_special_data_modify_system_settings_title,
                    R.string.restore_special_data_modify_system_settings_summary),
            new SpecialDataItem(R.drawable.ic_settings_battery_full_filled,
                    R.string.restore_special_data_battery_optimization_title,
                    R.string.restore_special_data_battery_optimization_summary),
            new SpecialDataItem(R.drawable.ic_any_network_filled,
                    R.string.restore_special_data_network_modes_title,
                    R.string.restore_special_data_network_modes_summary),
            new SpecialDataItem(R.drawable.ic_folder_full,
                    R.string.restore_special_data_all_files_access_title,
                    R.string.restore_special_data_all_files_access_summary),
            new SpecialDataItem(R.drawable.ic_settings_alarm_filled,
                    R.string.restore_special_data_alarms_reminders_title,
                    R.string.restore_special_data_alarms_reminders_summary),
            new SpecialDataItem(R.drawable.ic_settings_smartphone_filled,
                    R.string.restore_special_data_system_modes_title,
                    R.string.restore_special_data_system_modes_summary),
            new SpecialDataItem(R.drawable.ic_settings_bolt_filled,
                    R.string.restore_special_data_magisk_title,
                    R.string.restore_special_data_magisk_summary)
    );

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.restore_special_data_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }

        if (state != null) {
            restoreSpecialPermissions = state.getBoolean(
                    EXTRA_RESTORE_SPECIAL_PERMISSIONS,
                    true
            );
        } else {
            restoreSpecialPermissions = getIntent().getBooleanExtra(
                    EXTRA_RESTORE_SPECIAL_PERMISSIONS,
                    true
            );
        }

        permissionsSwitch = findViewById(R.id.switch_permissions);
        permissionsSwitch.setChecked(restoreSpecialPermissions);
        permissionsSwitch.setOnCheckedChangeListener((button, checked) -> {
            restoreSpecialPermissions = checked;
            setResult(RESULT_OK, new Intent()
                    .putExtra(EXTRA_RESTORE_SPECIAL_PERMISSIONS, checked));
        });

        findViewById(R.id.container_restore_special_data).setOnClickListener(view -> {
            if (permissionsSwitch.isEnabled()) {
                permissionsSwitch.toggle();
            }
        });

        RecyclerView recyclerView = findViewById(R.id.recycler_view);
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        recyclerView.setAdapter(new SpecialDataAdapter(ITEMS));
    }

    @Override
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }

    @Override
    protected void onSaveInstanceState(Bundle state) {
        state.putBoolean(EXTRA_RESTORE_SPECIAL_PERMISSIONS, restoreSpecialPermissions);
        super.onSaveInstanceState(state);
    }

    private static final class SpecialDataItem {
        final int iconRes;
        final int titleRes;
        final int summaryRes;

        SpecialDataItem(int iconRes, int titleRes, int summaryRes) {
            this.iconRes = iconRes;
            this.titleRes = titleRes;
            this.summaryRes = summaryRes;
        }
    }

    private final class SpecialDataAdapter
            extends RecyclerView.Adapter<SpecialDataAdapter.Holder> {
        private final List<SpecialDataItem> items;

        SpecialDataAdapter(List<SpecialDataItem> items) {
            this.items = items;
        }

        @Override
        public Holder onCreateViewHolder(android.view.ViewGroup parent, int viewType) {
            View view = LayoutInflater.from(parent.getContext())
                    .inflate(R.layout.restore_special_data_detail_item, parent, false);
            return new Holder(view);
        }

        @Override
        public void onBindViewHolder(Holder holder, int position) {
            SpecialDataItem item = items.get(position);
            holder.icon.setImageResource(item.iconRes);
            holder.title.setText(item.titleRes);
            holder.summary.setText(item.summaryRes);
        }

        @Override
        public int getItemCount() {
            return items.size();
        }

        final class Holder extends RecyclerView.ViewHolder {
            final android.widget.ImageView icon;
            final TextView title;
            final TextView summary;

            Holder(View itemView) {
                super(itemView);
                icon = itemView.findViewById(R.id.iv_icon);
                title = itemView.findViewById(R.id.tv_title);
                summary = itemView.findViewById(R.id.tv_subtitle);
            }
        }
    }
}
