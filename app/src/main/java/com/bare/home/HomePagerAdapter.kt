package com.bare.home

import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentManager
import androidx.fragment.app.FragmentPagerAdapter
import com.bare.home.pages.AccountFragment
import com.bare.home.pages.CloudFragment
import com.bare.home.pages.DashboardFragment
import com.bare.home.pages.ScheduleFragment

class HomePagerAdapter(fm: FragmentManager) : FragmentPagerAdapter(fm, BEHAVIOR_RESUME_ONLY_CURRENT_FRAGMENT) {
    override fun getCount(): Int = 4
    override fun getItem(position: Int): Fragment = when (position) {
        0 -> DashboardFragment()
        1 -> CloudFragment()
        2 -> ScheduleFragment()
        3 -> AccountFragment()
        else -> DashboardFragment()
    }
}