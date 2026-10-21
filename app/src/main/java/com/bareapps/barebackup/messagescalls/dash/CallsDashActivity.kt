package com.bareapps.barebackup.messagescalls.dash

import android.content.ContentValues
import android.net.Uri
import android.os.Bundle
import android.provider.CallLog
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

/** User-initiated local call-history CSV backup and restore. */
class CallsDashActivity : AppCompatActivity() {
    private var pendingPermissionAction: (() -> Unit)? = null
    private val exportCsv = registerForActivityResult(ActivityResultContracts.CreateDocument("text/csv")) { uri ->
        if (uri != null) exportCalls(uri)
    }
    private val importCsv = registerForActivityResult(ActivityResultContracts.OpenDocument()) { uri ->
        if (uri != null) restoreCalls(uri)
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(16), 0, dp(16), dp(16))
        }
        root.addView(MaterialToolbar(this).apply {
            title = getString(R.string.call_logs)
            navigationIcon = getDrawable(R.drawable.ic_arrow_back)
            setNavigationOnClickListener { finish() }
        })
        root.addView(TextView(this).apply {
            text = "Export call history to a user-selected CSV file, or restore a previous CSV. Android permissions and device policy may restrict write access."
            setPadding(0, dp(12), 0, dp(16))
        })
        root.addView(MaterialButton(this).apply {
            text = "Export call log to CSV"
            setOnClickListener { withPermission(android.Manifest.permission.READ_CALL_LOG) { requestExport() } }
        })
        root.addView(MaterialButton(this).apply {
            text = "Restore call log from CSV"
            setOnClickListener { withPermission(android.Manifest.permission.WRITE_CALL_LOG) { importCsv.launch(arrayOf("text/csv", "text/comma-separated-values", "text/plain")) } }
        })
        setContentView(root)
        when (intent.getStringExtra(DashboardFragment.EXTRA_OPERATION)) {
            DashboardFragment.OP_BACKUP -> withPermission(android.Manifest.permission.READ_CALL_LOG) {
                requestExport()
            }
            DashboardFragment.OP_RESTORE -> withPermission(android.Manifest.permission.WRITE_CALL_LOG) {
                importCsv.launch(arrayOf("text/csv", "text/comma-separated-values", "text/plain"))
            }
        }
    }

    private fun withPermission(permission: String, action: () -> Unit) {
        if (checkSelfPermission(permission) == android.content.pm.PackageManager.PERMISSION_GRANTED) {
            action()
        } else {
            pendingPermissionAction = action
            requestPermissions(arrayOf(permission), REQUEST_CALLS)
        }
    }

    @Deprecated("Uses the platform permission callback for API 26+ compatibility")
    override fun onRequestPermissionsResult(requestCode: Int, permissions: Array<out String>, grantResults: IntArray) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults)
        if (requestCode != REQUEST_CALLS) return
        val action = pendingPermissionAction
        pendingPermissionAction = null
        if (grantResults.firstOrNull() == android.content.pm.PackageManager.PERMISSION_GRANTED) action?.invoke()
        else Toast.makeText(this, "Call log permission was not granted", Toast.LENGTH_LONG).show()
    }

    private fun requestExport() {
        val destination = CloudStorageDestination.createFile(this, "text/csv", "bare-call-log.csv")
        if (destination != null) exportCalls(destination) else exportCsv.launch("bare-call-log.csv")
    }

    private fun exportCalls(uri: Uri) {
        lifecycleScope.launch(Dispatchers.IO) {
            val result = runCatching {
                val columns = arrayOf(CallLog.Calls.NUMBER, CallLog.Calls.DATE, CallLog.Calls.DURATION, CallLog.Calls.TYPE, CallLog.Calls.CACHED_NAME)
                contentResolver.query(CallLog.Calls.CONTENT_URI, columns, null, null, CallLog.Calls.DATE + " ASC").use { cursor ->
                    checkNotNull(cursor) { "Call log provider did not return a cursor" }
                    contentResolver.openOutputStream(uri).use { raw ->
                        val output = checkNotNull(raw) { "Could not open export destination" }
                        output.bufferedWriter(Charsets.UTF_8).use { writer ->
                            writer.appendLine(CsvBackupUtils.row(listOf("number", "date", "duration", "type", "name")))
                            while (cursor.moveToNext()) {
                                writer.appendLine(CsvBackupUtils.row(columns.map { cursor.getString(cursor.getColumnIndexOrThrow(it)) }))
                            }
                        }
                    }
                }
            }
            runOnUiThread {
                if (result.isSuccess) Toast.makeText(this@CallsDashActivity, "Call log export completed", Toast.LENGTH_LONG).show()
                else Toast.makeText(this@CallsDashActivity, "Call log export failed: " + (result.exceptionOrNull()?.message ?: "I/O error"), Toast.LENGTH_LONG).show()
            }
        }
    }
    private fun restoreCalls(uri: Uri) {
        if (checkSelfPermission(android.Manifest.permission.WRITE_CALL_LOG) != android.content.pm.PackageManager.PERMISSION_GRANTED) {
            pendingPermissionAction = { restoreCalls(uri) }
            requestPermissions(arrayOf(android.Manifest.permission.WRITE_CALL_LOG), REQUEST_CALLS)
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
                            } else if (fields.size >= 5) {
                                val values = ContentValues().apply {
                                    put(CallLog.Calls.NUMBER, fields[0])
                                    put(CallLog.Calls.DATE, fields[1].toLongOrNull() ?: System.currentTimeMillis())
                                    put(CallLog.Calls.DURATION, fields[2].toLongOrNull() ?: 0L)
                                    put(CallLog.Calls.TYPE, fields[3].toIntOrNull() ?: CallLog.Calls.MISSED_TYPE)
                                    put(CallLog.Calls.CACHED_NAME, fields[4])
                                    put(CallLog.Calls.NEW, 1)
                                }
                                contentResolver.insert(CallLog.Calls.CONTENT_URI, values)
                            }
                        }
                    }
                }
            }
            runOnUiThread {
                if (result.isSuccess) Toast.makeText(this@CallsDashActivity, "Call log restore completed", Toast.LENGTH_LONG).show()
                else Toast.makeText(this@CallsDashActivity, "Call log restore failed: " + (result.exceptionOrNull()?.message ?: "I/O error"), Toast.LENGTH_LONG).show()
            }
        }
    }
    private fun dp(value: Int) = (value * resources.displayMetrics.density).toInt()

    companion object {
        private const val REQUEST_CALLS = 5102
    }
}
