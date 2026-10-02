package com.bare.cloud.diagnostics;

import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public final class CloudDiagnosticsActivity extends AppCompatActivity {
    private String latestReport;
    private boolean latestReportHasFailures;

    @Override protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.cloud_diagnostics_activity);

        androidx.appcompat.widget.Toolbar toolbar = findViewById(R.id.toolbar);
        if (toolbar != null) {
            setSupportActionBar(toolbar);
            toolbar.setNavigationOnClickListener(v -> finish());
        }

        RecyclerView rv = findViewById(R.id.recycler_view);
        rv.setLayoutManager(new LinearLayoutManager(this));
        rv.setAdapter(new Adapter());

        findViewById(R.id.btn_connect_service).setOnClickListener(
                v -> boundary(R.string.connect_cloud_account));
        findViewById(R.id.btn_run_diagnostics).setOnClickListener(
                v -> boundary(R.string.run_diagnostics));

        if (state != null) {
            latestReport = state.getString("key_latest_report_markdown");
            latestReportHasFailures = state.getBoolean("key_latest_report_has_failures", false);
        }
    }

    /**
     * F35 presentation input. F102 owns diagnostic test execution/report generation.
     */
    public void renderReport(@Nullable String reportMarkdown, boolean hasFailures) {
        latestReport = reportMarkdown;
        latestReportHasFailures = hasFailures;
    }

    public String getLatestReport() {
        return latestReport;
    }

    public boolean hasLatestReportFailures() {
        return latestReportHasFailures;
    }

    private void boundary(int title) {
        new MaterialAlertDialogBuilder(this)
                .setTitle(title)
                .setMessage(R.string.p3_cloud_diagnostics_boundary)
                .setPositiveButton(R.string.close, null)
                .show();
    }

    @Override protected void onSaveInstanceState(Bundle outState) {
        outState.putString("key_latest_report_markdown", latestReport);
        outState.putBoolean("key_latest_report_has_failures", latestReportHasFailures);
        super.onSaveInstanceState(outState);
    }

    static final class Adapter extends RecyclerView.Adapter<Holder> {
        final String[] titles = {
                "Internet connectivity",
                "Supabase Database connection",
                "Account access",
                "Large upload/download/delete",
                "Multithreaded download"
        };
        final String[] summaries = {
                "Checks device internet access before diagnostics run",
                "Checks Supabase-backed cloud metadata connectivity",
                "Checks account and BΛR☰ folder access",
                "Verifies the large temporary transfer round trip",
                "Checks multi-connection download behavior"
        };

        public Holder onCreateViewHolder(android.view.ViewGroup parent, int type) {
            return new Holder(android.view.LayoutInflater.from(parent.getContext())
                    .inflate(R.layout.cloud_diagnostics_test_item, parent, false));
        }

        public void onBindViewHolder(Holder holder, int position) {
            holder.title.setText(titles[position]);
            holder.subtitle.setText(summaries[position]);
            holder.status.setText(R.string.diagnostic_pending);
        }

        public int getItemCount() {
            return titles.length;
        }
    }

    static final class Holder extends RecyclerView.ViewHolder {
        android.widget.TextView title, subtitle, status;
        Holder(android.view.View view) {
            super(view);
            title = view.findViewById(R.id.tv_title);
            subtitle = view.findViewById(R.id.tv_subtitle);
            status = view.findViewById(R.id.tv_status);
        }
    }
}
