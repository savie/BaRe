package com.savie.bare

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.BackHandler
import androidx.activity.compose.setContent
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Apps
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material.icons.filled.Build
import androidx.compose.material.icons.filled.Cloud
import androidx.compose.material.icons.filled.CloudOff
import androidx.compose.material.icons.filled.Folder
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.Lock
import androidx.compose.material.icons.filled.Search
import androidx.compose.material.icons.filled.Schedule
import androidx.compose.material.icons.filled.Security
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material.icons.filled.Storage
import androidx.compose.material.icons.filled.Sync
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.NavigationBar
import androidx.compose.material3.NavigationBarItem
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Switch
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.darkColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import kotlinx.coroutines.launch

private enum class Tab(val title: String, val icon: androidx.compose.ui.graphics.vector.ImageVector) {
    HOME("Home", Icons.Default.Home),
    APPS("Apps", Icons.Default.Apps),
    SCHEDULES("Schedules", Icons.Default.Schedule),
    ACCOUNT("Account", Icons.Default.Settings),
}

private enum class Screen(val title: String) {
    NONE(""),
    SEARCH("Search"),
    APP_DETAIL("App"),
    APP_CONFIG("App configuration"),
    FOLDERS("Folders"),
    MESSAGES("Messages"),
    CALL_LOGS("Call Logs"),
    WIFI("Wi-Fi"),
    WALLPAPERS("Wallpapers"),
    STORAGE("Storage"),
    CLOUD("Cloud sync"),
    MANAGEMENT("Management"),
    DIAGNOSTICS("Diagnostics"),
    SETTINGS("Settings"),
    IMPORT_EXPORT("Import / Export"),
    TASK("Task"),
    SCHEDULE_DETAIL("Schedule"),
}

private enum class StartScreen {
    WELCOME, LOGIN, STORAGE_SETUP, ACCESS_METHOD, APP,
}

private enum class AccessMethod(val title: String, val description: String) {
    NON_ROOT("Non-root", "Mode Android standar. Capability yang membutuhkan akses khusus akan ditampilkan sesuai kondisi perangkat."),
    ROOT("Root", "Gunakan akses root bila tersedia. Pilihan ini hanya mockup dan bukan bukti root aktif."),
}

private data class AppItem(
    val name: String,
    val packageName: String,
    val category: String,
    val size: String,
    val protected: Boolean = false,
    val favorite: Boolean = false,
)

private val demoApps = listOf(
    AppItem("BaRe", "com.savie.bare", "User app", "42 MB", protected = true, favorite = true),
    AppItem("Messages", "com.google.android.apps.messaging", "User app", "118 MB"),
    AppItem("Chrome", "com.android.chrome", "User app", "286 MB", favorite = true),
    AppItem("Files", "com.google.android.documentsui", "System app", "31 MB"),
    AppItem("Settings", "com.android.settings", "System app", "18 MB", protected = true),
)

private val tabs = Tab.entries

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent { BaReApp() }
    }
}

