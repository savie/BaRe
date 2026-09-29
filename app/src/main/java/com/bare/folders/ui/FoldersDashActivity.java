package com.bare.folders.ui;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;

import com.bare.R;
import com.google.android.material.tabs.TabLayout;

public final class FoldersDashActivity extends AppCompatActivity {
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

        int section = getIntent() != null ? getIntent().getIntExtra("KEY_SECTION", 0) : 0;
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

    private static final class FolderSectionsAdapter extends PagerAdapter {
        @Override public int getCount() { return 2; }

        @Override public Object instantiateItem(ViewGroup container, int position) {
            TextView view = new TextView(container.getContext());
            view.setText(position == 0 ? R.string.create_your_first_folder_msg : R.string.p3_activity_boundary);
            view.setTextSize(16);
            view.setPadding(48, 48, 48, 48);
            container.addView(view, new ViewGroup.LayoutParams(-1, -1));
            return view;
        }

        @Override public void destroyItem(ViewGroup container, int position, Object object) {
            container.removeView((View) object);
        }

        @Override public boolean isViewFromObject(View view, Object object) {
            return view == object;
        }
    }
}
