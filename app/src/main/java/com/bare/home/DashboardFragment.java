package com.bare.home;

import android.app.WallpaperManager;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;

import com.bare.R;
import com.bare.home.data.DashboardViewModel;

public final class DashboardFragment extends Fragment {
    private DashboardViewModel model;

    @Nullable @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle state) {
        return inflater.inflate(R.layout.home_dashboard_fragment, container, false);
    }

    @Override public void onViewCreated(@NonNull View view, @Nullable Bundle state) {
        model = new ViewModelProvider(this).get(DashboardViewModel.class);
        LinearLayout actions = view.findViewById(R.id.dashboard_actions);

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
                actions.addView(item);
            }
        });
    }
}