@OptIn(ExperimentalFoundationApi::class)
@Composable
private fun BaReApp() {
    var startScreen by remember { mutableStateOf(StartScreen.WELCOME) }
    var selectedMethod by remember { mutableStateOf<AccessMethod?>(null) }
    var screen by remember { mutableStateOf(Screen.NONE) }
    var selectedApp by remember { mutableStateOf<AppItem?>(null) }
    var loginEmail by remember { mutableStateOf("") }
    var searchQuery by remember { mutableStateOf("") }
    var searchOpen by remember { mutableStateOf(false) }
    val pagerState = rememberPagerState(pageCount = { tabs.size })
    val scope = rememberCoroutineScope()

    fun goBack() {
        when {
            searchOpen -> searchOpen = false
            screen != Screen.NONE -> screen = Screen.NONE
            startScreen == StartScreen.ACCESS_METHOD -> startScreen = StartScreen.STORAGE_SETUP
            startScreen == StartScreen.STORAGE_SETUP -> startScreen = StartScreen.LOGIN
            startScreen == StartScreen.LOGIN -> startScreen = StartScreen.WELCOME
            startScreen == StartScreen.APP -> scope.launch { pagerState.animateScrollToPage(Tab.HOME.ordinal) }
        }
    }

    BackHandler(enabled = startScreen != StartScreen.WELCOME || screen != Screen.NONE || searchOpen) {
        goBack()
    }

    MaterialTheme(colorScheme = darkColorScheme()) {
        Surface(Modifier.fillMaxSize()) {
            when (startScreen) {
                StartScreen.WELCOME -> WelcomeScreen { startScreen = StartScreen.LOGIN }
                StartScreen.LOGIN -> LoginScreen(loginEmail, { loginEmail = it }, { startScreen = StartScreen.STORAGE_SETUP }, ::goBack)
                StartScreen.STORAGE_SETUP -> StorageSetupScreen({ startScreen = StartScreen.ACCESS_METHOD }, ::goBack)
                StartScreen.ACCESS_METHOD -> AccessMethodScreen(selectedMethod, { selectedMethod = it }, { if (selectedMethod != null) startScreen = StartScreen.APP }, ::goBack)
                StartScreen.APP -> MainShell(
                    pagerState = pagerState,
                    searchOpen = searchOpen,
                    searchQuery = searchQuery,
                    onSearchQueryChange = { searchQuery = it },
                    onOpenSearch = { searchOpen = true },
                    onCloseSearch = { searchOpen = false },
                    onTabSelected = { index -> scope.launch { pagerState.animateScrollToPage(index) } },
                    onOpenScreen = { screen = it },
                    onOpenApp = { selectedApp = it; screen = Screen.APP_DETAIL },
                    screen = screen,
                    selectedApp = selectedApp,
                    onBack = ::goBack,
                )
            }
        }
    }
}

@Composable
private fun WelcomeScreen(onContinue: () -> Unit) {
    Column(Modifier.fillMaxSize().padding(24.dp), Arrangement.Center, Alignment.CenterHorizontally) {
        Box(Modifier.size(92.dp).background(MaterialTheme.colorScheme.primary, CircleShape), Alignment.Center) {
            Text("B", style = MaterialTheme.typography.displaySmall, fontWeight = FontWeight.Bold)
        }
        Spacer(Modifier.height(20.dp))
        Text("BaRe", style = MaterialTheme.typography.displaySmall, fontWeight = FontWeight.Bold)
        Text("Backup & Restore manager", style = MaterialTheme.typography.titleMedium)
        Spacer(Modifier.height(12.dp))
        Text("Mockup FE lengkap untuk membentuk alur product terlebih dahulu. Capability backend akan dihubungkan setelah tampilan dan state disepakati.")
        Spacer(Modifier.height(28.dp))
        Button(onClick = onContinue, Modifier.fillMaxWidth()) { Text("Mulai") }
        TextButton(onClick = onContinue, Modifier.fillMaxWidth()) { Text("Sudah punya account") }
    }
}

@Composable
private fun LoginScreen(email: String, onEmailChange: (String) -> Unit, onContinue: () -> Unit, onBack: () -> Unit) {
    Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(24.dp), verticalArrangement = Arrangement.spacedBy(14.dp)) {
        IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, "Back") }
        Text("Sign in", style = MaterialTheme.typography.headlineMedium, fontWeight = FontWeight.Bold)
        Text("Account dipakai untuk mengatur cloud, sinkronisasi, dan konfigurasi BaRe.")
        OutlinedTextField(email, onEmailChange, Modifier.fillMaxWidth(), label = { Text("Email") }, singleLine = true)
        OutlinedTextField("", {}, Modifier.fillMaxWidth(), label = { Text("Password") }, singleLine = true)
        Button(onClick = onContinue, Modifier.fillMaxWidth()) { Text("Sign in") }
        OutlinedButton(onClick = onContinue, Modifier.fillMaxWidth()) { Text("Continue with local setup") }
        TextButton(onClick = onContinue, Modifier.fillMaxWidth()) { Text("Create account") }
        Text("Mockup only — autentikasi belum terhubung.", style = MaterialTheme.typography.bodySmall)
    }
}

