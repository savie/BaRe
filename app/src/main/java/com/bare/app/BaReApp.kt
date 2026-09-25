package com.bare.app

import android.os.Build
import android.os.Environment

import androidx.activity.compose.BackHandler
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.clickable
import androidx.compose.foundation.background
import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.slideInHorizontally
import androidx.compose.animation.slideOutHorizontally
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.Spacer
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
import androidx.compose.material.icons.filled.Check
import androidx.compose.material.icons.filled.KeyboardArrowDown
import androidx.compose.material.icons.filled.FlashOn
import androidx.compose.material.icons.filled.Label
import androidx.compose.material.icons.filled.Build
import androidx.compose.material.icons.filled.Block
import androidx.compose.material.icons.filled.Android
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material.icons.filled.Clear
import androidx.compose.material.icons.filled.Tune
import androidx.compose.material3.*
import androidx.compose.material3.pulltorefresh.PullToRefreshBox
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
import com.bare.feature.settings.ManageSpaceScreen
import com.bare.feature.settings.EncryptionPasswordStrategyScreen
import com.bare.feature.settings.UserPasswordScreen
import com.bare.feature.settings.BaReLabsScreen
import com.bare.feature.settings.AppVisibilityDiagnosticsScreen
import com.bare.feature.settings.DiagnosticsScreen
import com.bare.feature.settings.LocalBackupScanScreen
import com.bare.feature.settings.BaReLogger
import com.bare.feature.account.RecoveryScreen
import com.bare.recovery.RecoveryArtifactDiscovery
import com.bare.feature.apps.AppConfigScreen
import com.bare.feature.apps.AppDetailScreen
import com.bare.feature.apps.AppBackupScreen
import com.bare.feature.apps.AppBackupsScreen
import com.bare.feature.apps.AppManagementScreen
import com.bare.feature.apps.AppDiagnosticsScreen
import com.bare.feature.apps.AppRestoreScreen
import com.bare.feature.apps.AppsFilterScreen
import com.bare.feature.apps.AppsContext
import com.bare.feature.apps.AppsSearchScreen
import com.bare.feature.apps.AppsQuickActionsScreen
import com.bare.feature.apps.AppLabelsScreen
import com.bare.feature.apps.AppLabelSelectionScreen
import com.bare.feature.apps.AppCustomConfigurationsScreen
import com.bare.feature.apps.AppBlacklistScreen
import com.bare.feature.apps.AppBackupSettingsScreen
import com.bare.feature.apps.InstalledAppRepository
import com.bare.feature.home.HomeScreen
import com.bare.feature.misc.CloudScreen
import com.bare.feature.misc.GenericDomainScreen
import com.bare.feature.misc.MiscScreen
import com.bare.feature.misc.SearchScreen
import com.bare.feature.onboarding.*
import com.bare.storage.BackupStorage
import com.bare.storage.BackupStorageBehavior
import com.bare.feature.schedules.SchedulesScreen
import com.bare.ui.theme.BaReTheme
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.io.File

