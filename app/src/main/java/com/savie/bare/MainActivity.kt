package com.savie.bare

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.BackHandler
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Apps
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material.icons.filled.Build
import androidx.compose.material.icons.filled.Cloud
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.Schedule
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.NavigationBar
import androidx.compose.material3.NavigationBarItem
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.TopAppBar
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import kotlinx.coroutines.launch

private enum class Tab(val title: String, val icon: androidx.compose.ui.graphics.vector.ImageVector) {
    HOME("Home", Icons.Default.Home),
    APPS("Apps", Icons.Default.Apps),
    SCHEDULES("Schedules", Icons.Default.Schedule),
    ACCOUNT("Account", Icons.Default.Settings),
}

private enum class SubScreen(val title: String) {
    NONE(""),
    FOLDERS("Folders"),
    MESSAGES("Messages"),
    CALL_LOGS("Call Logs"),
    WIFI("Wi-Fi"),
    WALLPAPERS("Wallpapers"),
    STORAGE("Storage"),
    CLOUD("Cloud"),
    MANAGEMENT("Management"),
    DIAGNOSTICS("Diagnostics"),
    SETTINGS("Settings"),
    IMPORT_EXPORT("Import / Export"),
    SEARCH("Search"),
}

private enum class StartScreen {
    WELCOME,
    LOGIN,
    ACCESS_METHOD,
    APP,
}

private enum class AccessMethod(val title: String, val description: String) {
    NON_ROOT("Non-root", "Mode standar Android. Capability yang membutuhkan privilege khusus akan ditandai sesuai kondisi perangkat."),
    ROOT("Root", "Gunakan akses root jika tersedia. BaRe tidak akan menganggap root tersedia sebelum actual capability diverifikasi."),
}

private val tabs = Tab.entries

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent { BaReApp() }
    }
}

@Composable
private fun BaReApp() {
    var startScreen by remember { mutableStateOf(StartScreen.WELCOME) }
    var selectedMethod by remember { mutableStateOf<AccessMethod?>(null) }
    var subScreen by remember { mutableStateOf(SubScreen.NONE) }
    var loginEmail by remember { mutableStateOf("") }
    var loginNotice by remember { mutableStateOf(false) }
    val pagerState = rememberPagerState(pageCount = { tabs.size })
    val scope = rememberCoroutineScope()

    fun openSubScreen(target: SubScreen) {
        subScreen = target
    }

    fun goBack() {
        when {
            subScreen != SubScreen.NONE -> subScreen = SubScreen.NONE
            startScreen == StartScreen.APP -> scope.launch { pagerState.animateScrollToPage(Tab.HOME.ordinal) }
            startScreen == StartScreen.ACCESS_METHOD -> startScreen = StartScreen.LOGIN
            startScreen == StartScreen.LOGIN -> startScreen = StartScreen.WELCOME
        }
    }

    BackHandler(enabled = startScreen != StartScreen.WELCOME || subScreen != SubScreen.NONE) {
        goBack()
    }

    MaterialTheme {
        Surface(modifier = Modifier.fillMaxSize()) {
            when (startScreen) {
                StartScreen.WELCOME -> WelcomeScreen(onContinue = { startScreen = StartScreen.LOGIN })
                StartScreen.LOGIN -> LoginScreen(
                    email = loginEmail,
                    onEmailChange = { loginEmail = it },
                    notice = loginNotice,
                    onLogin = {
                        loginNotice = true
                        startScreen = StartScreen.ACCESS_METHOD
                    },
                    onBack = ::goBack
                )
                StartScreen.ACCESS_METHOD -> AccessMethodScreen(
                    selected = selectedMethod,
                    onSelect = { selectedMethod = it },
                    onContinue = {
                        if (selectedMethod != null) startScreen = StartScreen.APP
                    },
                    onBack = ::goBack
                )
                StartScreen.APP -> MainShell(
                    pagerState = pagerState,
                    subScreen = subScreen,
                    onTabSelected = { index -> scope.launch { pagerState.animateScrollToPage(index) } },
                    onOpen = ::openSubScreen,
                    onBack = ::goBack
                )
            }
        }
    }
}

@Composable
private fun WelcomeScreen(onContinue: () -> Unit) {
    Column(
        modifier = Modifier.fillMaxSize().padding(24.dp),
        verticalArrangement = Arrangement.Center,
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        Text("BaRe", style = MaterialTheme.typography.displaySmall)
        Spacer(Modifier.height(8.dp))
        Text("Backup & Restore manager untuk Android", style = MaterialTheme.typography.titleLarge)
        Spacer(Modifier.height(16.dp))
        Text("Mulai dari setup perangkat dan account, lalu tentukan metode akses sebelum masuk ke area utama.")
        Spacer(Modifier.height(28.dp))
        Button(onClick = onContinue, modifier = Modifier.fillMaxWidth()) { Text("Mulai") }
    }
}