@Composable
private fun StorageSetupScreen(onContinue: () -> Unit, onBack: () -> Unit) {
    Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(24.dp), verticalArrangement = Arrangement.spacedBy(14.dp)) {
        IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, "Back") }
        Text("Backup storage", style = MaterialTheme.typography.headlineMedium, fontWeight = FontWeight.Bold)
        Text("Pilih lokasi repository backup. Ini masih state FE dan belum menulis data.")
        StorageCard("Internal storage", "BaRe/Backups", true)
        StorageCard("External storage", "SAF / removable storage", false)
        StorageCard("Remote storage", "Cloud provider", false)
        Button(onClick = onContinue, Modifier.fillMaxWidth()) { Text("Continue") }
    }
}

@Composable
private fun StorageCard(title: String, subtitle: String, selected: Boolean) {
    Card(Modifier.fillMaxWidth(), colors = CardDefaults.cardColors(containerColor = if (selected) MaterialTheme.colorScheme.primaryContainer else MaterialTheme.colorScheme.surfaceVariant)) {
        Row(Modifier.padding(16.dp), Alignment.CenterVertically) {
            Icon(Icons.Default.Storage, null)
            Spacer(Modifier.width(14.dp))
            Column(Modifier.weight(1f)) {
                Text(title, fontWeight = FontWeight.Bold)
                Text(subtitle, style = MaterialTheme.typography.bodySmall)
            }
            if (selected) Text("Selected", style = MaterialTheme.typography.labelMedium)
        }
    }
}

@Composable
private fun AccessMethodScreen(selected: AccessMethod?, onSelect: (AccessMethod) -> Unit, onContinue: () -> Unit, onBack: () -> Unit) {
    Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(24.dp), verticalArrangement = Arrangement.spacedBy(14.dp)) {
        IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, "Back") }
        Text("Access method", style = MaterialTheme.typography.headlineMedium, fontWeight = FontWeight.Bold)
        Text("Pilih mekanisme akses. Status capability aktual nanti ditentukan provider dan runtime.")
        AccessCard(AccessMethod.NON_ROOT, selected == AccessMethod.NON_ROOT, onSelect)
        AccessCard(AccessMethod.ROOT, selected == AccessMethod.ROOT, onSelect)
        Button(onClick = onContinue, enabled = selected != null, Modifier.fillMaxWidth()) { Text("Enter BaRe") }
    }
}

@Composable
private fun AccessCard(method: AccessMethod, selected: Boolean, onSelect: (AccessMethod) -> Unit) {
    Card(Modifier.fillMaxWidth().clickable { onSelect(method) }) {
        Row(Modifier.padding(16.dp), Alignment.CenterVertically) {
            Icon(if (method == AccessMethod.ROOT) Icons.Default.Security else Icons.Default.Info, null)
            Spacer(Modifier.width(14.dp))
            Column(Modifier.weight(1f)) {
                Text(method.title, fontWeight = FontWeight.Bold)
                Spacer(Modifier.height(4.dp))
                Text(method.description, style = MaterialTheme.typography.bodySmall)
            }
            if (selected) Text("✓")
        }
    }
}