@OptIn(ExperimentalFoundationApi::class)
@Composable
fun BaReApp() {
    val context = LocalContext.current
    val identityStore = remember(context) { LocalIdentityStore(context) }
    val accountRepository = remember(context) { com.bare.feature.account.LocalAccountRepository(context) }
    val restoredIdentity = remember(identityStore) { identityStore.loadOrRecover() }
    var activeAccount by remember(accountRepository) { mutableStateOf(accountRepository.activeAccount()) }
    val storageBehavior = remember(context) { BackupStorageBehavior(context) }
    val settingsStore = remember(context) { SettingsStore(context) }
    var themeMode by remember(settingsStore) { mutableStateOf(settingsStore.loadThemeMode()) }
    var dynamicColors by remember(settingsStore) { mutableStateOf(settingsStore.loadDynamicColors()) }
    var amoledBlack by remember(settingsStore) { mutableStateOf(settingsStore.loadAmoledBlack()) }
    val durableLocalState = remember(restoredIdentity) {
        restoredIdentity?.let { identity ->
            if (!identityStore.isSetupComplete()) {
                false
            } else {
                storageBehavior.selectedKind().let { kind ->
                    storageBehavior.hasDurableLocalState(identity.identityId, kind)
                }
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
                StartScreen.RECOVERY_ONBOARDING
            }
        )
    }
    var storageAccessGranted by remember(restoredIdentity) {
        mutableStateOf(
            restoredIdentity != null ||
                Build.VERSION.SDK_INT < Build.VERSION_CODES.R ||
                Environment.isExternalStorageManager(),
        )
    }
    var recoveryCandidates by remember(restoredIdentity, storageAccessGranted) {
        mutableStateOf<List<File>?>(null)
    }
    var startupRevealFinished by remember(restoredIdentity, storageAccessGranted) {
        mutableStateOf(restoredIdentity != null)
    }

    LaunchedEffect(restoredIdentity, storageAccessGranted) {
        if (restoredIdentity == null && storageAccessGranted) {
            recoveryCandidates = withContext(Dispatchers.IO) {
                RecoveryArtifactDiscovery(context).findCandidates()
            }
        } else if (restoredIdentity == null) {
            recoveryCandidates = null
        }
    }
    LaunchedEffect(recoveryCandidates, startupRevealFinished) {
        if (restoredIdentity == null && startupRevealFinished && recoveryCandidates != null && recoveryCandidates!!.isEmpty()) {
            startScreen = StartScreen.WELCOME
        }
    }
    var selectedMethod by remember { mutableStateOf<AccessMethod?>(identityStore.loadAccessMethod()) }
    var accessError by remember { mutableStateOf<String?>(null) }
    val accessResolver = remember(context) { com.bare.capability.AccessCapabilityResolver(context) }
    var screen by remember { mutableStateOf(Screen.NONE) }
    val screenBackStack = remember { mutableStateListOf<Screen>() }
    var globalRefreshToken by remember { mutableIntStateOf(0) }
    var globalRefreshing by remember { mutableStateOf(false) }
    LaunchedEffect(globalRefreshToken) {
        if (globalRefreshToken > 0) {
            withFrameNanos { }
            globalRefreshing = false
        }
    }
    val baReLogger = remember(context) { BaReLogger(context) }

    LaunchedEffect(screen) {
        if (screen != Screen.NONE) {
            baReLogger.append(screen.title + ": Opened")
        }
    }
    var screenOriginTab by remember { mutableStateOf<Int?>(null) }
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
    var identityType by remember(restoredIdentity, activeAccount) { mutableStateOf(activeAccount?.let { IdentityType.ACCOUNT } ?: restoredIdentity?.type) }
    var returnToCloudAfterAuth by remember { mutableStateOf(false) }
    var returnToAppAfterFlow by remember { mutableStateOf(false) }
    var accountAuthError by remember { mutableStateOf<String?>(null) }
    var searchQuery by remember { mutableStateOf("") }
    var searchOpen by remember { mutableStateOf(false) }
    var appsSearchOpen by remember { mutableStateOf(false) }
    var appsSearchQuery by remember { mutableStateOf("") }
    var appsFilterOpen by remember { mutableStateOf(false) }
    val pagerState = rememberPagerState(pageCount = { tabs.size })
    val scope = rememberCoroutineScope()

    fun goBack() {
        when {
            searchOpen -> searchOpen = false
            screen != Screen.NONE -> {
                if (screenBackStack.isNotEmpty()) {
                    screen = screenBackStack.removeAt(screenBackStack.lastIndex)
                } else {
                    screen = Screen.NONE
                    val originTab = screenOriginTab
                    screenOriginTab = null
                    if (originTab != null) {
                        scope.launch { pagerState.animateScrollToPage(originTab) }
                    }
                }
            }
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
                StartScreen.RECOVERY_ONBOARDING -> {
                    val candidates = recoveryCandidates
                    if (!startupRevealFinished) {
                        StartupSplash(onFinished = { startupRevealFinished = true })
                    } else if (!storageAccessGranted) {
                        StorageAccessOnboardingScreen(
                            onAccessGranted = {
                                storageAccessGranted = true
                                recoveryCandidates = null
                                startupRevealFinished = false
                            },
                        )
                    } else if (candidates == null) {
                        StartupSplash(onFinished = { })
                    } else if (candidates.isEmpty()) {
                        WelcomeScreen(onSelectIdentity = { identity ->
                            identityType = identity
                            if (identity == IdentityType.LOCAL) showLocalConfirmation = true else startScreen = StartScreen.LOGIN
                        })
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
                    } else {
                        RecoveryOnboardingScreen(
                            candidates = candidates,
                            onRecovered = { identity ->
                                identityType = identity.type
                                initialIdentityPending = false
                                startScreen = if (identityStore.isSetupComplete()) StartScreen.APP else StartScreen.ACCESS_METHOD
                            },
                            onStartFresh = {
                                startScreen = StartScreen.WELCOME
                            },
                        )
                    }
                }
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
                    onEmailChange = { loginEmail = it; accountAuthError = null },
                    password = loginPassword,
                    onPasswordChange = { loginPassword = it; accountAuthError = null },
                    errorMessage = accountAuthError,
                    onContinue = {
                        val password = loginPassword.toCharArray()
                        val signedIn = runCatching { accountRepository.signIn(loginEmail, password) }.getOrDefault(false)
                        if (signedIn) {
                            activeAccount = accountRepository.activeAccount()
                            identityType = IdentityType.ACCOUNT
                            loginPassword = ""
                            accountAuthError = null
                            if (returnToCloudAfterAuth) {
                                returnToCloudAfterAuth = false
                                startScreen = StartScreen.APP
                                screen = Screen.CLOUD
                            } else if (returnToAppAfterFlow) {
                                returnToAppAfterFlow = false
                                startScreen = StartScreen.APP
                            } else {
                                startScreen = StartScreen.ACCESS_METHOD
                            }
                        } else {
                            loginPassword = ""
                            accountAuthError = context.getString(R.string.account_sign_in_failed)
                        }
                    },
                    onCreateAccount = { accountAuthError = null; startScreen = StartScreen.SIGN_UP },
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
                    onEmailChange = { signUpEmail = it; accountAuthError = null },
                    password = signUpPassword,
                    onPasswordChange = { signUpPassword = it; accountAuthError = null },
                    confirmPassword = signUpConfirmPassword,
                    onConfirmPasswordChange = { signUpConfirmPassword = it; accountAuthError = null },
                    errorMessage = accountAuthError,
                    onCreateAccount = {
                        val password = signUpPassword.toCharArray()
                        val accountId = java.util.UUID.randomUUID().toString()
                        val created = runCatching { accountRepository.register(accountId, signUpEmail, password) }.getOrDefault(false)
                        if (created) {
                            activeAccount = accountRepository.activeAccount()
                            identityType = IdentityType.ACCOUNT
                            signUpPassword = ""
                            signUpConfirmPassword = ""
                            accountAuthError = null
                            if (returnToCloudAfterAuth) {
                                returnToCloudAfterAuth = false
                                startScreen = StartScreen.APP
                                screen = Screen.CLOUD
                            } else if (returnToAppAfterFlow) {
                                returnToAppAfterFlow = false
                                startScreen = StartScreen.APP
                            } else {
                                startScreen = StartScreen.ACCESS_METHOD
                            }
                        } else {
                            signUpPassword = ""
                            signUpConfirmPassword = ""
                            accountAuthError = context.getString(R.string.account_create_failed)
                        }
                    },
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
                    { target ->
                        if (target == Screen.CLOUD && identityType != IdentityType.ACCOUNT) {
                            returnToCloudAfterAuth = true
                            startScreen = StartScreen.LOGIN
                        } else if (target != screen) {
                            val isParentTransition =
                                target == Screen.APP_DETAIL &&
                                    screen in setOf(
                                        Screen.APP_BACKUP,
                                        Screen.APP_BACKUPS,
                                        Screen.APP_MANAGEMENT,
                                        Screen.APP_CONFIG,
                                        Screen.APP_DIAGNOSTICS,
                                        Screen.APP_RESTORE,
                                    )
                            if (screen == Screen.NONE) {
                                screenOriginTab = pagerState.currentPage
                            } else if (!isParentTransition) {
                                screenBackStack.add(screen)
                            }
                            screen = target
                        }
                    },
                    { selectedApp = it; selectedAppPackageName = it.packageName; screen = Screen.APP_DETAIL },
                    { selectedMethod = it; identityStore.saveAccessMethod(it) },
                    { identityType = it.type; screen = Screen.NONE; startScreen = StartScreen.APP },
                    screen, identityStore.load()?.identityId, selectedApp, selectedAppPackageName, ::goBack,
                    globalRefreshToken,
                    globalRefreshing,
                    {
                        globalRefreshing = true
                        globalRefreshToken++
                    },
                    { if (identityType == IdentityType.ACCOUNT) { accountRepository.signOut(); activeAccount = null; identityType = IdentityType.LOCAL } else { returnToAppAfterFlow = true; accountAuthError = null; startScreen = StartScreen.LOGIN } },
                    identityType == IdentityType.ACCOUNT, activeAccount?.email ?: loginEmail, selectedMethod,
                    appsSearchOpen, { appsSearchOpen = it }, appsSearchQuery, { appsSearchQuery = it }, appsFilterOpen, { appsFilterOpen = it },
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
    identityId: String?,
    selectedApp: AppItem?,
    selectedAppPackageName: String?,
    onBack: () -> Unit,
    globalRefreshToken: Int,
    isGlobalRefreshing: Boolean,
    onGlobalRefresh: () -> Unit,
    onAccountAction: () -> Unit,
    hasAccount: Boolean,
    accountEmail: String,
    accessMethod: AccessMethod?,
    appsSearchOpen: Boolean,
    onAppsSearchOpenChange: (Boolean) -> Unit,
    appsSearchQuery: String,
    onAppsSearchQueryChange: (String) -> Unit,
    appsFilterOpen: Boolean,
    onAppsFilterOpenChange: (Boolean) -> Unit,
    themeMode: AppThemeMode,
    dynamicColors: Boolean,
    amoledBlack: Boolean,
    onThemeModeChanged: (AppThemeMode) -> Unit,
    onDynamicColorsChanged: (Boolean) -> Unit,
    onAmoledBlackChanged: (Boolean) -> Unit,
) {
    var appsMenuOpen by remember { mutableStateOf(false) }
    var appsInventoryCount by remember { mutableIntStateOf(InstalledAppRepository.cached().size) }
    var appsContext by remember { mutableStateOf(AppsContext.LOCAL) }

    PullToRefreshBox(
        isRefreshing = isGlobalRefreshing,
        onRefresh = onGlobalRefresh,
        modifier = Modifier.fillMaxSize(),
        indicator = {
            if (isGlobalRefreshing) {
                LinearProgressIndicator(
                    modifier = Modifier
                        .fillMaxWidth()
                        .align(androidx.compose.ui.Alignment.TopCenter),
                )
            }
        },
    ) {
    if (screen != Screen.NONE) {
        key(globalRefreshToken) {
        when (screen) {
            Screen.APPS_SEARCH -> AppsSearchScreen(onOpenApp, onBack)
            Screen.APP_QUICK_ACTIONS -> AppsQuickActionsScreen(onOpenScreen, onBack)
            Screen.APP_LABELS -> AppLabelsScreen(onBack)
            Screen.APP_LABEL_SELECTION -> AppLabelSelectionScreen(selectedApp?.copy(packageName = selectedAppPackageName ?: selectedApp.packageName), onBack)
            Screen.APP_CUSTOM_CONFIG -> AppCustomConfigurationsScreen(onBack)
            Screen.APP_BLACKLIST -> AppBlacklistScreen(onBack)
            Screen.APP_BACKUP_SETTINGS -> AppBackupSettingsScreen(onOpenScreen, onBack)
            Screen.APP_DETAIL -> AppDetailScreen(
                app = selectedApp?.copy(packageName = selectedAppPackageName ?: selectedApp.packageName),
                onOpen = onOpenScreen,
                onBack = onBack,
                appCount = appsInventoryCount,
                appsContext = appsContext,
                onAppsContextChange = { appsContext = it },
            )
            Screen.APP_BACKUP -> AppBackupScreen(selectedApp, { onOpenScreen(Screen.APP_DETAIL) }, onOpenScreen)
            Screen.APP_BACKUPS -> AppBackupsScreen(selectedApp, { onOpenScreen(Screen.APP_DETAIL) })
            Screen.APP_MANAGEMENT -> AppManagementScreen(selectedApp, { onOpenScreen(Screen.APP_DETAIL) })
            Screen.APP_CONFIG -> AppConfigScreen(selectedApp, { onOpenScreen(Screen.APP_DETAIL) })
            Screen.APP_DIAGNOSTICS -> AppDiagnosticsScreen(selectedApp, { onOpenScreen(Screen.APP_DETAIL) })
            Screen.APP_RESTORE -> AppRestoreScreen(selectedApp, { onOpenScreen(Screen.APP_DETAIL) })
            Screen.IMPORT_EXPORT -> RecoveryScreen(onRecovered = onRecoveryRestored, onBack = onBack)
            Screen.MANAGE_SPACE -> ManageSpaceScreen(identityId = identityId, onBack = onBack)
            Screen.ENCRYPTION_PASSWORD_STRATEGY -> EncryptionPasswordStrategyScreen(
                onBack = onBack,
                onOpenUserPassword = { onOpenScreen(Screen.USER_PASSWORD) },
            )
            Screen.USER_PASSWORD -> UserPasswordScreen(onBack = onBack)
            Screen.BARE_LABS -> BaReLabsScreen(onBack = onBack, onOpen = onOpenScreen)
            Screen.BARE_LOGGER -> DiagnosticsScreen(onBack = onBack)
            Screen.APP_VISIBILITY_DIAGNOSTICS -> AppVisibilityDiagnosticsScreen(onBack = onBack)
            Screen.LOCAL_BACKUP_SCAN -> LocalBackupScanScreen(identityId = identityId, onBack = onBack)
            else -> MiscScreen(
                screen = screen,
                identityId = identityId,
                onBack = onBack,
                onOpen = onOpenScreen,
                onOpenApps = { onTabSelected(Tab.APPS.ordinal) },
                themeMode = themeMode,
                dynamicColors = dynamicColors,
                amoledBlack = amoledBlack,
                onThemeModeChanged = onThemeModeChanged,
                onDynamicColorsChanged = onDynamicColorsChanged,
                onAmoledBlackChanged = onAmoledBlackChanged,
            )
        }
        }
    } else if (searchOpen) {
        key(globalRefreshToken) {
            SearchScreen(searchQuery, onSearchQueryChange, onOpenApp, onCloseSearch)
        }
    } else {
    key(globalRefreshToken) {
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
    BackHandler(enabled = appsSelected && appsMenuOpen) {
        appsMenuOpen = false
    }
    BackHandler(enabled = appsSelected && appsSearchOpen) {
        onAppsSearchOpenChange(false)
        onAppsSearchQueryChange("")
    }

    Box(Modifier.fillMaxSize()) {
        Scaffold(
            topBar = {
                Column(Modifier.fillMaxWidth()) {
                    GlobalHeader(
                        showSearchAction = !appsSelected,
                        onOpenSearch = onOpenSearch,
                    )
                    if (appsSelected) {
                        AppsSubHeader(
                            appCount = appsInventoryCount,
                            appsContext = appsContext,
                            onAppsContextChange = { appsContext = it },
                            searchOpen = appsSearchOpen,
                            searchQuery = appsSearchQuery,
                            onSearchQueryChange = onAppsSearchQueryChange,
                            onCloseSearch = {
                                onAppsSearchOpenChange(false)
                                onAppsSearchQueryChange("")
                            },
                            onOpenSearch = onOpenAppsSearch,
                            onOpenFilter = onOpenAppsFilter,
                            onOpenMenu = { appsMenuOpen = true },
                        )
                    }
                }
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
                        .height(56.dp)
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

        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(padding),
        ) {
            HorizontalPager(
                state = pagerState,
                modifier = Modifier
                    .fillMaxWidth()
                    .weight(1f)
                    .nestedScroll(bottomBarScrollConnection),
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
                    searchQuery = appsSearchQuery,
                    filterOpen = appsFilterOpen,
                    onFilterOpenChange = onAppsFilterOpenChange,
                    onInventoryCountChange = { appsInventoryCount = it },
                    appsContext = appsContext,
                )
                Tab.SCHEDULES -> SchedulesScreen(onOpenScreen)
                Tab.ACCOUNT -> AccountScreen(
                    onOpen = onOpenScreen,
                    identityType = if (hasAccount) IdentityType.ACCOUNT else IdentityType.LOCAL,
                    accountEmail = accountEmail,
                    onAccountAction = onAccountAction,
                )
                }
            }
        }
    }

    if (appsSelected) {
        ExtendedFloatingActionButton(
            onClick = { onOpenScreen(Screen.APP_QUICK_ACTIONS) },
            modifier = Modifier
                .align(androidx.compose.ui.Alignment.BottomEnd)
                .padding(end = 20.dp, bottom = 88.dp),
            icon = { Icon(Icons.Default.FlashOn, contentDescription = null) },
            text = { Text(stringResource(R.string.batch_actions)) },
        )
    }

    if (appsSelected && appsMenuOpen) {
        Box(
            Modifier
                .fillMaxSize()
                .background(MaterialTheme.colorScheme.scrim.copy(alpha = 0.48f))
                .clickable { appsMenuOpen = false },
        )
        AnimatedVisibility(
            visible = true,
            modifier = Modifier.align(androidx.compose.ui.Alignment.CenterEnd),
            enter = slideInHorizontally(initialOffsetX = { it }) + fadeIn(),
            exit = slideOutHorizontally(targetOffsetX = { it }) + fadeOut(),
        ) {
            Surface(
                modifier = Modifier
                    .fillMaxHeight()
                    .fillMaxWidth(0.84f),
                shape = RoundedCornerShape(topStart = 28.dp, bottomStart = 28.dp),
                color = MaterialTheme.colorScheme.surfaceVariant,
                tonalElevation = 8.dp,
                shadowElevation = 8.dp,
            ) {
                Column(
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(top = 12.dp, bottom = 20.dp),
                ) {
                    Box(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(bottom = 4.dp),
                        contentAlignment = androidx.compose.ui.Alignment.Center,
                    ) {
                        Surface(
                            modifier = Modifier
                                .width(54.dp)
                                .height(4.dp),
                            shape = RoundedCornerShape(2.dp),
                            color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.65f),
                        ) {}
                    }

                    AppsDrawerItem(Icons.Default.FlashOn, stringResource(R.string.quick_actions_label), onClick = {
                        appsMenuOpen = false
                        onOpenScreen(Screen.APP_QUICK_ACTIONS)
                    })
                    AppsDrawerItem(Icons.Default.Label, stringResource(R.string.app_labels), stringResource(R.string.app_labels_description), onClick = {
                        appsMenuOpen = false
                        onOpenScreen(Screen.APP_LABELS)
                    })
                    AppsDrawerItem(Icons.Default.Build, stringResource(R.string.custom_configurations), stringResource(R.string.custom_configurations_description), stringResource(R.string.advanced_rooted_users), onClick = {
                        appsMenuOpen = false
                        onOpenScreen(Screen.APP_CUSTOM_CONFIG)
                    })
                    AppsDrawerItem(Icons.Default.Block, stringResource(R.string.blacklist), stringResource(R.string.blacklist_description), onClick = {
                        appsMenuOpen = false
                        onOpenScreen(Screen.APP_BLACKLIST)
                    })

                    Spacer(Modifier.weight(1f))

                    HorizontalDivider()
                    Spacer(Modifier.height(12.dp))
                    AppsDrawerItem(Icons.Default.Android, stringResource(R.string.app_backup_settings), onClick = {
                        appsMenuOpen = false
                        onOpenScreen(Screen.APP_BACKUP_SETTINGS)
                    })
                    AppsDrawerItem(Icons.Default.Settings, stringResource(R.string.settings), onClick = {
                        appsMenuOpen = false
                        onOpenScreen(Screen.SETTINGS)
                    })
                }
            }
        }
    }
    }
    }
    }
    }
}
@Composable
fun AppsSubHeader(
    appCount: Int,
    appsContext: AppsContext,
    onAppsContextChange: (AppsContext) -> Unit,
    searchOpen: Boolean,
    searchQuery: String,
    onSearchQueryChange: (String) -> Unit,
    onCloseSearch: () -> Unit,
    onOpenSearch: () -> Unit,
    onOpenFilter: () -> Unit,
    onOpenMenu: () -> Unit,
    onBack: (() -> Unit)? = null,
) {
    var contextMenuOpen by remember { mutableStateOf(false) }

    Column(
        modifier = Modifier.fillMaxWidth(),
    ) {
        if (searchOpen) {
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(56.dp)
                    .padding(horizontal = 12.dp),
                verticalAlignment = androidx.compose.ui.Alignment.CenterVertically,
            ) {
                if (onBack != null) {
                    IconButton(onClick = onBack) {
                        Icon(
                            Icons.Default.ArrowBack,
                            contentDescription = stringResource(R.string.back),
                        )
                    }
                }
                OutlinedTextField(
                    value = searchQuery,
                    onValueChange = onSearchQueryChange,
                    modifier = Modifier
                        .weight(1f)
                        .height(56.dp),
                    singleLine = true,
                    maxLines = 1,
                    placeholder = { Text(stringResource(R.string.search_apps_or_package)) },
                    leadingIcon = {
                        Icon(Icons.Outlined.Search, contentDescription = null)
                    },
                    trailingIcon = {
                        IconButton(onClick = onCloseSearch) {
                            Icon(
                                Icons.Default.Clear,
                                contentDescription = stringResource(R.string.close_search),
                            )
                        }
                    },
                )
            }
        } else {
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(56.dp)
                    .padding(start = 12.dp, end = 4.dp),
                verticalAlignment = androidx.compose.ui.Alignment.CenterVertically,
            ) {
                if (onBack != null) {
                    IconButton(onClick = onBack) {
                        Icon(
                            Icons.Default.ArrowBack,
                            contentDescription = stringResource(R.string.back),
                        )
                    }
                }
                Box(
                    modifier = Modifier.weight(1f),
                ) {
                    Column(
                        modifier = Modifier
                            .clickable { contextMenuOpen = true }
                            .padding(start = 8.dp, top = 8.dp, bottom = 8.dp),
                        verticalArrangement = Arrangement.Center,
                    ) {
                        Row(
                            verticalAlignment = androidx.compose.ui.Alignment.CenterVertically,
                        ) {
                            Text(
                                text = if (appsContext == AppsContext.LOCAL) {
                                    stringResource(R.string.local_apps).uppercase()
                                } else {
                                    stringResource(R.string.apps_cloud_synced).uppercase()
                                },
                                style = MaterialTheme.typography.titleSmall,
                                fontWeight = FontWeight.Bold,
                                maxLines = 1,
                            )
                            Icon(
                                Icons.Default.KeyboardArrowDown,
                                contentDescription = null,
                                modifier = Modifier.size(20.dp),
                            )
                        }
                        Text(
                            text = if (appsContext == AppsContext.LOCAL) {
                                stringResource(R.string.apps_count, appCount)
                            } else {
                                stringResource(R.string.apps_cloud_description)
                            },
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                            maxLines = 1,
                        )
                    }

                    DropdownMenu(
                        expanded = contextMenuOpen,
                        onDismissRequest = { contextMenuOpen = false },
                    ) {
                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.apps_local)) },
                            leadingIcon = {
                                if (appsContext == AppsContext.LOCAL) {
                                    Icon(Icons.Default.Check, contentDescription = null)
                                }
                            },
                            onClick = {
                                contextMenuOpen = false
                                onAppsContextChange(AppsContext.LOCAL)
                            },
                        )
                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.apps_cloud_synced)) },
                            leadingIcon = {
                                if (appsContext == AppsContext.CLOUD) {
                                    Icon(Icons.Default.Check, contentDescription = null)
                                }
                            },
                            onClick = {
                                contextMenuOpen = false
                                onAppsContextChange(AppsContext.CLOUD)
                            },
                        )
                    }
                }

                IconButton(onClick = onOpenSearch) {
                    Icon(
                        Icons.Outlined.Search,
                        contentDescription = stringResource(R.string.search),
                    )
                }
                IconButton(onClick = onOpenFilter) {
                    Icon(
                        Icons.Default.Tune,
                        contentDescription = stringResource(R.string.filter_and_search),
                    )
                }
                IconButton(onClick = onOpenMenu) {
                    Icon(
                        Icons.Default.Menu,
                        contentDescription = stringResource(R.string.apps_menu),
                    )
                }
            }
        }

        HorizontalDivider()
    }
}

@Composable
private fun AppsDrawerItem(
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    title: String,
    description: String? = null,
    badge: String? = null,
    onClick: () -> Unit,
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clickable(onClick = onClick)
            .padding(horizontal = 24.dp, vertical = 14.dp),
        verticalAlignment = androidx.compose.ui.Alignment.Top,
    ) {
        Icon(
            icon,
            contentDescription = null,
            modifier = Modifier.size(28.dp),
            tint = MaterialTheme.colorScheme.onSurfaceVariant,
        )
        Spacer(Modifier.width(20.dp))
        Column(Modifier.weight(1f)) {
            Text(title, style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.SemiBold)
            if (description != null) {
                Spacer(Modifier.height(2.dp))
                Text(description, style = MaterialTheme.typography.bodyMedium, color = MaterialTheme.colorScheme.onSurfaceVariant)
            }
            if (badge != null) {
                Spacer(Modifier.height(8.dp))
                Surface(shape = RoundedCornerShape(18.dp), color = MaterialTheme.colorScheme.primaryContainer) {
                    Text(badge, modifier = Modifier.padding(horizontal = 12.dp, vertical = 6.dp), style = MaterialTheme.typography.labelMedium, fontWeight = FontWeight.Bold)
                }
            }
        }
    }
}
