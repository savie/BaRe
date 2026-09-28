package com.bare.home

import android.content.Intent
import android.graphics.Rect
import android.os.Bundle
import android.text.SpannableString
import android.text.style.ForegroundColorSpan
import android.view.View
import android.widget.ImageView
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.core.widget.NestedScrollView
import android.view.ViewGroup
import androidx.core.content.ContextCompat
import androidx.viewpager.widget.ViewPager
import com.bare.R
import com.bare.home.search.HomeSearchActivity
import com.google.android.material.appbar.MaterialToolbar
import com.google.android.material.bottomnavigation.BottomNavigationView
import com.google.android.material.card.MaterialCardView

class HomeActivity : AppCompatActivity() {
    private lateinit var pager: ViewPager
    private lateinit var navigation: BottomNavigationView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        overridePendingTransition(0, 0)
        setContentView(R.layout.home_activity)

        val toolbar = findViewById<MaterialToolbar>(R.id.toolbar)
        setSupportActionBar(toolbar)
        supportActionBar?.setDisplayShowTitleEnabled(false)

        val title = findViewById<TextView>(R.id.tv_swiftbackup)
        val brand = SpannableString("BΛR☰")
        if (brand.length > 0) {
            brand.setSpan(
                ForegroundColorSpan(ContextCompat.getColor(this, R.color.primary)),
                0,
                brand.length,
                SpannableString.SPAN_EXCLUSIVE_EXCLUSIVE
            )
        }
        title.text = brand

        findViewById<TextView>(R.id.tv_premium).apply {
            text = getString(R.string.premium).uppercase(java.util.Locale.ENGLISH)
            visibility = View.VISIBLE
        }

        findViewById<View>(R.id.app_logo_container).setOnLongClickListener {
            val prefs = getSharedPreferences(PREFS_NAME, MODE_PRIVATE)
            val compact = !prefs.getBoolean(KEY_COMPACT_STORAGE_INFO, false)
            prefs.edit().putBoolean(KEY_COMPACT_STORAGE_INFO, compact).apply()
            true
        }

        findViewById<ImageView>(R.id.iv_user).setOnClickListener {
            navigation.selectedItemId = R.id.nav_account
        }

        findViewById<MaterialCardView>(R.id.search_button).setOnClickListener {
            val bounds = Rect()
            val card = findViewById<View>(R.id.search_button)
            val intent = Intent(this, HomeSearchActivity::class.java)
            if (card.getGlobalVisibleRect(bounds)) {
                intent.putExtra("source_bounds", intArrayOf(bounds.left, bounds.top, bounds.right, bounds.bottom))
            }
            startActivity(intent)
            overridePendingTransition(0, 0)
        }

        pager = findViewById(R.id.viewPager)
        navigation = findViewById(R.id.primaryNavigation)
        pager.offscreenPageLimit = 3
        pager.adapter = HomePagerAdapter(supportFragmentManager)

        val saved = savedInstanceState?.getInt(KEY_SAVED_FRAGMENT, R.id.nav_home) ?: R.id.nav_home
        navigation.setOnItemSelectedListener { item ->
            val index = INDEX[item.itemId] ?: 0
            pager.currentItem = index
            true
        }
        navigation.setOnItemReselectedListener { item ->
            val index = INDEX[item.itemId] ?: 0
            pager.currentItem = index
            pager.post { scrollSelectedPageToTop(index) }
        }
        pager.addOnPageChangeListener(object : ViewPager.SimpleOnPageChangeListener() {
            override fun onPageSelected(position: Int) {
                val id = IDS.getOrElse(position) { R.id.nav_home }
                if (navigation.selectedItemId != id) navigation.menu.findItem(id).isChecked = true
            }
        })
        navigation.selectedItemId = saved

        findViewById<View>(R.id.container_btn_new_schedule).visibility = View.GONE
    }


    private fun scrollSelectedPageToTop(index: Int) {
        val page = pager.getChildAt(index)
        if (page is NestedScrollView) {
            page.smoothScrollTo(0, 0)
            return
        }
        if (page is ViewGroup) {
            for (i in 0 until page.childCount) {
                val child = page.getChildAt(i)
                if (child is NestedScrollView) {
                    child.smoothScrollTo(0, 0)
                    break
                }
            }
        }
    }

    override fun onSaveInstanceState(outState: Bundle) {
        outState.putInt(KEY_SAVED_FRAGMENT, navigation.selectedItemId)
        super.onSaveInstanceState(outState)
    }

    companion object {
        private const val KEY_SAVED_FRAGMENT = "saved_fragment"\n        private const val PREFS_NAME = "bare_preferences"\n        private const val KEY_COMPACT_STORAGE_INFO = "compact_storage_info"
        private val INDEX = mapOf(
            R.id.nav_home to 0,
            R.id.nav_cloud to 1,
            R.id.nav_schedule to 2,
            R.id.nav_account to 3
        )
        private val IDS = intArrayOf(
            R.id.nav_home,
            R.id.nav_cloud,
            R.id.nav_schedule,
            R.id.nav_account
        )
    }
}