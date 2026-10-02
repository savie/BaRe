package com.bare.settings;

import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;

import java.util.ArrayList;
import java.util.List;

public final class LicensesActivity extends AppCompatActivity {
    private LicenseAdapter adapter;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.licenses_activity);

        Toolbar toolbar = new Toolbar(this);
        toolbar.setTitle(R.string.licenses);
        toolbar.setNavigationIcon(android.R.drawable.ic_menu_revert);
        toolbar.setNavigationOnClickListener(v -> finish());
        addContentView(toolbar, new ViewGroup.LayoutParams(-1, 56));

        adapter = new LicenseAdapter();
        ((RecyclerView) findViewById(R.id.rv_licenses)).setAdapter(adapter);
    }

    /**
     * F34 presentation input. F92 owns bundled-license parsing and row construction.
     */
    public void setLicenseRows(@Nullable List<String> rows) {
        adapter.setItems(rows);
    }

    private static final class LicenseAdapter extends RecyclerView.Adapter<LicenseHolder> {
        private final List<String> items = new ArrayList<>();

        void setItems(@Nullable List<String> rows) {
            items.clear();
            if (rows != null) {
                items.addAll(rows);
            }
            notifyDataSetChanged();
        }

        @Override
        public LicenseHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            TextView view = new TextView(parent.getContext());
            view.setPadding(32, 24, 32, 24);
            return new LicenseHolder(view);
        }

        @Override
        public void onBindViewHolder(LicenseHolder holder, int position) {
            ((TextView) holder.itemView).setText(items.get(position));
        }

        @Override
        public int getItemCount() {
            return items.size();
        }
    }

    private static final class LicenseHolder extends RecyclerView.ViewHolder {
        LicenseHolder(TextView view) {
            super(view);
        }
    }
}
