package com.bare.notice;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class NoticeListActivity extends AppCompatActivity {
    private NoticeAdapter adapter;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.notice_list_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }

        adapter = new NoticeAdapter();
        ((RecyclerView) findViewById(R.id.rv_notices)).setAdapter(adapter);
    }

    /**
     * F34 presentation input. F92 owns loading/filtering/seen-state.
     */
    public void renderNotices(@Nullable List<NoticePresentation> notices) {
        adapter.setItems(notices);
    }

    @Override
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }

    private void openNotice(NoticePresentation notice) {
        if (notice.isLinkOnly()) {
            Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse(notice.message));
            startActivity(intent);
            return;
        }

        Intent intent = new Intent(this, NoticeViewActivity.class)
                .putExtra("extra_title", notice.title)
                .putExtra("extra_message", notice.message);
        startActivity(intent);
    }

    public static final class NoticePresentation {
        public final String id;
        public final String title;
        public final String subtitle;
        public final String message;

        public NoticePresentation(String id, String title, String subtitle, String message) {
            this.id = id;
            this.title = title;
            this.subtitle = subtitle;
            this.message = message;
        }

        public boolean isLinkOnly() {
            if (message == null) {
                return false;
            }
            String value = message.trim().toLowerCase();
            return value.startsWith("http://") || value.startsWith("https://");
        }
    }

    private final class NoticeAdapter extends RecyclerView.Adapter<NoticeHolder> {
        private final List<NoticePresentation> items = new ArrayList<>();

        void setItems(@Nullable List<NoticePresentation> notices) {
            items.clear();
            if (notices != null) {
                items.addAll(notices);
            }
            notifyDataSetChanged();
        }

        @Override
        public NoticeHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            TextView view = new TextView(parent.getContext());
            view.setPadding(32, 24, 32, 24);
            return new NoticeHolder(view);
        }

        @Override
        public void onBindViewHolder(NoticeHolder holder, int position) {
            NoticePresentation notice = items.get(position);
            TextView view = (TextView) holder.itemView;
            String title = notice.title == null ? "" : notice.title;
            String subtitle = notice.subtitle == null ? "" : notice.subtitle;
            view.setText(subtitle.isEmpty() ? title : title + "\n" + subtitle);
            view.setOnClickListener(v -> openNotice(notice));
        }

        @Override
        public int getItemCount() {
            return items.size();
        }
    }

    private static final class NoticeHolder extends RecyclerView.ViewHolder {
        NoticeHolder(TextView view) {
            super(view);
        }
    }
}
