package com.bare.home;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

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
        TextView status = view.findViewById(R.id.cloud_status);
        model.getState().observe(getViewLifecycleOwner(), value -> {
            switch (value) {
                case READY: status.setText(R.string.cloud_ready); break;
                case NO_INTERNET: status.setText(R.string.cloud_no_internet); break;
                case CONNECTION_FAILED: status.setText(R.string.cloud_connection_failed); break;
                default: status.setText(R.string.cloud_loading); break;
            }
        });
        model.setState(CloudViewModel.State.READY);
    }
}