package com.bare
import android.os.Bundle
import android.view.Gravity
import android.widget.LinearLayout
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
class PremiumActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val root=LinearLayout(this).apply {
            orientation=LinearLayout.VERTICAL
            setBackgroundColor(getColor(R.color.bare_background))
            setPadding(24,24,24,24)
        }
        root.addView(TextView(this).apply {
            text=getString(R.string.premium_title)
            textSize=20f
            setTextColor(getColor(R.color.bare_text))
        })
        root.addView(TextView(this).apply {
            text=getString(R.string.premium_description)
            textSize=15f
            setTextColor(getColor(R.color.bare_secondary))
        })
        root.addView(TextView(this).apply {
            text="✓  "+getString(R.string.premium_access)
            textSize=16f
            setTextColor(getColor(R.color.bare_text))
            gravity=Gravity.CENTER_VERTICAL
        })
        setContentView(root)
    }
}
