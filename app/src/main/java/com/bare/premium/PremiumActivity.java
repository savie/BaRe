package com.bare.premium;

import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public final class PremiumActivity extends AppCompatActivity {
    private static final String STATE_EXPANDED = "premium_plans_expanded";
    private static final String STATE_SELECTED_PLAN = "selected_plan_id";

    private String selectedPlanId;
    private boolean plansExpanded;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.premium_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setTitle(R.string.upgrade_to_premium);
        }

        plansExpanded = state != null && state.getBoolean(STATE_EXPANDED, false);
        selectedPlanId = state != null ? state.getString(STATE_SELECTED_PLAN) : null;

        if (!hasInternet()) {
            showBoundary(getString(R.string.no_internet_connection_summary), true);
            return;
        }

        setupFeatureList();
        setupPlanList();
        updatePlanSelection();
    }

    private boolean hasInternet() {
        ConnectivityManager cm = (ConnectivityManager) getSystemService(CONNECTIVITY_SERVICE);
        if (cm == null) {
            return false;
        }
        NetworkCapabilities capabilities = cm.getNetworkCapabilities(cm.getActiveNetwork());
        return capabilities != null
                && capabilities.hasCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET);
    }

    private void setupFeatureList() {
        RecyclerView list = findViewById(R.id.rv_premium_features);
        list.setLayoutManager(new LinearLayoutManager(this));
        list.setAdapter(new FeatureAdapter());
    }

    private void setupPlanList() {
        RecyclerView list = findViewById(R.id.recycler_view);
        list.setLayoutManager(new LinearLayoutManager(this));
        list.setAdapter(new PlanAdapter());

        findViewById(R.id.btn_purchase).setOnClickListener(v -> {
            if (selectedPlanId == null) {
                showBoundary(getString(R.string.premium_free_access_granted), false);
            } else if (PremiumAccessPolicy.isGranted()) {
                showBoundary(getString(R.string.premium_free_access_granted), false);
            } else {
                showBoundary(getString(R.string.premium_purchase_boundary), false);
            }
        });
    }

    private void updatePlanSelection() {
        TextView selected = findViewById(R.id.tv_selected_plan);
        if (selectedPlanId == null) {
            selected.setText(R.string.no_premium_plan_selected);
        } else if ("lifetime".equals(selectedPlanId)) {
            selected.setText(R.string.premium_plan_lifetime);
        } else {
            selected.setText(R.string.premium_plan_yearly);
        }
        findViewById(R.id.btn_purchase).setVisibility(android.view.View.VISIBLE);
        findViewById(R.id.btn_purchase).setContentDescription(getString(R.string.premium_free_access_granted));
    }

    private void showBoundary(String message, boolean closeActivity) {
        MaterialAlertDialogBuilder builder = new MaterialAlertDialogBuilder(this)
                .setMessage(message)
                .setPositiveButton(R.string.close, null);
        if (closeActivity) {
            builder.setOnDismissListener(d -> finish());
        }
        builder.show();
    }

    private void restorePurchases() {
        showBoundary(getString(R.string.premium_free_access_granted), false);
    }

    private void openAlreadyPaid() {
        try {
            startActivity(new Intent(Intent.ACTION_VIEW,
                    Uri.parse("https://github.com/savie/BaRe/issues")));
        } catch (Exception e) {
            showBoundary(getString(R.string.premium_already_paid_unavailable), false);
        }
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_premium, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == R.id.action_restore_purchases) {
            restorePurchases();
            return true;
        }
        if (item.getItemId() == R.id.action_already_paid) {
            openAlreadyPaid();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        outState.putBoolean(STATE_EXPANDED, plansExpanded);
        outState.putString(STATE_SELECTED_PLAN, selectedPlanId);
        super.onSaveInstanceState(outState);
    }

    @Override
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }

    private final class FeatureAdapter extends RecyclerView.Adapter<FeatureAdapter.H> {
        private final String[] titles = {
                getString(R.string.cloud_backup_for_apps),
                getString(R.string.scheduled_backups),
                getString(R.string.premium_feature_backup_history_title),
                getString(R.string.app_labels),
                getString(R.string.custom_configurations)
        };
        private final String[] descriptions = {
                getString(R.string.premium_feature_cloud_backup_description),
                getString(R.string.premium_feature_schedules_description),
                getString(R.string.premium_feature_backup_history_description),
                getString(R.string.premium_feature_app_labels_description),
                getString(R.string.premium_feature_custom_configurations_description)
        };

        @Override public H onCreateViewHolder(ViewGroup parent, int type) {
            return new H(getLayoutInflater().inflate(R.layout.premium_features_item, parent, false));
        }

        @Override public void onBindViewHolder(H holder, int position) {
            ((TextView) holder.view.findViewById(R.id.tv_title)).setText(titles[position]);
            TextView subtitle = holder.view.findViewById(R.id.tv_subtitle);
            subtitle.setText(descriptions[position]);
            subtitle.setVisibility(android.view.View.VISIBLE);
        }

        @Override public int getItemCount() { return titles.length; }

        final class H extends RecyclerView.ViewHolder {
            final android.view.View view;
            H(android.view.View view) { super(view); this.view = view; }
        }
    }

    private final class PlanAdapter extends RecyclerView.Adapter<PlanAdapter.H> {
        private final String[] ids = {"lifetime", "yearly"};
        private final String[] titles = {
                getString(R.string.premium_plan_lifetime),
                getString(R.string.premium_plan_yearly)
        };

        @Override public H onCreateViewHolder(ViewGroup parent, int type) {
            TextView view = new TextView(parent.getContext());
            view.setTextAppearance(com.google.android.material.R.style.TextAppearance_Material3_TitleMedium);
            view.setPadding(32, 28, 32, 28);
            view.setBackgroundResource(android.R.drawable.btn_default);
            return new H(view);
        }

        @Override public void onBindViewHolder(H holder, int position) {
            holder.view.setText(titles[position]);
            holder.view.setSelected(ids[position].equals(selectedPlanId));
            holder.view.setOnClickListener(v -> {
                selectedPlanId = ids[position];
                updatePlanSelection();
                notifyDataSetChanged();
            });
        }

        @Override public int getItemCount() { return ids.length; }

        final class H extends RecyclerView.ViewHolder {
            final TextView view;
            H(TextView view) { super(view); this.view = view; }
        }
    }
}
