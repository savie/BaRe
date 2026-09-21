package com.bare.app

import androidx.activity.compose.BackHandler
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.PagerState
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection
import androidx.compose.ui.input.nestedscroll.NestedScrollSource
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.unit.Velocity
import androidx.compose.ui.geometry.Offset
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.Search
import androidx.compose.material.icons.filled.Menu
import androidx.compose.material.icons.filled.Tune
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.draw.clip
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import com.bare.R
import com.bare.feature.account.AccountScreen
import com.bare.feature.account.RecoveryScreen
import com.bare.feature.apps.AppConfigScreen
import com.bare.feature.apps.AppDetailScreen
import com.bare.feature.apps.AppBackupScreen
import com.bare.feature.apps.AppBackupsScreen
import com.bare.feature.apps.AppManagementScreen
import com.bare.feature.apps.AppDiagnosticsScreen
import com.bare.feature.apps.AppRestoreScreen
import com.bare.feature.apps.AppsFilterScreen
import com.bare.feature.apps.AppsSearchScreen
import com.bare.feature.apps.AppsToolsScreen
import com.bare.feature.home.HomeScreen
import com.bare.feature.misc.CloudScreen
import com.bare.feature.misc.GenericDomainScreen
import com.bare.feature.misc.MiscScreen
import com.bare.feature.misc.SearchScreen
import com.bare.feature.onboarding.*
import com.bare.storage.BackupStorage
import com.bare.storage.StorageConfigurationStore
import com.bare.feature.schedules.SchedulesScreen
import com.bare.ui.theme.BaReTheme
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

