package com.bare.home;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;

public final class HomePagerAdapter extends FragmentPagerAdapter {
    public HomePagerAdapter(@NonNull FragmentManager manager) {
        super(manager, BEHAVIOR_RESUME_ONLY_CURRENT_FRAGMENT);
    }

    @NonNull
    @Override public Fragment getItem(int position) {
        switch (position) {
            case 0: return new DashboardFragment();
            case 1: return new CloudFragment();
            case 2: return new ScheduleFragment();
            case 3: return new AccountFragment();
            default: throw new IllegalArgumentException("Unknown home page: " + position);
        }
    }

    @Override public int getCount() { return 4; }
}