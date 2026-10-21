package com.bareapps.barebackup.home

import android.os.Bundle
import android.view.View
import android.widget.ImageView
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentPagerAdapter
import com.bareapps.barebackup.R
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
            override fun getCount() = 4
            override fun getItem(position: Int): Fragment = HomeTabFragment.newInstance(
                when (position) {
                    0 -> R.layout.dash_fragment
                    1 -> R.layout.cloud_info_fragment
                    2 -> R.layout.schedule_fragment
                    else -> R.layout.account_fragment
                }
            )
        }

        navigation.setOnItemSelectedListener { item ->
            val index = when (item.itemId) {
                R.id.nav_home -> 0
                R.id.nav_cloud -> 1
                R.id.nav_schedule -> 2
                R.id.nav_account -> 3
                else -> return@setOnItemSelectedListener false
            }
            pager.currentItem = index
            true
        }
        navigation.setOnItemReselectedListener {
            val currentPage = pager.getChildAt(pager.currentItem)
            currentPage?.requestFocus()
        }
        findViewById<ImageView>(R.id.iv_user).setOnClickListener {
            navigation.selectedItemId = R.id.nav_account
        }
        findViewById<View>(R.id.search_button).setOnClickListener {
            Toast.makeText(this, R.string.intro_feature_not_available_yet, Toast.LENGTH_SHORT).show()
        }

        val restoredId = savedInstanceState?.getInt(KEY_SELECTED_TAB) ?: R.id.nav_home
        navigation.selectedItemId = restoredId
    }

    override fun onSaveInstanceState(outState: Bundle) {
        outState.putInt(KEY_SELECTED_TAB, navigation.selectedItemId)
        super.onSaveInstanceState(outState)
    }

    companion object { private const val KEY_SELECTED_TAB = "saved_fragment" }
}