@Composable
private fun LoginScreen(
    email: String,
    onEmailChange: (String) -> Unit,
    notice: Boolean,
    onLogin: () -> Unit,
    onBack: () -> Unit
) {
    Column(
        modifier = Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(24.dp),
        verticalArrangement = Arrangement.spacedBy(14.dp)
    ) {
        IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, contentDescription = "Back") }
        Text("Login", style = MaterialTheme.typography.headlineMedium)
        Text("Siapkan account BaRe sebelum memilih metode akses perangkat.")
        OutlinedTextField(
            value = email,
            onValueChange = onEmailChange,
            modifier = Modifier.fillMaxWidth(),
            label = { Text("Email") },
            singleLine = true
        )
        OutlinedTextField(
            value = "",
            onValueChange = {},
            modifier = Modifier.fillMaxWidth(),
            label = { Text("Password") },
            singleLine = true
        )
        if (notice) {
            Text("Login backend belum terhubung; tahap ini hanya membentuk alur UI dan state onboarding.", style = MaterialTheme.typography.bodySmall)
        }
        Button(onClick = onLogin, modifier = Modifier.fillMaxWidth()) { Text("Lanjut") }
        TextButton(onClick = onLogin, modifier = Modifier.fillMaxWidth()) { Text("Gunakan setup lokal untuk sekarang") }
    }
}

@Composable
private fun AccessMethodScreen(
    selected: AccessMethod?,
    onSelect: (AccessMethod) -> Unit,
    onContinue: () -> Unit,
    onBack: () -> Unit
) {
    Column(
        modifier = Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(24.dp),
        verticalArrangement = Arrangement.spacedBy(14.dp)
    ) {
        IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, contentDescription = "Back") }
        Text("Metode akses perangkat", style = MaterialTheme.typography.headlineMedium)
        Text("Pilih cara BaRe akan mencoba mengakses capability perangkat. Ini pilihan mekanisme, bukan jaminan capability.")
        AccessMethodCard(AccessMethod.NON_ROOT, selected == AccessMethod.NON_ROOT, onSelect)
        AccessMethodCard(AccessMethod.ROOT, selected == AccessMethod.ROOT, onSelect)
        Button(
            onClick = onContinue,
            enabled = selected != null,
            modifier = Modifier.fillMaxWidth()
        ) { Text("Masuk ke BaRe") }
    }
}

@Composable
private fun AccessMethodCard(method: AccessMethod, selected: Boolean, onSelect: (AccessMethod) -> Unit) {
    Card(modifier = Modifier.fillMaxWidth(), onClick = { onSelect(method) }) {
        Column(Modifier.padding(16.dp)) {
            Text(if (selected) "✓ ${method.title}" else method.title, style = MaterialTheme.typography.titleLarge)
            Spacer(Modifier.height(6.dp))
            Text(method.description)
        }
    }
}

@Composable
private fun MainShell(
    pagerState: androidx.compose.foundation.pager.PagerState,
    subScreen: SubScreen,
    onTabSelected: (Int) -> Unit,
    onOpen: (SubScreen) -> Unit,
    onBack: () -> Unit
) {
    val currentTab = tabs[pagerState.currentPage]

    if (subScreen != SubScreen.NONE) {
        SubScreenContent(subScreen, onBack)
        return
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("BaRe · ${currentTab.title}") },
                actions = {
                    IconButton(onClick = { onOpen(SubScreen.SEARCH) }) {
                        Icon(Icons.Default.Info, contentDescription = "Search")
                    }
                }
            )
        },
        bottomBar = {
            NavigationBar {
                tabs.forEachIndexed { index, tab ->
                    NavigationBarItem(
                        selected = pagerState.currentPage == index,
                        onClick = { onTabSelected(index) },
                        icon = { Icon(tab.icon, contentDescription = tab.title) },
                        label = { Text(tab.title) }
                    )
                }
            }
        }
    ) { padding ->
        HorizontalPager(
            state = pagerState,
            modifier = Modifier.fillMaxSize().padding(padding)
        ) { page ->
            when (tabs[page]) {
                Tab.HOME -> HomeTab(onOpen)
                Tab.APPS -> AppsTab(onOpen)
                Tab.SCHEDULES -> SchedulesTab(onOpen)
                Tab.ACCOUNT -> AccountTab(onOpen)
            }
        }
    }
}

@Composable
private fun HomeTab(onOpen: (SubScreen) -> Unit) {
    SimpleListScreen(
        title = "Home",
        subtitle = "Ringkasan perangkat, backup, restore, dan status capability.",
        entries = listOf(
            "Apps" to SubScreen.NONE,
            "Folders" to SubScreen.FOLDERS,
            "Messages" to SubScreen.MESSAGES,
            "Call Logs" to SubScreen.CALL_LOGS,
            "Wi-Fi" to SubScreen.WIFI,
            "Wallpapers" to SubScreen.WALLPAPERS,
            "Storage" to SubScreen.STORAGE,
            "Cloud" to SubScreen.CLOUD
        ),
        onOpen = onOpen
    )
}

