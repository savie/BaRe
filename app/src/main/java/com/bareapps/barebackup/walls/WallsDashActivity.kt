package com.bareapps.barebackup.walls

import android.app.WallpaperManager
import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.drawable.Drawable
import android.net.Uri
import android.os.Bundle
import android.view.ViewGroup
import android.widget.LinearLayout
import android.widget.TextView
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import com.bareapps.barebackup.R
import com.bareapps.barebackup.common.CloudStorageDestination
import com.bareapps.barebackup.home.DashboardFragment
import com.google.android.material.appbar.MaterialToolbar
import com.google.android.material.button.MaterialButton
import java.io.ByteArrayOutputStream

/** Wallpaper image export/import through WallpaperManager and user-selected document URIs. */
class WallsDashActivity : AppCompatActivity() {
    private val exportImage = registerForActivityResult(ActivityResultContracts.CreateDocument("image/png")) { uri ->
        if (uri != null) exportWallpaper(uri)
    }
    private val importImage = registerForActivityResult(ActivityResultContracts.OpenDocument()) { uri ->
        if (uri != null) importWallpaper(uri)
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(16), 0, dp(16), dp(16))
        }
        root.addView(MaterialToolbar(this).apply {
            title = getString(R.string.wallpapers)
            navigationIcon = getDrawable(R.drawable.ic_arrow_back)
            setNavigationOnClickListener { finish() }
        })
        root.addView(TextView(this).apply {
            text = "Export the current system wallpaper as PNG or apply an image selected from device storage."
            setPadding(0, dp(12), 0, dp(16))
        })
        root.addView(MaterialButton(this).apply {
            text = "Back up current wallpaper"
            setOnClickListener { requestWallpaperExport() }
        })
        root.addView(MaterialButton(this).apply {
            text = "Restore wallpaper from image"
            setOnClickListener { importImage.launch(arrayOf("image/*")) }
        })
        setContentView(root)
    }

    private fun requestWallpaperExport() {
        val destination = if (intent.getBooleanExtra(DashboardFragment.EXTRA_USE_CLOUD, false)) CloudStorageDestination.createFile(this, "image/png", "bare-wallpaper.png") else null
        if (destination != null) exportWallpaper(destination) else exportImage.launch("bare-wallpaper.png")
    }

    private fun exportWallpaper(destination: Uri) {
        lifecycleScope.launch(Dispatchers.IO) {
            val result = runCatching {
                val drawable = WallpaperManager.getInstance(this@WallsDashActivity).drawable
                    ?: error("The current wallpaper is not readable on this device")
                val bitmap = drawable.toBitmapForExport()
                try {
                    contentResolver.openOutputStream(destination).use { raw ->
                        val output = checkNotNull(raw) { "Could not open destination" }
                        check(bitmap.compress(Bitmap.CompressFormat.PNG, 100, output)) { "PNG encoding failed" }
                    }
                } finally {
                    bitmap.recycle()
                }
            }
            runOnUiThread {
                if (result.isSuccess) Toast.makeText(this@WallsDashActivity, "Wallpaper backup saved", Toast.LENGTH_LONG).show()
                else Toast.makeText(this@WallsDashActivity, "Wallpaper backup failed: " + (result.exceptionOrNull()?.message ?: "unavailable"), Toast.LENGTH_LONG).show()
            }
        }
    }
    private fun importWallpaper(source: Uri) {
        lifecycleScope.launch(Dispatchers.IO) {
            val result = runCatching {
                contentResolver.openInputStream(source).use { input ->
                    checkNotNull(input) { "Could not open image" }.use { stream ->
                        WallpaperManager.getInstance(this@WallsDashActivity).setStream(stream, null, true, WallpaperManager.FLAG_SYSTEM)
                    }
                }
            }
            runOnUiThread {
                if (result.isSuccess) Toast.makeText(this@WallsDashActivity, "System wallpaper updated", Toast.LENGTH_LONG).show()
                else Toast.makeText(this@WallsDashActivity, "Wallpaper restore failed: " + (result.exceptionOrNull()?.message ?: "unsupported image"), Toast.LENGTH_LONG).show()
            }
        }
    }
    private fun Drawable.toBitmapForExport(): Bitmap {
        val width = intrinsicWidth.takeIf { it > 0 } ?: resources.displayMetrics.widthPixels
        val height = intrinsicHeight.takeIf { it > 0 } ?: resources.displayMetrics.heightPixels
        val bitmap = Bitmap.createBitmap(width.coerceAtMost(4096), height.coerceAtMost(4096), Bitmap.Config.ARGB_8888)
        Canvas(bitmap).also { canvas ->
            setBounds(0, 0, canvas.width, canvas.height)
            draw(canvas)
        }
        return bitmap
    }

    private fun dp(value: Int) = (value * resources.displayMetrics.density).toInt()
}