@OptIn(ExperimentalFoundationApi::class, ExperimentalMaterial3Api::class)
@Composable
private fun MainShell(
    pagerState: androidx.compose.foundation.pager.PagerState,
    searchOpen: Boolean,
    searchQuery: String,
    onSearchQueryChange: (String) -> Unit,
    onOpenSearch: () -> Unit,
    onCloseSearch: () -> Unit,
    onTabSelected: (Int) -> Unit,
    onOpenScreen: (Screen) -> Unit,
    onOpenApp: (AppItem) -> Unit,
    screen: Screen,
    selectedApp: AppItem?,
    onBack: () -> Unit,
) {
    if (screen != Screen.NONE) {
        when (screen) {
            Screen.APP_DETAIL -> AppDetailScreen(selectedApp, onOpenScreen, onBack)
            Screen.APP_CONFIG -> AppConfigScreen(selectedApp, onBack)
            Screen.FOLDERS -> GenericDomainScreen("Folders", "Backup folder, restore, incremental, manifest, chain validation.", listOf("Folder setups", "Backup", "Restore", "Incremental backups", "Multiple versions", "Manifest & file entries", "Chain validation"), onBack)
            Screen.MESSAGES -> GenericDomainScreen("Messages", "SMS / MMS / RCS, attachments, backup, restore, history.", listOf("SMS / MMS", "Attachments", "RCS", "Backup", "Restore", "History"), onBack)
            Screen.CALL_LOGS -> GenericDomainScreen("Call Logs", "Riwayat panggilan dan state permission.", listOf("Call history", "Backup", "Restore", "Permissions", "History"), onBack)
            Screen.WIFI -> GenericDomainScreen("Wi-Fi", "Saved networks, authentication, privilege-aware restore.", listOf("Saved networks", "Backup", "Restore", "Device authentication", "Enterprise Wi-Fi", "Manual fallback"), onBack)
            Screen.WALLPAPERS -> GenericDomainScreen("Wallpapers", "Backup, restore, apply, dan diagnostics launcher.", listOf("Current wallpaper", "Backup", "Restore", "Apply", "Launcher diagnostics"), onBack)
            Screen.STORAGE -> GenericDomainScreen("Storage", "Repository, capacity, SAF, move/copy, dan integrity.", listOf("Internal", "External / SAF", "Storage switch", "Space checks", "Move / copy", "Repository status"), onBack)
            Screen.CLOUD -> CloudScreen(onBack)
            Screen.MANAGEMENT -> GenericDomainScreen("Management", "Labels, favorites, blacklist, quick actions, protection.", listOf("Labels", "Favorites", "Blacklist", "Quick actions", "Custom configurations", "Retention", "Protected backups"), onBack)
            Screen.DIAGNOSTICS -> DiagnosticsScreen(onBack)
            Screen.SETTINGS -> SettingsScreen(onBack)
            Screen.IMPORT_EXPORT -> GenericDomainScreen("Import / Export", "APK/APKS, configuration, validation, history.", listOf("Import APK", "Import APKS", "Export configuration", "Import configuration", "Validation", "History"), onBack)
            Screen.TASK -> TaskScreen(onBack)
            Screen.SCHEDULE_DETAIL -> GenericDomainScreen("Schedule", "Schedule configuration dan last-run state.", listOf("Schedule name", "Conditions", "Selected apps", "Selected folders", "Enabled", "Last run", "Run now"), onBack)
            Screen.SEARCH, Screen.NONE -> Unit
        }
        return
    }

    if (searchOpen) {
        SearchScreen(searchQuery, onSearchQueryChange, onOpenApp, onCloseSearch)
        return
    }

    val currentTab = tabs[pagerState.currentPage]
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("BaRe · " + currentTab.title, fontWeight = FontWeight.Bold) },
                actions = { IconButton(onClick = onOpenSearch) { Icon(Icons.Default.Search, "Search") } },
            )
        },
        bottomBar = {
            NavigationBar {
                tabs.forEachIndexed { index, tab ->
                    NavigationBarItem(
                        selected = pagerState.currentPage == index,
                        onClick = { onTabSelected(index) },
                        icon = { Icon(tab.icon, tab.title) },
                        label = { Text(tab.title) },
                    )
                }
            }
        },
    ) { padding ->
        HorizontalPager(state = pagerState, Modifier.fillMaxSize().padding(padding)) { page ->
            when (tabs[page]) {
                Tab.HOME -> HomeTab(onOpenScreen)
                Tab.APPS -> AppsTab(onOpenScreen, onOpenApp)
                Tab.SCHEDULES -> SchedulesTab(onOpenScreen)
                Tab.ACCOUNT -> AccountTab(onOpenScreen)
            }
        }
    }
}

