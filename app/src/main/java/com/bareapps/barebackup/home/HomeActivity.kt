package com.bareapps.barebackup.home

import android.content.Intent
import android.os.Bundle
import android.view.View
import android.widget.ImageView
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentPagerAdapter
import com.bareapps.barebackup.R
import com.bareapps.barebackup.appslist.ui.list.AppListActivity
import com.bareapps.barebackup.home.search.HomeSearchActivity
import com.bareapps.barebackup.views.NoSwipeViewPager
import com.google.android.material.appbar.MaterialToolbar
import com.google.android.material.bottomnavigation.BottomNavigationView

class HomeActivity : AppCompatActivity() {
    private lateinit var pager: NoSwipeViewPager
    private lateinit var navigation: BottomNavigationView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.home_activity)

        val toolbar = findViewById<MaterialToolbar>(R.id.toolbar)
        setSupportActionBar(toolbar)
        supportActionBar?.setDisplayShowTitleEnabled(false)
        findViewById<TextView>(R.id.tv_barebackup).text =
            packageManager.getApplicationLabel(applicationInfo).toString()
        findViewById<ImageView>(R.id.iv_user).setImageResource(R.drawable.ic_user_default)

        pager = findViewById(R.id.viewPager)
        navigation = findViewById(R.id.primaryNavigation)
        pager.offscreenPageLimit = 3
        pager.adapter = object : FragmentPagerAdapter(
            supportFragmentManager, BEHAVIOR_RESUME_ONLY_CURRENT_FRAGMENT
        ) {
            override fun getCount() = TAB_COUNT

            override fun getItem(position: Int): Fragment = when (position) {
                TAB_HOME -> DashboardFragment()
                TAB_CLOUD -> CloudInfoFragment()
                TAB_SCHEDULE -> ScheduleHomeFragment()
                TAB_ACCOUNT -> AccountFragment()
                else -> error("No home tab for position $position")
            }
        }

        navigation.setOnItemSelectedListener { item ->
            val index = when (item.itemId) {
                R.id.nav_home -> TAB_HOME
                R.id.nav_cloud -> TAB_CLOUD
                R.id.nav_schedule -> TAB_SCHEDULE
                R.id.nav_account -> TAB_ACCOUNT
                else -> return@setOnItemSelectedListener false
            }
            pager.currentItem = index
            true
        }
        navigation.setOnItemReselectedListener {
            pager.getChildAt(pager.currentItem)?.requestFocus()
        }
        findViewById<ImageView>(R.id.iv_user).setOnClickListener {
            navigation.selectedItemId = R.id.nav_account
        }
        findViewById<View>(R.id.search_button).setOnClickListener {
            startActivity(Intent(this, AppListActivity::class.java).putExtra(AppListActivity.EXTRA_FOCUS_SEARCH, true))
        }

        val restoredId = savedInstanceState?.getInt(KEY_SELECTED_TAB) ?: R.id.nav_home
        navigation.selectedItemId = restoredId
    }

    fun selectCloudTab() {
        navigation.selectedItemId = R.id.nav_cloud
        pager.currentItem = TAB_CLOUD
    }

    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        setIntent(intent)
        if (intent.getBooleanExtra(EXTRA_OPEN_CLOUD_TAB, false)) selectCloudTab()
    }

    override fun onSaveInstanceState(outState: Bundle) {
        outState.putInt(KEY_SELECTED_TAB, navigation.selectedItemId)
        super.onSaveInstanceState(outState)
    }

    companion object {
        const val EXTRA_OPEN_CLOUD_TAB = "com.bareapps.barebackup.extra.OPEN_CLOUD_TAB"
        private const val KEY_SELECTED_TAB = "saved_fragment"
        private const val TAB_COUNT = 4
        private const val TAB_HOME = 0
        private const val TAB_CLOUD = 1
        private const val TAB_SCHEDULE = 2
        private const val TAB_ACCOUNT = 3
    }
}
