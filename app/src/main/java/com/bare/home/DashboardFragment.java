package com.bare.home;

import android.app.WallpaperManager;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.os.UserHandle;
import android.text.format.Formatter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;
import com.bare.appslist.ui.list.AppListActivity;
import com.bare.core.model.StorageInfoLocal;
import com.bare.core.storage.StorageInfoService;
import com.bare.folders.ui.FoldersDashActivity;
import com.bare.home.data.DashboardViewModel;
import com.bare.messagescalls.backuprestore.CallsBackupRestoreActivity;
import com.bare.messagescalls.backuprestore.MessagesBackupRestoreActivity;
import com.bare.messagescalls.backups.CallsBackupsActivity;
import com.bare.messagescalls.backups.MessagesBackupsActivity;
import com.bare.messagescalls.dash.CallsDashActivity;
import com.bare.messagescalls.dash.MessagesDashActivity;
import com.bare.notice.NoticeItem;
import com.bare.notice.NoticeRepository;
import com.bare.permission.RootPermissionCoordinator;
import com.bare.storage.AndroidStorageInventory;
import com.bare.storage.LocalStorageCoordinator;
import com.bare.storage.StorageSelection;
import com.bare.walls.WallsDashActivity;
import com.bare.wifi.WifiActivity;

import com.google.android.material.button.MaterialButton;

import java.util.ArrayList;
import java.util.List;

public final class DashboardFragment extends Fragment {
    private DashboardViewModel model;
    private RootPermissionCoordinator rootPermissionCoordinator;
    private NoticeRepository noticeRepository;
    private ShortcutAdapter shortcutAdapter;
    private NoticeAdapter noticeAdapter;

