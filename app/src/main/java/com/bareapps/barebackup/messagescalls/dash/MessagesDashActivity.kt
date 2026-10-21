package com.bareapps.barebackup.messagescalls.dash

import android.app.role.RoleManager
import android.content.ContentValues
import android.content.Intent
import android.database.Cursor
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.provider.Telephony
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
import com.bareapps.barebackup.common.CsvBackupUtils
import com.bareapps.barebackup.common.CloudStorageDestination
import com.bareapps.barebackup.home.DashboardFragment
import com.google.android.material.appbar.MaterialToolbar
import com.google.android.material.button.MaterialButton

/** Local SMS export/import using Android's SMS provider and its default-app restrictions. */
class MessagesDashActivity : AppCompatActivity() {
    private var pendingPermissionAction: (() -> Unit)? = null
    private val exportCsv = registerForActivityResult(ActivityResultContracts.CreateDocument("text/csv")) { uri ->
        if (uri != null) exportMessages(uri)
    }
    private val importCsv = registerForActivityResult(ActivityResultContracts.OpenDocument()) { uri ->
        if (uri != null) restoreMessages(uri)
    }
    private val smsRole = registerForActivityResult(ActivityResultContracts.StartActivityForResult()) { result ->
        val action = pendingPermissionAction
        pendingPermissionAction = null
        if (result.resultCode == RESULT_OK) action?.invoke()
        else Toast.makeText(this, "Default SMS role was not granted; restore was cancelled", Toast.LENGTH_LONG).show()
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(16), 0, dp(16), dp(16))
        }
        root.addView(MaterialToolbar(this).apply {
            title = getString(R.string.messages)
            navigationIcon = getDrawable(R.drawable.ic_arrow_back)
            setNavigationOnClickListener { finish() }
        })
        root.addView(TextView(this).apply {
            text = "Export and restore SMS through the Android SMS provider. Restoring messages requires BΛR☰ to be the default SMS app."
            setPadding(0, dp(12), 0, dp(16))
        })
        root.addView(MaterialButton(this).apply {
            text = "Export SMS to CSV"
            setOnClickListener { withSmsPermission { requestExport() } }
        })
        root.addView(MaterialButton(this).apply {
            text = "Restore SMS from CSV"
            setOnClickListener { withSmsPermission { importCsv.launch(arrayOf("text/csv", "text/comma-separated-values", "text/plain")) } }
        })
        setContentView(root)
        when (intent.getStringExtra(DashboardFragment.EXTRA_OPERATION)) {
            DashboardFragment.OP_BACKUP -> withSmsPermission { requestExport() }
            DashboardFragment.OP_RESTORE -> withSmsPermission {
                importCsv.launch(arrayOf("text/csv", "text/comma-separated-values", "text/plain"))
            }
        }
    }

    private fun withSmsPermission(action: () -> Unit) {
        if (checkSelfPermission(android.Manifest.permission.READ_SMS) == android.content.pm.PackageManager.PERMISSION_GRANTED) {
            action()
        } else {
            pendingPermissionAction = action
            requestPermissions(arrayOf(android.Manifest.permission.READ_SMS), REQUEST_SMS)
        }
    }

    @Deprecated("Uses the platform permission callback for compatibility with API 26+")
    override fun onRequestPermissionsResult(requestCode: Int, permissions: Array<out String>, grantResults: IntArray) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults)
        if (requestCode != REQUEST_SMS) return
        val action = pendingPermissionAction
        pendingPermissionAction = null
        if (grantResults.firstOrNull() == android.content.pm.PackageManager.PERMISSION_GRANTED) action?.invoke()
        else Toast.makeText(this, "SMS permission was not granted", Toast.LENGTH_LONG).show()
    }

    private fun requestExport() {
        val destination = CloudStorageDestination.createFile(this, "text/csv", "bare-messages.csv")
        if (destination != null) exportMessages(destination) else exportCsv.launch("bare-messages.csv")
    }

    private fun exportMessages(uri: Uri) {
        lifecycleScope.launch(Dispatchers.IO) {
            val result = runCatching {
                val columns = arrayOf("address", "body", "date", "type")
                contentResolver.query(Telephony.Sms.CONTENT_URI, columns, null, null, "date ASC").use { cursor ->
                    checkNotNull(cursor) { "SMS provider did not return a cursor" }
                    contentResolver.openOutputStream(uri).use { raw ->
                        val output = checkNotNull(raw) { "Could not open export destination" }
                        output.bufferedWriter(Charsets.UTF_8).use { writer ->
                            writer.appendLine(CsvBackupUtils.row(listOf("address", "body", "date", "type")))
                            while (cursor.moveToNext()) {
                                writer.appendLine(CsvBackupUtils.row(columns.map { name -> cursor.getString(cursor.getColumnIndexOrThrow(name)) }))
                            }
                        }
                    }
                }
            }
            runOnUiThread {
                if (result.isSuccess) Toast.makeText(this@MessagesDashActivity, "SMS export completed", Toast.LENGTH_LONG).show()
                else Toast.makeText(this@MessagesDashActivity, "SMS export failed: " + (result.exceptionOrNull()?.message ?: "I/O error"), Toast.LENGTH_LONG).show()
            }
        }
    }

        private fun restoreMessages(uri: Uri) {
        if (Telephony.Sms.getDefaultSmsPackage(this) != packageName) {
            if (Build.VERSION.SDK_INT >= 29) {
                val roleManager = getSystemService(RoleManager::class.java)
                if (roleManager != null && roleManager.isRoleAvailable(RoleManager.ROLE_SMS)) {
                    pendingPermissionAction = { restoreMessages(uri) }
                    smsRole.launch(roleManager.createRequestRoleIntent(RoleManager.ROLE_SMS))
                } else {
                    Toast.makeText(this, "Set BΛR☰ as the default SMS app before restoring messages", Toast.LENGTH_LONG).show()
                }
            } else {
                Toast.makeText(this, "Set BΛR☰ as the default SMS app before restoring messages", Toast.LENGTH_LONG).show()
            }
            return
        }
        lifecycleScope.launch(Dispatchers.IO) {
            val result = runCatching {
                contentResolver.openInputStream(uri).use { raw ->
                    val input = checkNotNull(raw) { "Could not open CSV" }
                    input.bufferedReader(Charsets.UTF_8).use { reader ->
                        var isHeader = true
                        CsvBackupUtils.forEachRow(reader) { fields ->
                            if (isHeader) {
                                isHeader = false
                            } else if (fields.size >= 4) {
                                val values = ContentValues().apply {
                                    put("address", fields[0])
                                    put("body", fields[1])
                                    put("date", fields[2].toLongOrNull() ?: System.currentTimeMillis())
                                    put("type", fields[3].toIntOrNull() ?: Telephony.Sms.MESSAGE_TYPE_INBOX)
                                    put("read", 1)
                                }
                                contentResolver.insert(Telephony.Sms.CONTENT_URI, values)
                            }
                        }
                    }
                }
            }
            runOnUiThread {
                if (result.isSuccess) Toast.makeText(this@MessagesDashActivity, "SMS restore completed", Toast.LENGTH_LONG).show()
                else Toast.makeText(this@MessagesDashActivity, "SMS restore failed: " + (result.exceptionOrNull()?.message ?: "I/O error"), Toast.LENGTH_LONG).show()
            }
        }
    }
    private fun dp(value: Int) = (value * resources.displayMetrics.density).toInt()

    companion object {
        private const val REQUEST_SMS = 5101
    }
}