@Composable
private fun AppsTab(onOpen: (SubScreen) -> Unit) {
    SimpleListScreen(
        title = "Apps",
        subtitle = "Daftar aplikasi dan entry point backup/restore mengikuti alur reference.",
        entries = listOf(
            "All apps" to SubScreen.NONE,
            "User apps" to SubScreen.NONE,
            "System apps" to SubScreen.NONE,
            "Backup" to SubScreen.NONE,
            "Restore" to SubScreen.NONE,
            "Import APK / APKS" to SubScreen.IMPORT_EXPORT,
            "Labels & Favorites" to SubScreen.MANAGEMENT,
            "Protected backups" to SubScreen.MANAGEMENT
        ),
        onOpen = onOpen
    )
}

@Composable
private fun SchedulesTab(onOpen: (SubScreen) -> Unit) {
    SimpleListScreen(
        title = "Schedules",
        subtitle = "Schedule adalah entry point automation, bukan mekanisme backup yang berbeda.",
        entries = listOf(
            "Schedules" to SubScreen.NONE,
            "Conditions" to SubScreen.NONE,
            "Run now" to SubScreen.NONE,
            "Enabled / disabled" to SubScreen.NONE,
            "Last run" to SubScreen.DIAGNOSTICS,
            "Diagnostics" to SubScreen.DIAGNOSTICS
        ),
        onOpen = onOpen
    )
}

@Composable
private fun AccountTab(onOpen: (SubScreen) -> Unit) {
    SimpleListScreen(
        title = "Account",
        subtitle = "Account, settings, storage, cloud, management, diagnostics, dan import/export.",
        entries = listOf(
            "Settings" to SubScreen.SETTINGS,
            "Storage" to SubScreen.STORAGE,
            "Cloud" to SubScreen.CLOUD,
            "Management" to SubScreen.MANAGEMENT,
            "Diagnostics" to SubScreen.DIAGNOSTICS,
            "Import / Export" to SubScreen.IMPORT_EXPORT
        ),
        onOpen = onOpen
    )
}

@Composable
private fun SimpleListScreen(
    title: String,
    subtitle: String,
    entries: List<Pair<String, SubScreen>>,
    onOpen: (SubScreen) -> Unit
) {
    Column(
        modifier = Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(16.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        Text(title, style = MaterialTheme.typography.headlineSmall)
        Text(subtitle)
        Spacer(Modifier.height(4.dp))
        entries.forEach { (label, target) ->
            Card(modifier = Modifier.fillMaxWidth(), onClick = { if (target != SubScreen.NONE) onOpen(target) }) {
                Row(Modifier.padding(16.dp), verticalAlignment = Alignment.CenterVertically) {
                    Text(label, style = MaterialTheme.typography.titleMedium)
                }
            }
        }
    }
}

@Composable
private fun SubScreenContent(screen: SubScreen, onBack: () -> Unit) {
    val entries = when (screen) {
        SubScreen.FOLDERS -> listOf("Folder setups", "Backup", "Restore", "Incremental backups", "Multiple versions")
        SubScreen.MESSAGES -> listOf("SMS / MMS", "Attachments", "Backup", "Restore", "Default SMS app")
        SubScreen.CALL_LOGS -> listOf("Call history", "Backup", "Restore", "Permissions")
        SubScreen.WIFI -> listOf("Saved networks", "Backup", "Restore", "Android limitations", "Manual fallback")
        SubScreen.WALLPAPERS -> listOf("Current wallpaper", "Backup", "Restore", "Apply")
        SubScreen.STORAGE -> listOf("Local / internal", "External / SAF", "Storage switch", "Space checks", "Move / copy")
        SubScreen.CLOUD -> listOf("Providers", "Connect", "Remote folder", "Upload", "Download", "Sync")
        SubScreen.MANAGEMENT -> listOf("Labels", "Favorites", "Blacklist", "Quick actions", "Retention", "Protection")
        SubScreen.DIAGNOSTICS -> listOf("Operation logs", "Errors", "Skipped parts", "Blocked operations", "Storage checks", "Transfer checks")
        SubScreen.SETTINGS -> listOf("Appearance", "Language", "Backup defaults", "Restore defaults", "Security", "Compression", "Notifications", "About")
        SubScreen.IMPORT_EXPORT -> listOf("Import APK / APKS", "Export configuration", "Import configuration", "Validation", "History")
        SubScreen.SEARCH -> listOf("Apps", "Backups", "Folders", "Configuration")
        SubScreen.NONE -> emptyList()
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text(screen.title) },
                navigationIcon = {
                    IconButton(onClick = onBack) {
                        Icon(Icons.Default.ArrowBack, contentDescription = "Back")
                    }
                }
            )
        }
    ) { padding ->
        Column(
            modifier = Modifier.fillMaxSize().padding(padding).verticalScroll(rememberScrollState()).padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            Text("BaRe ${screen.title}", style = MaterialTheme.typography.headlineSmall)
            Text("UX mengikuti alur reference. Capability runtime hanya dianggap tersedia setelah implementation dan verification.")
            entries.forEach { entry ->
                OutlinedButton(onClick = {}, modifier = Modifier.fillMaxWidth()) { Text(entry) }
            }
        }
    }
}