    @Nullable
    @Override
    public View onCreateView(
            @NonNull LayoutInflater inflater,
            @Nullable ViewGroup container,
            @Nullable Bundle state) {
        return inflater.inflate(R.layout.dash_fragment, container, false);
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle state) {
        model = new ViewModelProvider(this).get(DashboardViewModel.class);
        rootPermissionCoordinator = new RootPermissionCoordinator(requireContext());
        noticeRepository = new NoticeRepository(requireContext());

        bindRootStatus(view);
        bindSecondaryUserWarning(view);
        bindNotices(view);
        bindShortcuts(view);
        bindStorage(view);

        configureQuickActionCard(
                view, R.id.dash_card_quick_actions_apps,
                R.string.quick_actions_apps, R.drawable.ic_app,
                new QuickActionSpec[]{
                        new QuickActionSpec(R.string.backup_all_apps, R.string.backup_all_apps_summary, "ID_BACKUP_ALL_APPS"),
                        new QuickActionSpec(R.string.restore_all_apps, R.string.restore_all_apps_summary, "ID_RESTORE_ALL_APPS")
                },
                true);

        boolean telephony = requireContext().getPackageManager()
                .hasSystemFeature("android.hardware.telephony");

        if (telephony) {
            configureQuickActionCard(
                    view, R.id.dash_card_quick_actions_messages,
                    R.string.quick_actions_messages, R.drawable.ic_message_full,
                    new QuickActionSpec[]{
                            new QuickActionSpec(R.string.backup_messages, 0, "ID_BACKUP_MESSAGES"),
                            new QuickActionSpec(R.string.restore_messages, 0, "ID_RESTORE_MESSAGES")
                    }, false);

            configureQuickActionCard(
                    view, R.id.dash_card_quick_actions_calls,
                    R.string.quick_actions_calls, R.drawable.ic_call_log,
                    new QuickActionSpec[]{
                            new QuickActionSpec(R.string.backup_call_logs, 0, "ID_BACKUP_CALLS"),
                            new QuickActionSpec(R.string.restore_call_logs, 0, "ID_RESTORE_CALLS")
                    }, false);
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
                }, false);
    }

    private void bindRootStatus(View root) {
        View container = root.findViewById(R.id.root_status_container);
        TextView access = root.findViewById(R.id.tvRootAccess);
        TextView provider = root.findViewById(R.id.tvRootProvider);
        ImageView refresh = root.findViewById(R.id.iv_refresh_root_access);
        if (container == null || access == null || provider == null || refresh == null) return;

        provider.setText(R.string.root_provider);
        RootPermissionCoordinator.Listener listener = (state, ready) -> {
            access.setText(ready ? "Ready" : getString(R.string.root_access_needed));
            provider.setText(ready ? "Root / Shizuku" : getString(R.string.root_provider));
            refresh.setVisibility(View.VISIBLE);
        };
        refresh.setOnClickListener(v -> rootPermissionCoordinator.refresh(listener));
        rootPermissionCoordinator.refresh(listener);
    }

    private void bindSecondaryUserWarning(View root) {
        View warning = root.findViewById(R.id.dash_secondary_user_warning);
        if (warning == null) return;
        warning.setVisibility(UserHandle.myUserId() == 0 ? View.GONE : View.VISIBLE);
    }

    private void bindNotices(View root) {
        RecyclerView notices = root.findViewById(R.id.rv_notices);
        if (notices == null) return;

        noticeAdapter = new NoticeAdapter();
        notices.setLayoutManager(new LinearLayoutManager(requireContext()));
        notices.setAdapter(noticeAdapter);

        List<NoticeItem> visible = noticeRepository.getVisibleNotices();
        noticeAdapter.setItems(visible);
        notices.setVisibility(visible.isEmpty() ? View.GONE : View.VISIBLE);
    }

    private void bindShortcuts(View root) {
        RecyclerView defaultRecycler = root.findViewById(R.id.rvDashShortcutsDefault);
        RecyclerView compactRecycler = root.findViewById(R.id.rvDashShortcutsCompact);
        if (defaultRecycler == null || compactRecycler == null) return;

        boolean compact = requireContext()
                .getSharedPreferences(requireContext().getPackageName() + "_preferences", 0)
                .getBoolean("compact_storage_info", false);

        shortcutAdapter = new ShortcutAdapter();
        defaultRecycler.setLayoutManager(
                new LinearLayoutManager(requireContext(), RecyclerView.HORIZONTAL, false));
        defaultRecycler.setAdapter(shortcutAdapter);
        compactRecycler.setLayoutManager(
                new LinearLayoutManager(requireContext(), RecyclerView.HORIZONTAL, false));
        compactRecycler.setAdapter(shortcutAdapter);

        renderShortcuts(compact);
    }

    private void renderShortcuts(boolean compact) {
        if (shortcutAdapter == null) return;

        ArrayList<DashboardViewModel.QuickAction> actions = new ArrayList<>();
        boolean telephony = requireContext().getPackageManager()
                .hasSystemFeature("android.hardware.telephony");
        boolean wallpaperSupported = false;
        try {
            WallpaperManager manager = WallpaperManager.getInstance(requireContext());
            wallpaperSupported = manager != null && manager.isWallpaperSupported();
        } catch (Exception ignored) {
        }

        actions.add(new DashboardViewModel.QuickAction(
                1, "apps", getString(R.string.apps), R.drawable.ic_app));
        if (telephony) {
            actions.add(new DashboardViewModel.QuickAction(
                    2, "messages", getString(R.string.messages), R.drawable.ic_message_full));
            actions.add(new DashboardViewModel.QuickAction(
                    3, "call_logs", getString(R.string.call_logs), R.drawable.ic_call_log));
        }
        actions.add(new DashboardViewModel.QuickAction(
                6, "folders", getString(R.string.folders), R.drawable.ic_folder_full));
        if (wallpaperSupported) {
            actions.add(new DashboardViewModel.QuickAction(
                    4, "wallpapers", getString(R.string.wallpapers), R.drawable.ic_photo_full));
        }
        actions.add(new DashboardViewModel.QuickAction(
                5, "wifi", getString(R.string.wifi), R.drawable.ic_wifi_full));

        shortcutAdapter.setItems(actions);

        RecyclerView defaultRecycler = getView() == null
                ? null : getView().findViewById(R.id.rvDashShortcutsDefault);
        RecyclerView compactRecycler = getView() == null
                ? null : getView().findViewById(R.id.rvDashShortcutsCompact);
        if (defaultRecycler == null || compactRecycler == null) return;

        defaultRecycler.setVisibility(compact ? View.GONE : View.VISIBLE);
        compactRecycler.setVisibility(compact ? View.VISIBLE : View.GONE);
    }

    private void bindStorage(View root) {
        View storageView = root.findViewById(R.id.storage_view);
        TextView usage = root.findViewById(R.id.tvUsage);
        if (storageView == null || usage == null) return;

        SharedPreferences prefs = requireContext().getSharedPreferences(
                requireContext().getPackageName() + "_preferences", 0);
        boolean compact = prefs.getBoolean("compact_storage_info", false);

        renderStorageSummary(usage,
                new StorageInfoService(requireContext()).readCached(), compact);

        storageView.setOnLongClickListener(v -> {
            boolean next = !prefs.getBoolean("compact_storage_info", false);
            prefs.edit().putBoolean("compact_storage_info", next).apply();
            renderStorageSummary(usage,
                    new StorageInfoService(requireContext()).readCached(), next);
            renderShortcuts(next);
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
                long appUsage = com.bare.home.storageswitch.StorageBackupFootprint
                        .measure(backupRoot);
                measured = new StorageInfoService(requireContext())
                        .read(new java.io.File(selection.selected.rootPath), appUsage);
            }
            renderStorageSummary(usage, measured, compact);
        }
    }

    private void renderStorageSummary(TextView target, StorageInfoLocal value, boolean compact) {
        if (value instanceof StorageInfoLocal.Success) {
            StorageInfoLocal.Success s = (StorageInfoLocal.Success) value;
            String used = Formatter.formatFileSize(requireContext(), s.getUsedMemory());
            String total = Formatter.formatFileSize(requireContext(), s.getTotalMemory());
            String appUsage = Formatter.formatFileSize(requireContext(), s.getAppUsage());
            if (compact) {
                target.setText(getString(
                        R.string.storage_summary_compact, used, total, s.getUsedPercent()));
            } else {
                target.setText(getString(
                        R.string.storage_summary_detail, used, total,
                        s.getUsedPercent(), appUsage));
            }
        } else {
            target.setText(R.string.storage_summary_pending);
        }
    }

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
        ImageView icon = card.findViewById(R.id.iv_icon);
        LinearLayout items = card.findViewById(R.id.quick_action_items);
        if (title == null || icon == null || items == null) return;

        title.setText(titleRes);
        icon.setImageResource(iconRes);
        icon.setVisibility(View.VISIBLE);
        items.removeAllViews();

        for (QuickActionSpec spec : specs) {
            View row = getLayoutInflater().inflate(
                    R.layout.home_dashboard_quick_action_item, items, false);
            TextView rowTitle = row.findViewById(R.id.tv_action_title);
            TextView rowSummary = row.findViewById(R.id.tv_action_summary);
            MaterialButton local = row.findViewById(R.id.btn_local);
            MaterialButton cloud = row.findViewById(R.id.btn_cloud);

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
            MaterialButton more = new MaterialButton(
                    requireContext(), null,
                    com.google.android.material.R.attr.materialButtonOutlinedStyle);
            more.setText(R.string.more_quick_actions);
            more.setOnClickListener(v -> startActivity(new Intent(
                    requireContext(), com.bare.appsquickactions.AppsQuickActionsActivity.class)));
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-1, -2);
            lp.topMargin = (int) (8 * requireContext().getResources()
                    .getDisplayMetrics().density);
            items.addView(more, lp);
        }
    }

    private void dispatchDashboardAction(String referenceId, boolean cloud) {
        Intent intent = null;
        if ("ID_BACKUP_ALL_APPS".equals(referenceId)
                || "ID_RESTORE_ALL_APPS".equals(referenceId)) {
            try {
                com.bare.appsquickactions.AppsQuickActionRequest request =
                        com.bare.appsquickactions.AppsQuickActionRequest
                                .fromReferenceId(referenceId);
                intent = new Intent(requireContext(),
                        com.bare.appslist.ui.listbatch.AppsBatchActivity.class);
                intent.putExtra("quick_action_request", request);
            } catch (IllegalArgumentException ignored) {
                return;
            }
        } else if ("ID_BACKUP_MESSAGES".equals(referenceId)
                || "ID_RESTORE_MESSAGES".equals(referenceId)) {
            if (cloud) {
                intent = new Intent(requireContext(), MessagesDashActivity.class);
                intent.putExtra("highlight_cloud_card", true);
            } else if (referenceId.startsWith("ID_RESTORE_")) {
                intent = new Intent(requireContext(), MessagesBackupsActivity.class);
            } else {
                intent = new Intent(requireContext(), MessagesBackupRestoreActivity.class);
            }
        } else if ("ID_BACKUP_CALLS".equals(referenceId)
                || "ID_RESTORE_CALLS".equals(referenceId)) {
            if (cloud) {
                intent = new Intent(requireContext(), CallsDashActivity.class);
                intent.putExtra("highlight_cloud_card", true);
            } else if (referenceId.startsWith("ID_RESTORE_")) {
                intent = new Intent(requireContext(), CallsBackupsActivity.class);
            } else {
                intent = new Intent(requireContext(), CallsBackupRestoreActivity.class);
            }
        } else if ("ID_BACKUP_FOLDERS".equals(referenceId)
                || "ID_RESTORE_FOLDERS".equals(referenceId)) {
            intent = new Intent(requireContext(), FoldersDashActivity.class);
            intent.putExtra("action_id",
                    referenceId.contains("RESTORE") ? "Restore" : "Backup");
        }
        if (intent != null) startActivity(intent);
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

    private final class ShortcutAdapter extends RecyclerView.Adapter<ShortcutAdapter.Holder> {
        private final List<DashboardViewModel.QuickAction> items = new ArrayList<>();

        void setItems(List<DashboardViewModel.QuickAction> values) {
            items.clear();
            if (values != null) items.addAll(values);
            notifyDataSetChanged();
        }

        @NonNull
        @Override
        public Holder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
            MaterialButton button = new MaterialButton(
                    parent.getContext(), null,
                    com.google.android.material.R.attr.materialButtonOutlinedStyle);
            button.setAllCaps(false);
            button.setMinHeight((int) (48 * parent.getResources()
                    .getDisplayMetrics().density));
            RecyclerView.LayoutParams lp = new RecyclerView.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.setMargins(4, 4, 4, 4);
            button.setLayoutParams(lp);
            return new Holder(button);
        }

        @Override
        public void onBindViewHolder(@NonNull Holder holder, int position) {
            DashboardViewModel.QuickAction item = items.get(position);
            MaterialButton button = (MaterialButton) holder.itemView;
            button.setText(item.title);
            button.setIconResource(item.iconResource);
            button.setOnClickListener(v -> openQuickAction(item.title));
        }

        @Override
        public int getItemCount() {
            return items.size();
        }

        final class Holder extends RecyclerView.ViewHolder {
            Holder(@NonNull View itemView) {
                super(itemView);
            }
        }
    }

    private final class NoticeAdapter extends RecyclerView.Adapter<NoticeAdapter.Holder> {
        private final List<NoticeItem> items = new ArrayList<>();

        void setItems(List<NoticeItem> values) {
            items.clear();
            if (values != null) items.addAll(values);
            notifyDataSetChanged();
        }

        @NonNull
        @Override
        public Holder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
            TextView view = new TextView(parent.getContext());
            view.setPadding(24, 16, 24, 16);
            return new Holder(view);
        }

        @Override
        public void onBindViewHolder(@NonNull Holder holder, int position) {
            NoticeItem item = items.get(position);
            TextView view = (TextView) holder.itemView;
            String subtitle = item.getSubtitle();
            view.setText(subtitle.isEmpty() ? item.title : item.title + "\n" + subtitle);
        }

        @Override
        public int getItemCount() {
            return items.size();
        }

        final class Holder extends RecyclerView.ViewHolder {
            Holder(@NonNull View itemView) {
                super(itemView);
            }
        }
    }
}
