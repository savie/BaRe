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

        findViewById<TextView>(R.id.tv_premium).visibility = View.GONE

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
            pager.post { findViewById<View>(R.id.viewPager)?.scrollTo(0, 0) }
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

    override fun onSaveInstanceState(outState: Bundle) {
        outState.putInt(KEY_SAVED_FRAGMENT, navigation.selectedItemId)
        super.onSaveInstanceState(outState)
    }

    companion object {
        private const val KEY_SAVED_FRAGMENT = "saved_fragment"
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