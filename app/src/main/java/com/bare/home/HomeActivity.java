package com.bare.home;

import android.os.Bundle;
import android.view.View;

import androidx.activity.EdgeToEdge;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;

import com.bare.R;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.appbar.MaterialToolbar;

public final class HomeActivity extends AppCompatActivity {
    private static final int[] NAV_IDS = {
            R.id.nav_home,
            R.id.nav_cloud,
            R.id.nav_schedule,
            R.id.nav_account
    };

    private ViewPager2 viewPager;
    private BottomNavigationView navigation;

    @Override
    protected void onCreate(Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.home_activity);

        MaterialToolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        viewPager = findViewById(R.id.viewPager);
        navigation = findViewById(R.id.primaryNavigation);

        viewPager.setOffscreenPageLimit(3);
        viewPager.setAdapter(new HomePagerAdapter(this));

        navigation.setOnItemSelectedListener(item -> {
            int position = positionFor(item.getItemId());
            if (position < 0) {
                return false;
            }
            viewPager.setCurrentItem(position, false);
            return true;
        });

        viewPager.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() {
            @Override
            public void onPageSelected(int position) {
                if (position >= 0 && position < NAV_IDS.length
                        && navigation.getSelectedItemId() != NAV_IDS[position]) {
                    navigation.setSelectedItemId(NAV_IDS[position]);
                }
            }
        });

        int initial = 0;
        if (state != null) {
            initial = state.getInt("saved_fragment", R.id.nav_home);
            initial = Math.max(0, positionFor(initial));
        }
        navigation.setSelectedItemId(NAV_IDS[initial]);
        viewPager.setCurrentItem(initial, false);
    }

    private int positionFor(int itemId) {
        for (int i = 0; i < NAV_IDS.length; i++) {
            if (NAV_IDS[i] == itemId) {
                return i;
            }
        }
        return -1;
    }

    @Override
    protected void onSaveInstanceState(@NonNull Bundle outState) {
        super.onSaveInstanceState(outState);
        outState.putInt("saved_fragment", navigation.getSelectedItemId());
    }

    private static final class HomePagerAdapter extends FragmentStateAdapter {
        HomePagerAdapter(HomeActivity activity) {
            super(activity);
        }

        @NonNull
        @Override
        public Fragment createFragment(int position) {
            return HomePlaceholderFragment.newInstance(position);
        }

        @Override
        public int getItemCount() {
            return NAV_IDS.length;
        }
    }
}
