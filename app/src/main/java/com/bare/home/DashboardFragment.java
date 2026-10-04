package com.bare.home;

import android.app.WallpaperManager;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.text.format.Formatter;
import android.content.SharedPreferences;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;

import com.bare.R;
import com.bare.home.data.DashboardViewModel;
import com.bare.core.model.StorageInfoLocal;
import com.bare.core.storage.StorageInfoService;
import com.bare.storage.AndroidStorageInventory;
import com.bare.storage.LocalStorageCoordinator;
import com.bare.storage.StorageSelection;
import com.bare.appslist.ui.list.AppListActivity;
import com.bare.messagescalls.dash.MessagesDashActivity;
import com.bare.messagescalls.dash.CallsDashActivity;
import com.bare.folders.ui.FoldersDashActivity;
import com.bare.walls.WallsDashActivity;
import com.bare.wifi.WifiActivity;

public final class DashboardFragment extends Fragment {
    private DashboardViewModel model;

    @Nullable @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle state) {
        return inflater.inflate(R.layout.home_dashboard_fragment, container, false);
    }

    @Override public void onViewCreated(@NonNull View view, @Nullable Bundle state) {
        model = new ViewModelProvider(this).get(DashboardViewModel.class);
        LinearLayout actions = view.findViewById(R.id.dashboard_actions);
        TextView storageSummary = view.findViewById(R.id.storage_summary_value);
        View storageCard = view.findViewById(R.id.storage_summary_card);
        SharedPreferences homePrefs = requireContext().getSharedPreferences(
                requireContext().getPackageName() + "_preferences", 0);
        boolean compactStorage = homePrefs.getBoolean("compact_storage_info", false);

        renderStorageSummary(storageSummary, new StorageInfoService(requireContext()).readCached(), compactStorage);
        storageCard.setOnLongClickListener(v -> {
            boolean next = !homePrefs.getBoolean("compact_storage_info", false);
            homePrefs.edit().putBoolean("compact_storage_info", next).apply();
            renderStorageSummary(storageSummary, new StorageInfoService(requireContext()).readCached(), next);
            return true;
        });
        StorageInfoLocal cachedStorage = new StorageInfoService(requireContext()).readCached();
        if (cachedStorage == null) {
            StorageSelection selection = new LocalStorageCoordinator(
                    requireContext(),
                    new AndroidStorageInventory(requireContext())).resolveSelection();
            StorageInfoLocal measured = null;
            if (selection != null && selection.selected != null) {
                java.io.File backupRoot = new java.io.File(
                        selection.selected.rootPath, "BΛR☰");
                long appUsage = com.bare.home.storageswitch.StorageBackupFootprint.measure(
                        backupRoot);
                measured = new StorageInfoService(requireContext())
                        .read(new java.io.File(selection.selected.rootPath), appUsage);
            }
            renderStorageSummary(storageSummary, measured, compactStorage);
        }

        boolean telephony = requireContext().getPackageManager().hasSystemFeature("android.hardware.telephony");

        configureQuickActionCard(
                view, R.id.dash_card_quick_actions_apps,
                R.string.quick_actions_apps, R.drawable.ic_app,
                new QuickActionSpec[]{
                        new QuickActionSpec(R.string.backup_all_apps, R.string.backup_all_apps_summary, "ID_BACKUP_ALL_APPS"),
                        new QuickActionSpec(R.string.restore_all_apps, R.string.restore_all_apps_summary, "ID_RESTORE_ALL_APPS")
                },
                true);

        if (telephony) {
            configureQuickActionCard(
                    view, R.id.dash_card_quick_actions_messages,
                    R.string.quick_actions_messages, R.drawable.ic_message_full,
                    new QuickActionSpec[]{
                            new QuickActionSpec(R.string.backup_messages, 0, "ID_BACKUP_MESSAGES"),
                            new QuickActionSpec(R.string.restore_messages, 0, "ID_RESTORE_MESSAGES")
                    },
                    false);

            configureQuickActionCard(
                    view, R.id.dash_card_quick_actions_calls,
                    R.string.quick_actions_calls, R.drawable.ic_call_log,
                    new QuickActionSpec[]{
                            new QuickActionSpec(R.string.backup_call_logs, 0, "ID_BACKUP_CALLS"),
                            new QuickActionSpec(R.string.restore_call_logs, 0, "ID_RESTORE_CALLS")
                    },
                    false);
        } else {
            view.findViewById(R.id.dash_card_quick_actions_messages).setVisibility(View.GONE);
            view.findViewById(R.id.dash_card_quick_actions_calls).setVisibility(View.GONE);
        }

        configureQuickActionCard(
                view, R.id.dash_card_quick_actions_folders,
                R.string.quick_actions_folders, R.drawable.ic_folder_full,
                new QuickActionSpec[]{
                        new QuickActionSpec(R.string.backup_folders, 0, "ID_BACKUP_FOLDERS"),
                        new QuickActionSpec(R.string.restore_folders, 0, "ID_RESTORE_FOLDERS")
                },
                false);

        // The Reference dashboard uses four fixed quick-action cards. The
        // separate Wallpapers/Wi-Fi category shortcuts remain owned by their
        // existing dashboard/navigation surfaces rather than being promoted
        // into these Reference cards.
        actions.setVisibility(View.GONE);

    private static final class QuickActionSpec {
        final int titleRes;
        final int summaryRes;
        final String referenceId;
        QuickActionSpec(int titleRes, int summaryRes, String referenceId) {
            this.titleRes = titleRes;
            this.summaryRes = summaryRes;
            this.referenceId = referenceId;
        }
    }

    private void configureQuickActionCard(
            View root, int cardId, int titleRes, int iconRes,
            QuickActionSpec[] specs, boolean showMore) {
        View card = root.findViewById(cardId);
        if (card == null) return;
        card.setVisibility(View.VISIBLE);

        TextView title = card.findViewById(R.id.tv_card_title);
        android.widget.ImageView icon = card.findViewById(R.id.iv_icon);
        android.widget.LinearLayout items = card.findViewById(R.id.quick_action_items);
        if (title == null || icon == null || items == null) return;

        title.setText(titleRes);
        icon.setImageResource(iconRes);
        icon.setVisibility(View.VISIBLE);
        items.removeAllViews();

        for (QuickActionSpec spec : specs) {
            View row = getLayoutInflater().inflate(R.layout.home_dashboard_quick_action_item, items, false);
            TextView rowTitle = row.findViewById(R.id.tv_action_title);
            TextView rowSummary = row.findViewById(R.id.tv_action_summary);
            com.google.android.material.button.MaterialButton local = row.findViewById(R.id.btn_local);
            com.google.android.material.button.MaterialButton cloud = row.findViewById(R.id.btn_cloud);

            rowTitle.setText(spec.titleRes);
            if (spec.summaryRes != 0) {
                rowSummary.setText(spec.summaryRes);
                rowSummary.setVisibility(View.VISIBLE);
            } else {
                rowSummary.setVisibility(View.GONE);
            }

            boolean restore = spec.referenceId.startsWith("ID_RESTORE_");
            local.setText(restore ? R.string.from_device : R.string.to_device);
            cloud.setText(restore ? R.string.from_cloud : R.string.to_cloud);
            local.setOnClickListener(v -> dispatchDashboardAction(spec.referenceId, false));
            cloud.setOnClickListener(v -> dispatchDashboardAction(spec.referenceId, true));
            items.addView(row);
        }

        if (showMore) {
            com.google.android.material.button.MaterialButton more =
                    new com.google.android.material.button.MaterialButton(requireContext(), null,
                            com.google.android.material.R.attr.materialButtonOutlinedStyle);
            more.setText(R.string.more_quick_actions);
            more.setOnClickListener(v -> startActivity(
                    new Intent(requireContext(), com.bare.appsquickactions.AppsQuickActionsActivity.class)));
            android.widget.LinearLayout.LayoutParams lp =
                    new android.widget.LinearLayout.LayoutParams(-1, -2);
            lp.topMargin = (int) (8 * requireContext().getResources().getDisplayMetrics().density);
            items.addView(more, lp);
        }
    }

    private void dispatchDashboardAction(String referenceId, boolean cloud) {
        Intent intent = null;
        if ("ID_BACKUP_ALL_APPS".equals(referenceId) || "ID_RESTORE_ALL_APPS".equals(referenceId)) {
            try {
                com.bare.appsquickactions.AppsQuickActionRequest request =
                        com.bare.appsquickactions.AppsQuickActionRequest.fromReferenceId(referenceId);
                intent = new Intent(requireContext(), com.bare.appslist.ui.listbatch.AppsBatchActivity.class);
                intent.putExtra("quick_action_request", request);
            } catch (IllegalArgumentException ignored) {
                return;
            }
        } else if ("ID_BACKUP_MESSAGES".equals(referenceId) || "ID_RESTORE_MESSAGES".equals(referenceId)) {
            if (cloud) {
                intent = new Intent(requireContext(), MessagesDashActivity.class);
                intent.putExtra("highlight_cloud_card", true);
            } else {
                if (referenceId.startsWith("ID_RESTORE_")) {
                    intent = new Intent(requireContext(), com.bare.messagescalls.backups.MessagesBackupsActivity.class);
                } else {
                    intent = new Intent(requireContext(), com.bare.messagescalls.backuprestore.MessagesBackupRestoreActivity.class);
                }
            }
        } else if ("ID_BACKUP_CALLS".equals(referenceId) || "ID_RESTORE_CALLS".equals(referenceId)) {
            if (cloud) {
                intent = new Intent(requireContext(), CallsDashActivity.class);
                intent.putExtra("highlight_cloud_card", true);
            } else {
                if (referenceId.startsWith("ID_RESTORE_")) {
                    intent = new Intent(requireContext(), com.bare.messagescalls.backups.CallsBackupsActivity.class);
                } else {
                    intent = new Intent(requireContext(), com.bare.messagescalls.backuprestore.CallsBackupRestoreActivity.class);
                }
            }
        } else if ("ID_BACKUP_FOLDERS".equals(referenceId) || "ID_RESTORE_FOLDERS".equals(referenceId)) {
            intent = new Intent(requireContext(), FoldersDashActivity.class);
            intent.putExtra("action_id",
                    referenceId.contains("RESTORE") ? "Restore" : "Backup");
        }
        if (intent != null) startActivity(intent);
    }

    private void renderStorageSummary(TextView target, StorageInfoLocal value, boolean compact) {
        if (value instanceof StorageInfoLocal.Success) {
            StorageInfoLocal.Success s = (StorageInfoLocal.Success) value;
            String used = Formatter.formatFileSize(requireContext(), s.getUsedMemory());
            String total = Formatter.formatFileSize(requireContext(), s.getTotalMemory());
            String appUsage = Formatter.formatFileSize(requireContext(), s.getAppUsage());
            if (compact) {
                target.setText(getString(R.string.storage_summary_compact, used, total, s.getUsedPercent()));
            } else {
                target.setText(getString(R.string.storage_summary_detail, used, total, s.getUsedPercent(), appUsage));
            }
        } else {
            target.setText(R.string.storage_summary_pending);
        }
    }

    private void openQuickAction(String title) {
        Intent intent = null;
        if (getString(R.string.apps).contentEquals(title)) {
            intent = new Intent(requireContext(), AppListActivity.class);
        } else if (getString(R.string.messages).contentEquals(title)) {
            intent = new Intent(requireContext(), MessagesDashActivity.class);
        } else if (getString(R.string.call_logs).contentEquals(title)) {
            intent = new Intent(requireContext(), CallsDashActivity.class);
        } else if (getString(R.string.folders).contentEquals(title)) {
            intent = new Intent(requireContext(), FoldersDashActivity.class);
        } else if (getString(R.string.wallpapers).contentEquals(title)) {
            intent = new Intent(requireContext(), WallsDashActivity.class);
        } else if (getString(R.string.wifi).contentEquals(title)) {
            intent = new Intent(requireContext(), WifiActivity.class);
        }
        if (intent != null) startActivity(intent);
    }
}
