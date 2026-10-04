package com.bare.folders.ui;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.LinearLayout;
import com.google.android.material.button.MaterialButton;
import com.bare.folders.data.FolderItem;
import com.bare.folders.repository.LocalFolderSetupRepository;
import com.bare.folders.ui.batch.FoldersBatchActivity;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;

import com.bare.R;
import com.google.android.material.tabs.TabLayout;

public final class FoldersDashActivity extends AppCompatActivity {
    public enum FolderSection { LOCAL, CLOUD }

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.folders_dash_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setTitle(R.string.folders);
        }

        TabLayout tabs = findViewById(R.id.tabLayout);
        tabs.addTab(tabs.newTab().setText(R.string.local_folder_setups));
        tabs.addTab(tabs.newTab().setText(R.string.copy_folder_setups_from_cloud));

        ViewPager pager = findViewById(R.id.viewPager);
        pager.setAdapter(new FolderSectionsAdapter());
        tabs.addOnTabSelectedListener(new TabLayout.OnTabSelectedListener() {
            @Override public void onTabSelected(TabLayout.Tab tab) { pager.setCurrentItem(tab.getPosition(), true); }
            @Override public void onTabUnselected(TabLayout.Tab tab) {}
            @Override public void onTabReselected(TabLayout.Tab tab) {}
        });
        pager.addOnPageChangeListener(new ViewPager.SimpleOnPageChangeListener() {
            @Override public void onPageSelected(int position) {
                if (tabs.getSelectedTabPosition() != position) tabs.getTabAt(position).select();
            }
        });

        FolderSection sectionValue = getIntent() != null ? (FolderSection) getIntent().getSerializableExtra("KEY_SECTION") : null;
        if (sectionValue == null) sectionValue = FolderSection.LOCAL;
        int section = sectionValue == FolderSection.CLOUD ? 1 : 0;
        if (section >= 0 && section < tabs.getTabCount()) {
            pager.setCurrentItem(section, false);
            TabLayout.Tab tab = tabs.getTabAt(section);
            if (tab != null) tab.select();
        }
    }

    @Override
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }

    private final class FolderSectionsAdapter extends PagerAdapter {
        @Override public int getCount() { return 2; }

        @Override public Object instantiateItem(ViewGroup container, int position) {
            LinearLayout root = new LinearLayout(container.getContext());
            root.setOrientation(LinearLayout.VERTICAL);
            root.setPadding(48, 48, 48, 48);

            TextView summary = new TextView(container.getContext());
            summary.setTextSize(16);
            root.addView(summary, new LinearLayout.LayoutParams(-1, -2));

            MaterialButton action = new MaterialButton(container.getContext());
            action.setText(position == 0 ? R.string.new_folder_setup : R.string.copy_folder_setup_to_device);
            LinearLayout.LayoutParams actionParams = new LinearLayout.LayoutParams(-2, -2);
            actionParams.topMargin = 24;
            root.addView(action, actionParams);

            if (position == 0) {
                List<FolderItem> items = new LocalFolderSetupRepository(FoldersDashActivity.this).list();
                if (items.isEmpty()) {
                    summary.setText(R.string.create_your_first_folder_msg);
                } else {
                    StringBuilder text = new StringBuilder();
                    text.append(getString(R.string.folder_setups)).append(" (").append(items.size()).append(")\\n\\n");
                    for (FolderItem item : items) {
                        text.append("• ").append(item.getDisplayName())
                                .append("\\n").append(item.getSourceFolder()).append("\\n\\n");
                    }
                    summary.setText(text.toString());
                }
                action.setOnClickListener(v -> {
                    Intent intent = new Intent(FoldersDashActivity.this, FolderEditActivity.class);
                    startActivity(intent);
                });
                summary.setOnClickListener(v -> {
                    Intent intent = new Intent(FoldersDashActivity.this, FoldersBatchActivity.class);
                    intent.putExtra("action_id", "Backup");
                    startActivity(intent);
                });
            } else {
                summary.setText(R.string.p3_activity_boundary);
                action.setOnClickListener(v -> {
                    Intent intent = new Intent(FoldersDashActivity.this, FoldersBatchActivity.class);
                    intent.putExtra("action_id", "Copy folder setups");
                    startActivity(intent);
                });
            }

            container.addView(root, new ViewGroup.LayoutParams(-1, -1));
            return root;
        }

        @Override public void destroyItem(ViewGroup container, int position, Object object) {
            container.removeView((View) object);
        }

        @Override public boolean isViewFromObject(View view, Object object) {
            return view == object;
        }
    }
}