@OptIn(ExperimentalFoundationApi::class)
@Composable
fun BaReApp() {
    val context = LocalContext.current
    val identityStore = remember(context) { LocalIdentityStore(context) }
    val restoredIdentity = remember(identityStore) { identityStore.loadOrRecover() }
    val storageRepository = remember(context) { com.bare.storage.BackupStorageRepository(context) }
    val storageConfiguration = remember(context) { StorageConfigurationStore(context) }
    val settingsStore = remember(context) { SettingsStore(context) }
    var themeMode by remember(settingsStore) { mutableStateOf(settingsStore.loadThemeMode()) }
    var dynamicColors by remember(settingsStore) { mutableStateOf(settingsStore.loadDynamicColors()) }
    var amoledBlack by remember(settingsStore) { mutableStateOf(settingsStore.loadAmoledBlack()) }
    val durableLocalState = remember(restoredIdentity) {
        restoredIdentity?.let { identity ->
            if (!identityStore.isSetupComplete()) {
                false
            } else {
                storageConfiguration.loadKind()?.let { kind ->
                    storageRepository.hasDurableLocalState(identity.identityId, kind)
                } ?: false
            }
        } ?: false
    }
    var startScreen by remember(restoredIdentity, durableLocalState) {
        mutableStateOf(
            if (restoredIdentity != null) {
                if (identityStore.isSetupComplete() && durableLocalState) {
                    StartScreen.APP
                } else {
                    StartScreen.ACCESS_METHOD
                }
            } else {
                StartScreen.WELCOME
            }
        )
    }
    var selectedMethod by remember { mutableStateOf<AccessMethod?>(identityStore.loadAccessMethod()) }
    var accessError by remember { mutableStateOf<String?>(null) }
    val accessResolver = remember(context) { com.bare.capability.AccessCapabilityResolver(context) }
    var screen by remember { mutableStateOf(Screen.NONE) }
    var selectedApp by remember { mutableStateOf<AppItem?>(null) }
    var selectedAppPackageName by remember { mutableStateOf<String?>(null) }
    var loginEmail by remember { mutableStateOf("") }
    var loginPassword by remember { mutableStateOf("") }
    var signUpEmail by remember { mutableStateOf("") }
    var signUpPassword by remember { mutableStateOf("") }
    var signUpConfirmPassword by remember { mutableStateOf("") }
    var resetEmail by remember { mutableStateOf("") }
    var showLocalConfirmation by remember { mutableStateOf(false) }
    var initialIdentityPending by remember(restoredIdentity) { mutableStateOf(restoredIdentity == null) }
    var identityType by remember(restoredIdentity) { mutableStateOf(restoredIdentity?.type) }
    var returnToCloudAfterAuth by remember { mutableStateOf(false) }
    var returnToAppAfterFlow by remember { mutableStateOf(false) }
    var searchQuery by remember { mutableStateOf("") }
    var searchOpen by remember { mutableStateOf(false) }
    var appsSearchOpen by remember { mutableStateOf(false) }
    var appsFilterOpen by remember { mutableStateOf(false) }
    val pagerState = rememberPagerState(pageCount = { tabs.size })
    val scope = rememberCoroutineScope()

    fun goBack() {
        when {
            searchOpen -> searchOpen = false
            screen == Screen.APP_BACKUP ||
                screen == Screen.APP_BACKUPS ||
                screen == Screen.APP_MANAGEMENT ||
                screen == Screen.APP_CONFIG ||
                screen == Screen.APP_DIAGNOSTICS ||
                screen == Screen.APP_RESTORE -> {
                screen = Screen.APP_DETAIL
            }
            screen != Screen.NONE -> screen = Screen.NONE
            startScreen == StartScreen.ACCESS_METHOD -> {
                if (returnToAppAfterFlow) {
                    returnToAppAfterFlow = false
                    startScreen = StartScreen.APP
                } else {
                    startScreen = if (identityType == IdentityType.LOCAL) StartScreen.WELCOME else StartScreen.LOGIN
                }
            }
            startScreen == StartScreen.STORAGE_SETUP -> {
                if (returnToAppAfterFlow) {
                    returnToAppAfterFlow = false
                    startScreen = StartScreen.APP
                } else {
                    startScreen = StartScreen.ACCESS_METHOD
                }
            }
            startScreen == StartScreen.FORGOT_PASSWORD -> startScreen = StartScreen.LOGIN
            startScreen == StartScreen.SIGN_UP -> startScreen = StartScreen.LOGIN
            startScreen == StartScreen.LOGIN -> startScreen = StartScreen.WELCOME
            startScreen == StartScreen.APP -> scope.launch { pagerState.animateScrollToPage(Tab.HOME.ordinal) }
        }
    }

    BackHandler(enabled = startScreen != StartScreen.WELCOME || screen != Screen.NONE || searchOpen) { goBack() }

    BaReTheme(
        themeMode = themeMode,
        dynamicColors = dynamicColors,
        amoledBlack = amoledBlack,
    ) {
        Surface(Modifier.fillMaxSize()) {
            when (startScreen) {
                StartScreen.WELCOME -> {
                    WelcomeScreen { identity ->
                        identityType = identity
                        if (identity == IdentityType.LOCAL) showLocalConfirmation = true else startScreen = StartScreen.LOGIN
                    }
                    if (showLocalConfirmation) {
                        LocalSetupConfirmation(
                            onContinue = {
                                showLocalConfirmation = false
                                initialIdentityPending = true
                                startScreen = StartScreen.ACCESS_METHOD
                            },
                            onDismiss = { showLocalConfirmation = false },
                        )
                    }
                }
                StartScreen.LOGIN -> LoginScreen(
                    email = loginEmail,
                    onEmailChange = { loginEmail = it },
                    password = loginPassword,
                    onPasswordChange = { loginPassword = it },
                    onContinue = { if (returnToCloudAfterAuth) { returnToCloudAfterAuth = false; identityType = IdentityType.ACCOUNT; startScreen = StartScreen.APP; screen = Screen.CLOUD } else startScreen = StartScreen.ACCESS_METHOD },
                    onCreateAccount = { startScreen = StartScreen.SIGN_UP },
                    onForgotPassword = { resetEmail = loginEmail; startScreen = StartScreen.FORGOT_PASSWORD },
                    onBack = ::goBack,
                )
                StartScreen.FORGOT_PASSWORD -> ForgotPasswordScreen(
                    email = resetEmail,
                    onEmailChange = { resetEmail = it },
                    onBack = ::goBack,
                )
                StartScreen.SIGN_UP -> SignUpScreen(
                    email = signUpEmail,
                    onEmailChange = { signUpEmail = it },
                    password = signUpPassword,
                    onPasswordChange = { signUpPassword = it },
                    confirmPassword = signUpConfirmPassword,
                    onConfirmPasswordChange = { signUpConfirmPassword = it },
                    onCreateAccount = { if (returnToCloudAfterAuth) { returnToCloudAfterAuth = false; startScreen = StartScreen.APP; screen = Screen.CLOUD } else startScreen = StartScreen.ACCESS_METHOD },
                    onBack = ::goBack,
                )
                StartScreen.ACCESS_METHOD -> AccessMethodScreen(
                    selectedMethod,
                    { selectedMethod = it; identityStore.saveAccessMethod(it); accessError = null },
                    {
                        val method = selectedMethod
                        if (method != null) scope.launch(Dispatchers.IO) {
                            val capability = accessResolver.prepare(method)
                            withContext(Dispatchers.Main) {
                                if (capability.available) {
                                    if (initialIdentityPending) {
                                        val identity = identityStore.loadOrRecover()
                                            ?: identityStore.createLocalIdentity()
                                        identityType = identity.type
                                        initialIdentityPending = false
                                    }
                                    accessError = null
                                    startScreen = StartScreen.STORAGE_SETUP
                                } else {
                                    accessError = capability.reason
                                }
                            }
                        }
                    },
                    ::goBack,
                    accessError,
                )
                StartScreen.STORAGE_SETUP -> StorageSetupScreen(
                    identityType?.let { identityStore.load()?.identityId },
                    {
                        identityStore.markSetupComplete()
                        startScreen = StartScreen.APP
                    },
                    { if (identityType == IdentityType.ACCOUNT) { startScreen = StartScreen.APP; screen = Screen.CLOUD } else { returnToCloudAfterAuth = true; startScreen = StartScreen.LOGIN } },
                    ::goBack,
                )
                StartScreen.APP -> MainShell(
                    pagerState, searchOpen, searchQuery, { searchQuery = it },
                    { searchOpen = true }, { searchOpen = false },
                    { appsSearchOpen = !appsSearchOpen }, { appsFilterOpen = true },
                    { index -> scope.launch { pagerState.animateScrollToPage(index) } },
                    { target -> if (target == Screen.CLOUD && identityType != IdentityType.ACCOUNT) { returnToCloudAfterAuth = true; startScreen = StartScreen.LOGIN } else { screen = target } },
                    { selectedApp = it; selectedAppPackageName = it.packageName; screen = Screen.APP_DETAIL },
                    { selectedMethod = it; identityStore.saveAccessMethod(it) },
                    { identityType = it.type; screen = Screen.NONE; startScreen = StartScreen.APP },
                    screen, selectedApp, selectedAppPackageName, ::goBack, identityType == IdentityType.ACCOUNT, loginEmail, selectedMethod,
                    appsSearchOpen, { appsSearchOpen = it }, appsFilterOpen, { appsFilterOpen = it },
                    themeMode, dynamicColors, amoledBlack,
                    { value -> themeMode = value; settingsStore.saveThemeMode(value) },
                    { value -> dynamicColors = value; settingsStore.saveDynamicColors(value) },
                    { value -> amoledBlack = value; settingsStore.saveAmoledBlack(value) },
                )
            }
        }
    }
}

