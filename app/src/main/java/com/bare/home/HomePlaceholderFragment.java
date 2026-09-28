package com.bare.home;

import android.os.Bundle;
import android.view.Gravity;
import android.view.View;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

public final class HomePlaceholderFragment extends Fragment {
    private static final String ARG_POSITION = "position";

    public static HomePlaceholderFragment newInstance(int position) {
        HomePlaceholderFragment fragment = new HomePlaceholderFragment();
        Bundle args = new Bundle();
        args.putInt(ARG_POSITION, position);
        fragment.setArguments(args);
        return fragment;
    }

    public HomePlaceholderFragment() {
        super();
    }

    @Nullable
    @Override
    public View onCreateView(
            @NonNull android.view.LayoutInflater inflater,
            @Nullable android.view.ViewGroup container,
            @Nullable Bundle state) {
        TextView view = new TextView(requireContext());
        view.setGravity(Gravity.CENTER);
        int position = getArguments() == null ? 0 : getArguments().getInt(ARG_POSITION);
        view.setText(new String[]{"Home", "Cloud", "Schedule", "Account"}[position]
                + "\nReference fragment reconstruction pending");
        view.setTextSize(18);
        return view;
    }
}
