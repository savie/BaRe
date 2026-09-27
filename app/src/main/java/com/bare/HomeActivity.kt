package com.bare
import android.os.Bundle
import android.view.Gravity
import android.widget.LinearLayout
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
class HomeActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val root=LinearLayout(this).apply {
            orientation=LinearLayout.VERTICAL
            gravity=Gravity.CENTER
            setBackgroundColor(getColor(R.color.bare_background))
            setPadding(32,32,32,32)
        }
        root.addView(TextView(this).apply {
            text=getString(R.string.home_title)
            textSize=24f
            gravity=Gravity.CENTER
            setTextColor(getColor(R.color.bare_text))
        })
        root.addView(TextView(this).apply {
            text=getString(R.string.home_subtitle)
            textSize=15f
            gravity=Gravity.CENTER
            setTextColor(getColor(R.color.bare_secondary))
        })
        setContentView(root)
    }
}