@OptIn(ExperimentalFoundationApi::class, ExperimentalMaterial3Api::class)
@Composable
private fun MainShell(
    pagerState: PagerState,
    searchOpen: Boolean,
    searchQuery: String,
    onSearchQueryChange: (String) -> Unit,
    onOpenSearch: () -> Unit,
    onCloseSearch: () -> Unit,
    onOpenAppsSearch: () -> Unit,
    onOpenAppsFilter: () -> Unit,
    onTabSelected: (Int) -> Unit,
    onOpenScreen: (Screen) -> Unit,
    onOpenApp: (AppItem) -> Unit,
    onAccessChanged: (AccessMethod) -> Unit,
    onRecoveryRestored: (BaReIdentity) -> Unit,
    screen: Screen,
    selectedApp: AppItem?,
    selectedAppPackageName: String?,
    onBack: () -> Unit,
    hasAccount: Boolean,
    accountEmail: String,
    accessMethod: AccessMethod?,
    appsSearchOpen: Boolean,
    onAppsSearchOpenChange: (Boolean) -> Unit,
    appsFilterOpen: Boolean,
    onAppsFilterOpenChange: (Boolean) -> Unit,
    themeMode: AppThemeMode,
    dynamicColors: Boolean,
    amoledBlack: Boolean,
    onThemeModeChanged: (AppThemeMode) -> Unit,
    onDynamicColorsChanged: (Boolean) -> Unit,
    onAmoledBlackChanged: (Boolean) -> Unit,
) {
    if (screen != Screen.NONE) {
        when (screen) {
            Screen.APPS_SEARCH -> AppsSearchScreen(onOpenApp, onBack)
            Screen.APPS_TOOLS -> AppsToolsScreen(onOpenScreen, onBack)
            Screen.APP_DETAIL -> AppDetailScreen(selectedApp?.copy(packageName = selectedAppPackageName ?: selectedApp.packageName), onOpenScreen, onBack)
            Screen.APP_BACKUP -> AppBackupScreen(selectedApp, { onOpenScreen(Screen.APP_DETAIL) }, onOpenScreen)
            Screen.APP_BACKUPS -> AppBackupsScreen(selectedApp, { onOpenScreen(Screen.APP_DETAIL) })
            Screen.APP_MANAGEMENT -> AppManagementScreen(selectedApp, { onOpenScreen(Screen.APP_DETAIL) })
            Screen.APP_CONFIG -> AppConfigScreen(selectedApp, { onOpenScreen(Screen.APP_DETAIL) })
            Screen.APP_DIAGNOSTICS -> AppDiagnosticsScreen(selectedApp, { onOpenScreen(Screen.APP_DETAIL) })
            Screen.APP_RESTORE -> AppRestoreScreen(selectedApp, { onOpenScreen(Screen.APP_DETAIL) })
            Screen.IMPORT_EXPORT -> RecoveryScreen(onRecovered = onRecoveryRestored, onBack = onBack)
            else -> MiscScreen(
                screen = screen,
                onBack = onBack,
                onOpenApps = { onTabSelected(Tab.APPS.ordinal) },
                themeMode = themeMode,
                dynamicColors = dynamicColors,
                amoledBlack = amoledBlack,
                onThemeModeChanged = onThemeModeChanged,
                onDynamicColorsChanged = onDynamicColorsChanged,
                onAmoledBlackChanged = onAmoledBlackChanged,
            )
        }
        return
    }
    if (searchOpen) {
        SearchScreen(searchQuery, onSearchQueryChange, onOpenApp, onCloseSearch)
        return
    }
    var appsMenuOpen by remember { mutableStateOf(false) }
    var bottomBarVisible by remember { mutableStateOf(true) }
    val appsSelected = pagerState.currentPage == Tab.APPS.ordinal
    val bottomBarScrollConnection = remember {
        object : NestedScrollConnection {
            override fun onPreScroll(available: Offset, source: NestedScrollSource): Offset {
                if (available.y < -1f) bottomBarVisible = false
                else if (available.y > 1f) bottomBarVisible = true
                return Offset.Zero
            }

            override suspend fun onPreFling(available: Velocity): Velocity {
                if (available.y < -1f) bottomBarVisible = false
                else if (available.y > 1f) bottomBarVisible = true
                return Velocity.Zero
            }
        }
    }
    LaunchedEffect(pagerState.currentPage) {
        bottomBarVisible = true
    }
    Scaffold(
        topBar = {
            TopAppBar(
                modifier = Modifier.height(96.dp),
                title = {
                    Column(
                        modifier = Modifier.fillMaxWidth(),
                        verticalArrangement = Arrangement.Center,
                        horizontalAlignment = androidx.compose.ui.Alignment.Start,
                    ) {
                        Text(
                            text = stringResource(R.string.app_name),
                            style = MaterialTheme.typography.titleLarge,
                            fontWeight = FontWeight.Bold,
                            letterSpacing = 5.sp,
                            color = MaterialTheme.colorScheme.onSurface,
                        )
                        Text(
                            text = stringResource(R.string.brand_tagline),
                            style = MaterialTheme.typography.labelSmall,
                            letterSpacing = 3.5.sp,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                    }
                },
                actions = {
                    IconButton(onClick = {
                        if (appsSelected) onOpenAppsSearch() else onOpenSearch()
                    }) {
                        Icon(Icons.Outlined.Search, stringResource(R.string.search))
                    }
                    if (appsSelected) {
                        IconButton(onClick = onOpenAppsFilter) {
                            Icon(Icons.Default.Tune, contentDescription = "Filter & Search")
                        }
                        Box {
                            IconButton(onClick = { appsMenuOpen = true }) {
                                Icon(Icons.Default.Menu, contentDescription = stringResource(R.string.apps_menu))
                            }
                            DropdownMenu(
                                expanded = appsMenuOpen,
                                onDismissRequest = { appsMenuOpen = false }
                            ) {
                                DropdownMenuItem(
                                    text = { Text(stringResource(R.string.apps_tools_capability_map)) },
                                    onClick = {
                                        appsMenuOpen = false
                                        onOpenScreen(Screen.APPS_TOOLS)
                                    }
                                )
                            }
                        }
                    }
                },
            )
        },
        bottomBar = {
            androidx.compose.animation.AnimatedVisibility(
                visible = bottomBarVisible,
                modifier = Modifier.fillMaxWidth(),
                enter = androidx.compose.animation.slideInVertically { it } + androidx.compose.animation.fadeIn(),
                exit = androidx.compose.animation.slideOutVertically { it } + androidx.compose.animation.fadeOut(),
            ) {
                Box(
                    modifier = Modifier.fillMaxWidth(),
                    contentAlignment = androidx.compose.ui.Alignment.Center,
                ) {
                    NavigationBar(
                    modifier = Modifier
                        .fillMaxWidth(0.62f)
                        .height(64.dp)
                        .offset(y = (-12).dp)
                        .clip(RoundedCornerShape(24.dp)),
                    containerColor = MaterialTheme.colorScheme.surfaceVariant,
                    tonalElevation = 6.dp,
                    windowInsets = WindowInsets(0, 0, 0, 0),
                ) {
                    tabs.forEachIndexed { index, tab ->
                        NavigationBarItem(
                            selected = pagerState.currentPage == index,
                            onClick = { onTabSelected(index) },
                            icon = {
                                Icon(
                                    tab.icon,
                                    stringResource(tab.titleRes),
                                    modifier = Modifier.size(28.dp),
                                )
                            },
                            colors = NavigationBarItemDefaults.colors(
                                indicatorColor = MaterialTheme.colorScheme.primaryContainer,
                                selectedIconColor = MaterialTheme.colorScheme.onPrimaryContainer,
                                unselectedIconColor = MaterialTheme.colorScheme.onSurfaceVariant,
                            ),
                        )
                    }
                }
                }
            }
        },
    ) { padding ->
        HorizontalPager(
            state = pagerState,
            modifier = Modifier.fillMaxSize().padding(padding).nestedScroll(bottomBarScrollConnection),
        ) { page ->
            when (tabs[page]) {
                Tab.HOME -> HomeScreen(
                    identityId = LocalIdentityStore(LocalContext.current).load()?.identityId,
                    identityType = if (hasAccount) IdentityType.ACCOUNT else IdentityType.LOCAL,
                    accountEmail = accountEmail,
                    accessMethod = accessMethod,
                    onOpen = onOpenScreen,
                    onOpenTab = onTabSelected,
                    onAccessChanged = onAccessChanged,
                )
                Tab.APPS -> AppsFilterScreen(
                    onOpen = onOpenScreen,
                    onOpenApp = onOpenApp,
                    searchOpen = appsSearchOpen,
                    onSearchOpenChange = onAppsSearchOpenChange,
                    filterOpen = appsFilterOpen,
                    onFilterOpenChange = onAppsFilterOpenChange,
                )
                Tab.SCHEDULES -> SchedulesScreen(onOpenScreen)
                Tab.ACCOUNT -> AccountScreen(
                    onOpen = onOpenScreen,
                    identityType = if (hasAccount) IdentityType.ACCOUNT else IdentityType.LOCAL,
                    accountEmail = accountEmail,
                )
            }
        }
    }
}
