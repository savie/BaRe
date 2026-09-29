package com.bare.home;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.View;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;

import com.bare.R;
import com.bare.home.data.CloudViewModel;

public final class CloudFragment extends Fragment {
    private CloudViewModel model;

    @Nullable @Override public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle state) {
        return inflater.inflate(R.layout.home_cloud_fragment, container, false);
    }

    @Override public void onViewCreated(@NonNull View view, @Nullable Bundle state) {
        model = new ViewModelProvider(this).get(CloudViewModel.class);
        // Reference delegates cloud state to its cloud/backend layer. Until that
        // layer is reconstructed, keep the state at the explicit boundary.
        model.setState(CloudViewModel.State.DRIVE_NOT_CONNECTED);

        View storage = view.findViewById(R.id.cloud_info_card_storage);
        if (storage != null) storage.setOnClickListener(v -> showCloudBoundary());
        View warning = view.findViewById(R.id.cloud_info_card_warning);
        if (warning != null) warning.setOnClickListener(v -> showCloudBoundary());
    }

    private void showCloudBoundary() {
        new com.google.android.material.dialog.MaterialAlertDialogBuilder(requireContext())
                .setTitle(R.string.connect_cloud_account)
                .setMessage(R.string.p3_cloud_boundary)
                .setPositiveButton(R.string.close, null)
                .show();
    }
}