@Composable
private fun HomeTab(onOpen: (Screen) -> Unit) {
    LazyColumn(Modifier.fillMaxSize().padding(16.dp), verticalArrangement = Arrangement.spacedBy(12.dp)) {
        item {
            Text("Home", style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold)
            Text("Ringkasan perangkat, backup, restore, storage, cloud, dan capability state.")
        }
        item { StatusCard(Icons.Default.Storage, "Backup storage", "Internal storage", "BaRe/Backups • mockup state") }
        item { StatusCard(Icons.Default.Security, "Access", "Non-root", "Capability runtime belum diverifikasi") }
        item { Text("Quick actions", style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold) }
        item {
            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                ActionCard("Backup apps", Icons.Default.Apps, Modifier.weight(1f)) { onOpen(Screen.APP_DETAIL) }
                ActionCard("Backup folders", Icons.Default.Folder, Modifier.weight(1f)) { onOpen(Screen.FOLDERS) }
            }
        }
        item {
            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                ActionCard("Messages", Icons.Default.Info, Modifier.weight(1f)) { onOpen(Screen.MESSAGES) }
                ActionCard("Call logs", Icons.Default.Info, Modifier.weight(1f)) { onOpen(Screen.CALL_LOGS) }
            }
        }
        item { Text("Backup areas", style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold) }
        item { ListEntry("Folders", "Backup, restore, incremental", Icons.Default.Folder) { onOpen(Screen.FOLDERS) } }
        item { ListEntry("Messages", "SMS / MMS / RCS", Icons.Default.Info) { onOpen(Screen.MESSAGES) } }
        item { ListEntry("Call Logs", "Backup, restore, permissions", Icons.Default.Info) { onOpen(Screen.CALL_LOGS) } }
        item { ListEntry("Wi-Fi", "Saved networks and constrained restore", Icons.Default.Sync) { onOpen(Screen.WIFI) } }
        item { ListEntry("Wallpapers", "Backup, restore, apply", Icons.Default.Info) { onOpen(Screen.WALLPAPERS) } }
        item { Text("Storage & cloud", style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold) }
        item { ListEntry("Storage", "Repository and capacity", Icons.Default.Storage) { onOpen(Screen.STORAGE) } }
        item { ListEntry("Cloud sync", "Connect, upload, download, sync", Icons.Default.Cloud) { onOpen(Screen.CLOUD) } }
        item { ListEntry("Schedules", "Automation and last-run status", Icons.Default.Schedule) { onOpen(Screen.SCHEDULE_DETAIL) } }
    }
}

@Composable
private fun StatusCard(icon: androidx.compose.ui.graphics.vector.ImageVector, title: String, value: String, detail: String) {
    Card(Modifier.fillMaxWidth()) {
        Row(Modifier.padding(16.dp), Alignment.CenterVertically) {
            Icon(icon, null, Modifier.size(32.dp))
            Spacer(Modifier.width(14.dp))
            Column {
                Text(title, style = MaterialTheme.typography.labelLarge)
                Text(value, style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.Bold)
                Text(detail, style = MaterialTheme.typography.bodySmall)
            }
        }
    }
}

@Composable
private fun ActionCard(title: String, icon: androidx.compose.ui.graphics.vector.ImageVector, modifier: Modifier, onClick: () -> Unit) {
    Card(modifier.clickable(onClick = onClick)) {
        Column(Modifier.padding(14.dp), horizontalAlignment = Alignment.CenterHorizontally) {
            Icon(icon, null, Modifier.size(28.dp))
            Spacer(Modifier.height(8.dp))
            Text(title, fontWeight = FontWeight.Bold)
            Text("Mockup", style = MaterialTheme.typography.labelSmall)
        }
    }
}

