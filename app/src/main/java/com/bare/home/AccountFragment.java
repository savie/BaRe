package com.bare.home;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.content.Intent;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;

import com.bare.R;
import com.bare.home.data.AccountViewModel;
import com.bare.home.service.AccountService;
import com.bare.home.repository.AccountRepository;
import com.bare.account.repository.UserInfoRepository;

public final class AccountFragment extends Fragment {
    private AccountViewModel model;
    private AccountService accountService;

    @Nullable @Override public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle state) {
        return inflater.inflate(R.layout.home_account_fragment, container, false);
    }

    @Override public void onViewCreated(@NonNull View view, @Nullable Bundle state) {
        model = new ViewModelProvider(this).get(AccountViewModel.class);
        // Provider wiring remains deferred; when an AccountService is supplied, this
        // fragment is the consumer only and never becomes a lifecycle/state owner.
        TextView name = view.findViewById(R.id.tv_user_name);
        TextView email = view.findViewById(R.id.tv_user_email);
        LinearLayout list = view.findViewById(R.id.account_items);

        model.getUser().observe(getViewLifecycleOwner(), user -> {
            if (user == null) {
                name.setText("");
                email.setText("");
            } else {
                name.setText(user.displayName == null ? "" : user.displayName);
                email.setText(user.email == null ? "" : user.email);
            }
        });
        model.getItems().observe(getViewLifecycleOwner(), items -> {
            list.removeAllViews();
            for (AccountViewModel.Item item : items) {
                TextView row = (TextView) getLayoutInflater().inflate(
                        R.layout.home_account_item, list, false);
                row.setText(item.title);
                row.setOnClickListener(v -> handleItem(item.key));
                list.addView(row);
            }
        });
    }

    private void handleItem(String key) {
        if ("settings".equals(key)) {
            startActivity(new Intent(requireContext(), com.bare.settings.SettingsActivity.class));
            return;
        }
        if ("about".equals(key)) {
            startActivity(new Intent(requireContext(), com.bare.settings.SettingsDetailActivity.class)
                    .putExtra(com.bare.settings.SettingsDetailActivity.EXTRA_CATEGORY, 6)
                    .putExtra(com.bare.settings.SettingsDetailActivity.EXTRA_CATEGORY_TITLE, getString(R.string.about)));
            return;
        }
        new com.google.android.material.dialog.MaterialAlertDialogBuilder(requireContext())
                .setTitle(key)
                .setMessage(R.string.p3_account_boundary)
                .setPositiveButton(R.string.close, null)
                .show();
    }
}