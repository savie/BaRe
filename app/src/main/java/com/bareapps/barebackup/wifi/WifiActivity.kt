package com.bareapps.barebackup.wifi

import android.Manifest
import android.content.Intent
import android.content.pm.PackageManager
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AppCompatActivity
import androidx.documentfile.provider.DocumentFile
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.bareapps.barebackup.R
import com.bareapps.barebackup.common.CloudStorageDestination
import com.bareapps.barebackup.home.HomeActivity
import com.bareapps.barebackup.views.QuickRecyclerView
import com.google.android.material.appbar.MaterialToolbar
import com.google.android.material.button.MaterialButton
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream

/** Wi-Fi profile backup screen mapped to the reference WifiActivity and its system/local/cloud cards. */
class WifiActivity : AppCompatActivity() {
    private var systemProfiles: List<WifiProfile> = emptyList()
    private var selectedSystemProfile: WifiProfile? = null
    private var selectedLocalFile: File? = null
    private var selectedCloudFile: DocumentFile? = null
    private var pendingRestoreProfile: WifiProfile? = null

    private val locationPermission = registerForActivityResult(ActivityResultContracts.RequestPermission()) { granted ->
        if (granted) refreshSystemProfiles()
        else showCardError(R.id.wifi_card_system, "Location permission is needed to read saved Wi-Fi profiles on this Android version.")
    }
    private val nearbyPermission = registerForActivityResult(ActivityResultContracts.RequestPermission()) { granted ->
        val profile = pendingRestoreProfile
        pendingRestoreProfile = null
        if (granted && profile != null) restoreProfile(profile)
        else if (!granted) Toast.makeText(this, "Nearby Wi-Fi permission is required to add a network suggestion", Toast.LENGTH_LONG).show()
    }
    private val restoreDocument = registerForActivityResult(ActivityResultContracts.OpenDocument()) { uri ->
        if (uri != null) restoreCloudOrPickedFile(uri)
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.wifi_activity)
        findViewById<MaterialToolbar>(R.id.toolbar).setNavigationOnClickListener { finish() }
        findViewById<View>(R.id.notice_no_batch_restore_on_q).visibility =
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) View.VISIBLE else View.GONE
        findViewById<View>(R.id.btn_got_it).setOnClickListener {
            findViewById<View>(R.id.notice_no_batch_restore_on_q).visibility = View.GONE
        }
        setupCard(R.id.wifi_card_system, getString(R.string.wifi_networks_backup))
        setupCard(R.id.wifi_card_local, "Local Wi-Fi backups")
        setupCard(R.id.wifi_card_cloud, getString(R.string.cloud_backups))
        refreshLocalBackups()
        refreshCloudBackups()
        refreshSystemProfiles()
    }

    private fun setupCard(cardId: Int, title: String) {
        val card = findViewById<View>(cardId)
        card.findViewById<TextView>(R.id.tv_card_title).text = title
        card.findViewById<QuickRecyclerView>(R.id.recycler_view).layoutManager =
            LinearLayoutManager(this, RecyclerView.VERTICAL, false)
        card.findViewById<View>(R.id.error_container_parent).visibility = View.GONE
        card.findViewById<View>(R.id.shortcuts_container).visibility = View.GONE
    }

    private fun refreshSystemProfiles() {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.Q &&
            checkSelfPermission(Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED
        ) {
            locationPermission.launch(Manifest.permission.ACCESS_FINE_LOCATION)
            return
        }
        lifecycleScope.launch {
            val result = withContext(Dispatchers.IO) {
                runCatching { WifiProfileBackup.readConfiguredProfiles(this@WifiActivity) }
            }
            result.onSuccess { profiles ->
                systemProfiles = profiles
                val rows = profiles.map { profile ->
                    WifiRow(
                        title = profile.ssid,
                        subtitle = securityLabel(profile),
                        iconRes = R.drawable.ic_wifi_full
                    ) { selectSystemProfile(profile) }
                }
                bindRows(R.id.wifi_card_system, rows, "No readable saved Wi-Fi profiles were found.", R.drawable.ic_wifi_full)
            }.onFailure { error ->
                showCardError(
                    R.id.wifi_card_system,
                    error.message ?: "Could not read saved Wi-Fi profiles. On Android 10 and newer, root access is required.",
                    showCloudButton = false
                )
            }
        }
    }

    private fun refreshLocalBackups() {
        val directory = localBackupDirectory()
        val files = directory.listFiles().orEmpty().filter { it.isFile && it.extension.equals("wfi", true) }
            .sortedByDescending { it.lastModified() }
        val rows = files.map { file ->
            WifiRow(file.nameWithoutExtension, "Saved on this device", R.drawable.ic_wifi_full) {
                selectedLocalFile = file
                selectedCloudFile = null
                configureShortcuts(
                    R.id.wifi_card_local,
                    R.string.delete,
                    R.string.restore,
                    first = { deleteLocalBackup(file) },
                    second = { restoreLocalBackup(file) }
                )
            }
        }
        bindRows(R.id.wifi_card_local, rows, "No local Wi-Fi backups yet.", R.drawable.ic_wifi_full)
    }

    private fun refreshCloudBackups() {
        lifecycleScope.launch {
            val result = withContext(Dispatchers.IO) {
                runCatching {
                    val root = CloudStorageDestination.tree(this@WifiActivity)
                        ?: throw IllegalStateException("Choose a cloud storage folder in the Cloud tab first")
                    root.listFiles().filter { it.isFile && it.name.orEmpty().endsWith(".wfi", true) }
                        .sortedByDescending { it.lastModified() }
                }
            }
            result.onSuccess { files ->
                val rows = files.map { file ->
                    WifiRow(file.name.orEmpty().removeSuffix(".wfi"), "Stored in selected cloud folder", R.drawable.ic_cloud) {
                        selectedCloudFile = file
                        selectedLocalFile = null
                        configureShortcuts(
                            R.id.wifi_card_cloud,
                            R.string.delete,
                            R.string.restore,
                            first = { deleteCloudBackup(file) },
                            second = { restoreCloudBackup(file) }
                        )
                    }
                }
                bindRows(R.id.wifi_card_cloud, rows, "No cloud Wi-Fi backups found.", R.drawable.ic_cloud)
            }.onFailure { error ->
                showCardError(R.id.wifi_card_cloud, error.message ?: "Cloud storage is not configured.", showCloudButton = true)
            }
        }
    }

    private fun selectSystemProfile(profile: WifiProfile) {
        selectedSystemProfile = profile
        selectedLocalFile = null
        selectedCloudFile = null
        configureShortcuts(
            R.id.wifi_card_system,
            R.string.backup,
            R.string.to_cloud,
            first = { backupLocal(profile) },
            second = { backupCloud(profile) }
        )
    }

    private fun configureShortcuts(
        cardId: Int,
        firstLabel: Int,
        secondLabel: Int,
        first: () -> Unit,
        second: () -> Unit
    ) {
        val container = findViewById<View>(cardId).findViewById<View>(R.id.shortcuts_container)
        val firstButton = container.findViewById<MaterialButton>(R.id.btn_shortcut1)
        val secondButton = container.findViewById<MaterialButton>(R.id.btn_shortcut2)
        firstButton.setText(firstLabel)
        secondButton.setText(secondLabel)
        firstButton.setOnClickListener { first() }
        secondButton.setOnClickListener { second() }
        container.visibility = View.VISIBLE
    }

    private fun bindRows(cardId: Int, rows: List<WifiRow>, emptyMessage: String, emptyIcon: Int) {
        val card = findViewById<View>(cardId)
        card.findViewById<QuickRecyclerView>(R.id.recycler_view).adapter = WifiRowsAdapter(rows)
        val error = card.findViewById<View>(R.id.error_container_parent)
        error.visibility = if (rows.isEmpty()) View.VISIBLE else View.GONE
        error.findViewById<TextView>(R.id.el_tv)?.text = emptyMessage
        error.findViewById<ImageView>(R.id.el_iv)?.setImageResource(emptyIcon)
        error.findViewById<View>(R.id.el_btn)?.visibility = View.GONE
    }

    private fun showCardError(cardId: Int, message: String, showCloudButton: Boolean = false) {
        val card = findViewById<View>(cardId)
        card.findViewById<QuickRecyclerView>(R.id.recycler_view).adapter = WifiRowsAdapter(emptyList())
        card.findViewById<View>(R.id.shortcuts_container).visibility = View.GONE
        val error = card.findViewById<View>(R.id.error_container_parent)
        error.visibility = View.VISIBLE
        error.findViewById<TextView>(R.id.el_tv)?.text = message
        error.findViewById<ImageView>(R.id.el_iv)?.setImageResource(R.drawable.ic_wifi_full)
        val button = error.findViewById<MaterialButton>(R.id.el_btn)
        button.visibility = if (showCloudButton) View.VISIBLE else View.GONE
        if (showCloudButton) {
            button.setText(R.string.choose_storage)
            button.setOnClickListener { openCloudTab() }
        }
    }

    private fun backupLocal(profile: WifiProfile) {
        lifecycleScope.launch {
            val result = withContext(Dispatchers.IO) {
                runCatching {
                    val file = File(localBackupDirectory(), fileName(profile.ssid))
                    FileOutputStream(file).use { WifiProfileBackup.writeProfile(it, profile) }
                    file
                }
            }
            result.onSuccess {
                Toast.makeText(this@WifiActivity, "Wi-Fi profile backed up locally", Toast.LENGTH_SHORT).show()
                refreshLocalBackups()
            }.onFailure { Toast.makeText(this@WifiActivity, it.message ?: "Wi-Fi backup failed", Toast.LENGTH_LONG).show() }
        }
    }

    private fun backupCloud(profile: WifiProfile) {
        val destination = CloudStorageDestination.createFile(this, "application/json", fileName(profile.ssid))
        if (destination == null) {
            openCloudTab()
            Toast.makeText(this, "Choose a cloud storage folder, then try again", Toast.LENGTH_LONG).show()
            return
        }
        lifecycleScope.launch {
            val result = withContext(Dispatchers.IO) {
                runCatching {
                    val output = contentResolver.openOutputStream(destination)
                        ?: throw IllegalStateException("Could not open cloud backup destination")
                    WifiProfileBackup.writeProfile(output, profile)
                }
            }
            result.onSuccess {
                Toast.makeText(this@WifiActivity, "Wi-Fi profile backed up to cloud storage", Toast.LENGTH_SHORT).show()
                refreshCloudBackups()
            }.onFailure { Toast.makeText(this@WifiActivity, it.message ?: "Cloud Wi-Fi backup failed", Toast.LENGTH_LONG).show() }
        }
    }

    private fun restoreLocalBackup(file: File) {
        lifecycleScope.launch {
            val result = withContext(Dispatchers.IO) {
                runCatching {
                    val profile = FileInputStream(file).use(WifiProfileBackup::readProfile)
                    WifiProfileBackup.restoreProfile(this@WifiActivity, profile)
                }
            }
            result.onSuccess { Toast.makeText(this@WifiActivity, it, Toast.LENGTH_LONG).show() }
                .onFailure { Toast.makeText(this@WifiActivity, it.message ?: "Wi-Fi restore failed", Toast.LENGTH_LONG).show() }
        }
    }

    private fun restoreCloudBackup(file: DocumentFile) {
        lifecycleScope.launch {
            val result = withContext(Dispatchers.IO) {
                runCatching {
                    val input = contentResolver.openInputStream(file.uri)
                        ?: throw IllegalStateException("Could not open cloud Wi-Fi backup")
                    val profile = WifiProfileBackup.readProfile(input)
                    profile
                }
            }
            result.onSuccess(::restoreProfile)
                .onFailure { Toast.makeText(this@WifiActivity, it.message ?: "Could not read cloud Wi-Fi backup", Toast.LENGTH_LONG).show() }
        }
    }

    private fun restoreCloudOrPickedFile(uri: Uri) {
        lifecycleScope.launch {
            val result = withContext(Dispatchers.IO) {
                runCatching {
                    val input = contentResolver.openInputStream(uri)
                        ?: throw IllegalStateException("Could not open Wi-Fi backup")
                    WifiProfileBackup.readProfile(input)
                }
            }
            result.onSuccess(::restoreProfile)
                .onFailure { Toast.makeText(this@WifiActivity, it.message ?: "Could not read Wi-Fi backup", Toast.LENGTH_LONG).show() }
        }
    }

    private fun restoreProfile(profile: WifiProfile) {
        if (Build.VERSION.SDK_INT >= 33 &&
            checkSelfPermission(Manifest.permission.NEARBY_WIFI_DEVICES) != PackageManager.PERMISSION_GRANTED
        ) {
            pendingRestoreProfile = profile
            nearbyPermission.launch(Manifest.permission.NEARBY_WIFI_DEVICES)
            return
        }
        lifecycleScope.launch {
            val result = withContext(Dispatchers.IO) {
                runCatching { WifiProfileBackup.restoreProfile(this@WifiActivity, profile) }
            }
            result.onSuccess { Toast.makeText(this@WifiActivity, it, Toast.LENGTH_LONG).show() }
                .onFailure { Toast.makeText(this@WifiActivity, it.message ?: "Wi-Fi restore failed", Toast.LENGTH_LONG).show() }
        }
    }

    private fun deleteLocalBackup(file: File) {
        if (!file.delete()) Toast.makeText(this, "Could not delete local Wi-Fi backup", Toast.LENGTH_LONG).show()
        selectedLocalFile = null
        refreshLocalBackups()
    }

    private fun deleteCloudBackup(file: DocumentFile) {
        if (!file.delete()) Toast.makeText(this, "Could not delete cloud Wi-Fi backup", Toast.LENGTH_LONG).show()
        selectedCloudFile = null
        refreshCloudBackups()
    }

    private fun openCloudTab() {
        startActivity(Intent(this, HomeActivity::class.java)
            .addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP or Intent.FLAG_ACTIVITY_SINGLE_TOP)
            .putExtra(HomeActivity.EXTRA_OPEN_CLOUD_TAB, true))
    }

    private fun localBackupDirectory(): File = File(filesDir, "wifi-backups").apply { mkdirs() }

    private fun fileName(ssid: String): String {
        val safe = ssid.replace(Regex("[^A-Za-z0-9._-]"), "_").take(48).ifBlank { "wifi" }
        return safe + "-" + System.currentTimeMillis() + ".wfi"
    }

    private fun securityLabel(profile: WifiProfile): String = when {
        profile.isEnterprise -> "Enterprise network"
        profile.isOpen -> "Open network"
        profile.isWpa3 -> "WPA3"
        else -> "Secured network"
    }

    private data class WifiRow(
        val title: String,
        val subtitle: String,
        val iconRes: Int,
        val onClick: () -> Unit
    )

    private inner class WifiRowsAdapter(private val rows: List<WifiRow>) : RecyclerView.Adapter<WifiRowsAdapter.Holder>() {
        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): Holder =
            Holder(LayoutInflater.from(parent.context).inflate(R.layout.more_list_item, parent, false))

        override fun getItemCount(): Int = rows.size

        override fun onBindViewHolder(holder: Holder, position: Int) {
            val row = rows[position]
            holder.title.text = row.title
            holder.icon.setImageResource(row.iconRes)
            holder.itemView.contentDescription = row.title + ", " + row.subtitle
            holder.itemView.setOnClickListener { row.onClick() }
        }

        inner class Holder(view: View) : RecyclerView.ViewHolder(view) {
            val title: TextView = view.findViewById(R.id.tv_more_list_item)
            val icon: ImageView = view.findViewById(R.id.iv_more_list_item)
        }
    }
}