@Composable
private fun AppsTab(onOpen: (Screen) -> Unit, onOpenApp: (AppItem) -> Unit) {
    LazyColumn(Modifier.fillMaxSize().padding(16.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
        item {
            Text("Apps", style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold)
            Text("Discovery, backup parts, restore, history, protection, dan configuration.")
        }
        item {
            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                FilterPill("All apps", true)
                FilterPill("User apps", false)
                FilterPill("System", false)
            }
        }
        item { ListEntry("Import APK / APKS", "Import and validate APK artifacts", Icons.Default.Apps) { onOpen(Screen.IMPORT_EXPORT) } }
        item { ListEntry("Labels & Favorites", "Management and filtering", Icons.Default.Info) { onOpen(Screen.MANAGEMENT) } }
        item { ListEntry("Protected backups", "Retention and protection", Icons.Default.Lock) { onOpen(Screen.MANAGEMENT) } }
        item { Text("Installed apps", style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold) }
        items(demoApps) { app ->
            Card(Modifier.fillMaxWidth().clickable { onOpenApp(app) }) {
                Row(Modifier.padding(14.dp), Alignment.CenterVertically) {
                    Box(Modifier.size(44.dp).background(MaterialTheme.colorScheme.primaryContainer, CircleShape), Alignment.Center) {
                        Text(app.name.take(1), fontWeight = FontWeight.Bold)
                    }
                    Spacer(Modifier.width(12.dp))
                    Column(Modifier.weight(1f)) {
                        Text(app.name, fontWeight = FontWeight.Bold)
                        Text(app.packageName, style = MaterialTheme.typography.bodySmall)
                        Text(app.category + " • " + app.size, style = MaterialTheme.typography.labelSmall)
                    }
                    if (app.favorite) Text("★")
                }
            }
        }
    }
}

