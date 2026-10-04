package com.bare.home;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;

import android.content.Intent;

import com.bare.R;
import com.bare.home.search.HomeSearchActivity;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.bottomnavigation.BottomNavigationView;

public final class HomeActivity extends AppCompatActivity {
    private static final int[] NAV_IDS = {
            R.id.nav_home, R.id.nav_cloud, R.id.nav_schedule, R.id.nav_account
    };

    private NoSwipeViewPager viewPager;
    private BottomNavigationView navigation;

    @Override
    protected void onCreate(Bundle state) {
        super.onCreate(state);
        overridePendingTransition(0, 0);
        setContentView(R.layout.home_activity);

        MaterialToolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayShowTitleEnabled(false);
        }

        viewPager = findViewById(R.id.viewPager);
        navigation = findViewById(R.id.primaryNavigation);

        View search = findViewById(R.id.search_button);
        if (search != null) {
            search.setOnClickListener(v ->
                    startActivity(new Intent(this, HomeSearchActivity.class)));
        }
        ImageView user = findViewById(R.id.iv_user);
        if (user != null) {
            user.setOnClickListener(v -> navigation.setSelectedItemId(R.id.nav_account));
        }

        viewPager.setOffscreenPageLimit(3);
        FragmentManager manager = getSupportFragmentManager();
        viewPager.setAdapter(new HomePagerAdapter(manager));

        navigation.setOnItemSelectedListener(item -> {
            int position = positionFor(item.getItemId());
            if (position < 0) return false;
            viewPager.setCurrentItem(position, false);
            return true;
        });
        navigation.setOnItemReselectedListener(item -> {
            int position = positionFor(item.getItemId());
            if (position >= 0) {
                viewPager.setCurrentItem(position, false);
                scrollCurrentPageToTop(position);
            }
        });

        viewPager.addOnPageChangeListener(new ViewPager.SimpleOnPageChangeListener() {
            @Override public void onPageSelected(int position) {
                if (position >= 0 && position < NAV_IDS.length
                        && navigation.getSelectedItemId() != NAV_IDS[position]) {
                    navigation.setSelectedItemId(NAV_IDS[position]);
                }
            }
        });

        int initial = state == null ? 0 :
                positionFor(state.getInt("saved_fragment", R.id.nav_home));
        if (initial < 0) initial = 0;
        navigation.setSelectedItemId(NAV_IDS[initial]);
        viewPager.setCurrentItem(initial, false);
    }

    private void scrollCurrentPageToTop(int position) {
        if (viewPager == null) return;
        View page = viewPager.getChildAt(position);
        if (page instanceof NestedScrollView) {
            NestedScrollView scroll = (NestedScrollView) page;
            scroll.smoothScrollTo(0, 0);
            return;
        }
        if (page instanceof android.view.ViewGroup) {
            android.view.ViewGroup group = (android.view.ViewGroup) page;
            for (int i = 0; i < group.getChildCount(); i++) {
                View child = group.getChildAt(i);
                if (child instanceof NestedScrollView) {
                    ((NestedScrollView) child).smoothScrollTo(0, 0);
                    return;
                }
            }
        }
    }

    private int positionFor(int itemId) {
        for (int i = 0; i < NAV_IDS.length; i++) {
            if (NAV_IDS[i] == itemId) return i;
        }
        return -1;
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (viewPager != null && viewPager.l0 != null) {
            viewPager.l0.clear();
        }
    }

    @Override
    protected void onSaveInstanceState(@NonNull Bundle outState) {
        outState.putInt("saved_fragment", navigation.getSelectedItemId());
        super.onSaveInstanceState(outState);
    }
}
