package com.bare.appslist.ui.list;

import android.os.Bundle;
import android.view.View;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;

/**
 * P3 screen shell for the Reference Apps list.
 *
 * The Reference owns the actual app inventory, filtering and persistence semantics.
 * Those remain P4/P5 evidence boundaries; P3 establishes the navigable surface
 * and now mirrors the Reference resource/component hierarchy.
 */
public final class AppListActivity extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.app_list_activity);

        Toolbar toolbar = findViewById(R.id.toolbar_mini);
        if (toolbar != null) {
            setSupportActionBar(toolbar);
            if (getSupportActionBar() != null) {
                getSupportActionBar().setDisplayHomeAsUpEnabled(true);
                getSupportActionBar().setTitle(R.string.apps);
            }
            toolbar.setNavigationOnClickListener(v -> finish());
        }

        RecyclerView apps = findViewById(R.id.apps_recycler_view);
        if (apps != null) {
            apps.setAdapter(new EmptyAppsAdapter());
        }

        View error = findViewById(R.id.error_layout);
        if (error != null) {
            error.setVisibility(View.GONE);
        }

        ExtendedFloatingActionButton actions = findViewById(R.id.btn_actions);
        if (actions != null) {
            actions.setOnClickListener(v ->
                    startActivity(new android.content.Intent(this,
                            com.bare.appslist.ui.listbatch.AppsBatchActivity.class)));
        }

        View drawerContainer = findViewById(R.id.drawer_container);
        if (drawerContainer != null && drawerContainer.getParent() instanceof DrawerLayout) {
            DrawerLayout drawer = (DrawerLayout) drawerContainer.getParent();
            drawer.setDrawerLockMode(DrawerLayout.LOCK_MODE_UNLOCKED, drawerContainer);
        }
    }

    @Override
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }

    private static final class EmptyAppsAdapter extends RecyclerView.Adapter<EmptyAppsAdapter.Holder> {
        @Override
        public Holder onCreateViewHolder(android.view.ViewGroup parent, int viewType) {
            android.widget.TextView view = new android.widget.TextView(parent.getContext());
            int p = (int) (parent.getResources().getDisplayMetrics().density * 24f);
            view.setPadding(p, p, p, p);
            view.setText(R.string.apps_list_pending);
            return new Holder(view);
        }

        @Override public void onBindViewHolder(Holder holder, int position) {}

        @Override public int getItemCount() { return 1; }

        static final class Holder extends RecyclerView.ViewHolder {
            Holder(View itemView) { super(itemView); }
        }
    }
}