@Composable
private fun FilterPill(text: String, selected: Boolean) {
    Card(colors = CardDefaults.cardColors(containerColor = if (selected) MaterialTheme.colorScheme.primaryContainer else MaterialTheme.colorScheme.surfaceVariant)) {
        Text(text, Modifier.padding(horizontal = 12.dp, vertical = 8.dp), fontWeight = if (selected) FontWeight.Bold else FontWeight.Normal)
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun AppDetailScreen(app: AppItem?, onOpen: (Screen) -> Unit, onBack: () -> Unit) {
    val item = app ?: demoApps.first()
    Scaffold(
        topBar = {
            TopAppBar(title = { Text(item.name) }, navigationIcon = { IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, "Back") } })
        }
    ) { padding ->
        LazyColumn(Modifier.fillMaxSize().padding(padding).padding(16.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
            item {
                Row(Alignment.CenterVertically) {
                    Box(Modifier.size(64.dp).background(MaterialTheme.colorScheme.primaryContainer, CircleShape), Alignment.Center) {
                        Text(item.name.take(1), style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold)
                    }
                    Spacer(Modifier.width(14.dp))
                    Column {
                        Text(item.name, style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold)
                        Text(item.packageName)
                        Text(item.size)
                    }
                }
            }
            item { Text("Backup parts", style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold) }
            items(listOf("APK", "Split APK", "App data", "External data", "Media", "Cache", "Expansion / OBB")) { CheckRow(it, true) }
            item { Text("Actions", style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold) }
            item { Button(onClick = {}, Modifier.fillMaxWidth()) { Text("Backup") } }
            item { OutlinedButton(onClick = {}, Modifier.fillMaxWidth()) { Text("Restore") } }
            item { ListEntry("Multiple backups", "History and versions", Icons.Default.Sync) { onOpen(Screen.TASK) } }
            item { ListEntry("Custom configuration", "Parts and strategy", Icons.Default.Settings) { onOpen(Screen.APP_CONFIG) } }
            item { ListEntry("Management", "Favorite, labels, blacklist, protection", Icons.Default.Build) { onOpen(Screen.MANAGEMENT) } }
        }
    }
}

@Composable
private fun AppConfigScreen(app: AppItem?, onBack: () -> Unit) {
    val item = app ?: demoApps.first()
    GenericDomainScreen("Configuration · " + item.name, "Mockup pengaturan per-app. Nilai belum disimpan ke backend.", listOf("Backup parts", "Compression", "Encryption", "Multiple backups", "Protection", "Notes", "Schedule"), onBack)
}

@Composable
private fun SchedulesTab(onOpen: (Screen) -> Unit) {
    LazyColumn(Modifier.fillMaxSize().padding(16.dp), verticalArrangement = Arrangement.spacedBy(12.dp)) {
        item {
            Text("Schedules", style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold)
            Text("Automation memakai workflow backup/restore yang sama dengan operasi manual.")
        }
        item {
            Card(Modifier.fillMaxWidth()) {
                Column(Modifier.padding(20.dp), horizontalAlignment = Alignment.CenterHorizontally) {
                    Icon(Icons.Default.Schedule, null, Modifier.size(48.dp))
                    Spacer(Modifier.height(8.dp))
                    Text("Scheduled backups", style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold)
                    Text("Belum ada schedule pada mockup.")
                    Spacer(Modifier.height(12.dp))
                    Button(onClick = { onOpen(Screen.SCHEDULE_DETAIL) }) { Text("Create schedule") }
                }
            }
        }
        item { ListEntry("Last run", "Success / partial / failed / blocked / skipped", Icons.Default.Info) { onOpen(Screen.DIAGNOSTICS) } }
        item { ListEntry("Conditions", "Charging, Wi-Fi, storage, battery", Icons.Default.Settings) { onOpen(Screen.SCHEDULE_DETAIL) } }
    }
}

@Composable
private fun AccountTab(onOpen: (Screen) -> Unit) {
    LazyColumn(Modifier.fillMaxSize().padding(16.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
        item {
            Card(Modifier.fillMaxWidth()) {
                Row(Modifier.padding(16.dp), Alignment.CenterVertically) {
                    Box(Modifier.size(56.dp).background(MaterialTheme.colorScheme.primaryContainer, CircleShape), Alignment.Center) {
                        Text("B", style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold)
                    }
                    Spacer(Modifier.width(14.dp))
                    Column {
                        Text("BaRe account", fontWeight = FontWeight.Bold)
                        Text("Local setup / mockup account")
                    }
                }
            }
        }
        item { ListEntry("Settings", "Appearance, language, security, defaults", Icons.Default.Settings) { onOpen(Screen.SETTINGS) } }
        item { ListEntry("Cloud sync", "Providers and transfer", Icons.Default.Cloud) { onOpen(Screen.CLOUD) } }
        item { ListEntry("Storage", "Repository and space", Icons.Default.Storage) { onOpen(Screen.STORAGE) } }
        item { ListEntry("Management", "Labels, favorites, protection", Icons.Default.Build) { onOpen(Screen.MANAGEMENT) } }
        item { ListEntry("Diagnostics", "Logs, errors, blocked and skipped", Icons.Default.Info) { onOpen(Screen.DIAGNOSTICS) } }
        item { ListEntry("Import / Export", "APK/APKS and configuration", Icons.Default.Apps) { onOpen(Screen.IMPORT_EXPORT) } }
        item { ListEntry("About", "BaRe v1.0 FE mockup", Icons.Default.Info) {} }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun CloudScreen(onBack: () -> Unit) {
    Scaffold(topBar = { TopAppBar(title = { Text("Cloud sync") }, navigationIcon = { IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, "Back") } }) }) { padding ->
        Column(Modifier.fillMaxSize().padding(padding).verticalScroll(rememberScrollState()).padding(16.dp), verticalArrangement = Arrangement.spacedBy(12.dp)) {
            Card(Modifier.fillMaxWidth()) {
                Column(Modifier.padding(20.dp), horizontalAlignment = Alignment.CenterHorizontally) {
                    Icon(Icons.Default.CloudOff, null, Modifier.size(52.dp))
                    Spacer(Modifier.height(10.dp))
                    Text("Cloud account not connected", style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold)
                    Text("Connect provider untuk upload/download/sync.")
                    Spacer(Modifier.height(12.dp))
                    Button(onClick = {}) { Text("Connect account") }
                }
            }
            Text("Providers", style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold)
            ListEntry("Google Drive", "Disconnected", Icons.Default.Cloud) {}
            ListEntry("WebDAV", "Disconnected", Icons.Default.Sync) {}
            ListEntry("Generic remote", "Disconnected", Icons.Default.Cloud) {}
            ListEntry("Cloud diagnostics", "Transfer test dan connection checks", Icons.Default.Info) {}
        }
    }
}

@Composable
private fun DiagnosticsScreen(onBack: () -> Unit) {
    GenericDomainScreen("Diagnostics", "Operational troubleshooting surface. Semua status di sini masih mockup.", listOf("Operation logs", "Errors", "Skipped parts", "Blocked operations", "Storage checks", "Transfer checks", "App visibility diagnostics"), onBack)
}

@Composable
private fun SettingsScreen(onBack: () -> Unit) {
    GenericDomainScreen("Settings", "Pengaturan dikelompokkan berdasarkan domain.", listOf("Appearance", "Language", "Backup defaults", "Restore defaults", "Security", "Compression", "Notifications", "About"), onBack)
}

@Composable
private fun TaskScreen(onBack: () -> Unit) {
    GenericDomainScreen("Task", "Task/progress surface dengan state eksplisit.", listOf("Planned", "Validating", "Ready", "Running", "Succeeded", "Partial", "Failed", "Blocked", "Skipped", "Cancelled", "Verification: Unverified → Verified"), onBack)
}

@Composable
private fun SearchScreen(query: String, onQueryChange: (String) -> Unit, onOpenApp: (AppItem) -> Unit, onClose: () -> Unit) {
    Column(Modifier.fillMaxSize().padding(16.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
        Row(Alignment.CenterVertically) {
            IconButton(onClick = onClose) { Icon(Icons.Default.ArrowBack, "Back") }
            OutlinedTextField(query, onQueryChange, Modifier.weight(1f), label = { Text("Search") }, singleLine = true)
        }
        Text("Search across apps, backups, folders, and configuration.")
        val results = demoApps.filter { query.isBlank() || it.name.contains(query, true) || it.packageName.contains(query, true) }
        LazyColumn(verticalArrangement = Arrangement.spacedBy(8.dp)) {
            items(results) { app -> ListEntry(app.name, app.packageName, Icons.Default.Apps) { onOpenApp(app) } }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun GenericDomainScreen(title: String, subtitle: String, entries: List<String>, onBack: () -> Unit) {
    Scaffold(topBar = { TopAppBar(title = { Text(title) }, navigationIcon = { IconButton(onClick = onBack) { Icon(Icons.Default.ArrowBack, "Back") } }) }) { padding ->
        LazyColumn(Modifier.fillMaxSize().padding(padding).padding(16.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
            item {
                Text(title, style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold)
                Text(subtitle)
            }
            items(entries) { entry ->
                Card(Modifier.fillMaxWidth()) {
                    Row(Modifier.padding(16.dp), Alignment.CenterVertically) {
                        Icon(Icons.Default.Info, null)
                        Spacer(Modifier.width(14.dp))
                        Column(Modifier.weight(1f)) {
                            Text(entry, fontWeight = FontWeight.Bold)
                            Text("Mockup state • capability belum terhubung", style = MaterialTheme.typography.bodySmall)
                        }
                    }
                }
            }
        }
    }
}

@Composable
private fun ListEntry(title: String, subtitle: String, icon: androidx.compose.ui.graphics.vector.ImageVector, onClick: () -> Unit) {
    Card(Modifier.fillMaxWidth().clickable(onClick = onClick)) {
        Row(Modifier.padding(14.dp), Alignment.CenterVertically) {
            Icon(icon, null)
            Spacer(Modifier.width(14.dp))
            Column(Modifier.weight(1f)) {
                Text(title, fontWeight = FontWeight.Bold)
                Text(subtitle, style = MaterialTheme.typography.bodySmall)
            }
        }
    }
}

@Composable
private fun CheckRow(title: String, checked: Boolean) {
    Row(Modifier.fillMaxWidth().padding(vertical = 4.dp), Alignment.CenterVertically) {
        Switch(checked = checked, onCheckedChange = {}, enabled = false)
        Spacer(Modifier.width(10.dp))
        Text(title)
    }
}
