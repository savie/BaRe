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
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;

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
                        .read(selection.selected.rootFile(), appUsage);
            }
            renderStorageSummary(storageSummary, measured, compactStorage);
        }

        boolean telephony = requireContext().getPackageManager().hasSystemFeature("android.hardware.telephony");
        boolean wallpaper = WallpaperManager.getInstance(requireContext()).isWallpaperSupported();

        model.configureQuickActions(
                telephony, wallpaper,
                getString(R.string.apps), getString(R.string.messages), getString(R.string.call_logs),
                getString(R.string.folders), getString(R.string.wallpapers), getString(R.string.wifi),
                android.R.drawable.ic_menu_view, android.R.drawable.ic_menu_send, android.R.drawable.ic_menu_call,
                android.R.drawable.ic_menu_gallery, android.R.drawable.ic_menu_gallery, android.R.drawable.ic_menu_manage);

        model.getQuickActions().observe(getViewLifecycleOwner(), list -> {
            actions.removeAllViews();
            for (DashboardViewModel.QuickAction action : list) {
                TextView item = (TextView) getLayoutInflater().inflate(
                        R.layout.home_dashboard_action, actions, false);
                item.setText(action.title);
                item.setOnClickListener(v -> openQuickAction(action.title));
                actions.addView(item);
            }
        });
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
