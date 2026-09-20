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
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.PagerState
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.Search
import androidx.compose.material.icons.filled.Menu
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.platform.LocalContext
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
import com.bare.feature.apps.AppsScreen
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
                    StartScreen.STORAGE_SETUP
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
    val pagerState = rememberPagerState(pageCount = { tabs.size })
    val scope = rememberCoroutineScope()

    fun goBack() {
        when {
            searchOpen -> searchOpen = false
            screen != Screen.NONE -> screen = Screen.NONE
            startScreen == StartScreen.ACCESS_METHOD -> {
                if (returnToAppAfterFlow) {
                    returnToAppAfterFlow = false
                    startScreen = StartScreen.APP
                } else {
                    startScreen = StartScreen.STORAGE_SETUP
                }
            }
            startScreen == StartScreen.STORAGE_SETUP -> {
                if (returnToAppAfterFlow) {
                    returnToAppAfterFlow = false
                    startScreen = StartScreen.APP
                } else {
                    startScreen = if (identityType == IdentityType.LOCAL) StartScreen.WELCOME else StartScreen.LOGIN
                }
            }
            startScreen == StartScreen.FORGOT_PASSWORD -> startScreen = StartScreen.LOGIN
            startScreen == StartScreen.SIGN_UP -> startScreen = StartScreen.LOGIN
            startScreen == StartScreen.LOGIN -> startScreen = StartScreen.WELCOME
            startScreen == StartScreen.APP -> scope.launch { pagerState.animateScrollToPage(Tab.HOME.ordinal) }
        }
    }

    BackHandler(enabled = startScreen != StartScreen.WELCOME || screen != Screen.NONE || searchOpen) { goBack() }

    BaReTheme {
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
                                startScreen = StartScreen.STORAGE_SETUP
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
                    onContinue = { if (returnToCloudAfterAuth) { returnToCloudAfterAuth = false; identityType = IdentityType.ACCOUNT; startScreen = StartScreen.APP; screen = Screen.CLOUD } else startScreen = StartScreen.STORAGE_SETUP },
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
                    onCreateAccount = { if (returnToCloudAfterAuth) { returnToCloudAfterAuth = false; startScreen = StartScreen.APP; screen = Screen.CLOUD } else startScreen = StartScreen.STORAGE_SETUP },
                    onBack = ::goBack,
                )
                StartScreen.STORAGE_SETUP -> StorageSetupScreen(
                    identityType?.let { identityStore.load()?.identityId },
                    { startScreen = StartScreen.ACCESS_METHOD },
                    { if (identityType == IdentityType.ACCOUNT) { startScreen = StartScreen.APP; screen = Screen.CLOUD } else { returnToCloudAfterAuth = true; startScreen = StartScreen.LOGIN } },
                    ::goBack,
                )
                StartScreen.ACCESS_METHOD -> AccessMethodScreen(
                    selectedMethod,
                    { selectedMethod = it; identityStore.saveAccessMethod(it); accessError = null },
                    {
                        val method = selectedMethod
                        if (method != null) scope.launch(Dispatchers.IO) {
                            val capability = accessResolver.resolve(method)
                            withContext(Dispatchers.Main) {
                                if (capability.available) {
                                    if (initialIdentityPending) {
                                        val identity = identityStore.loadOrRecover()
                                            ?: identityStore.createLocalIdentity()
                                        identityType = identity.type
                                        val selectedStorageKind = StorageConfigurationStore(context).loadKind()
                                            ?: BackupStorage.Kind.INTERNAL
                                        runCatching {
                                            initializeStorageForIdentity(
                                                context = context,
                                                identityId = identity.identityId,
                                                selectedStorageKind = selectedStorageKind,
                                            )
                                        }.onSuccess {
                                            initialIdentityPending = false
                                            identityStore.markSetupComplete()
                                            startScreen = StartScreen.APP
                                        }.onFailure { error ->
                                            accessError = error.message ?: "storage initialization failed"
                                        }
                                    } else {
                                        identityStore.markSetupComplete()
                                        startScreen = StartScreen.APP
                                    }
                                } else {
                                    accessError = capability.reason
                                }
                            }
                        }
                    },
                    ::goBack,
                    accessError,
                )
                StartScreen.APP -> MainShell(
                    pagerState, searchOpen, searchQuery, { searchQuery = it },
                    { searchOpen = true }, { searchOpen = false },
                    { index -> scope.launch { pagerState.animateScrollToPage(index) } },
                    { target -> if (target == Screen.CLOUD && identityType != IdentityType.ACCOUNT) { returnToCloudAfterAuth = true; startScreen = StartScreen.LOGIN } else { screen = target } },
                    { selectedApp = it; screen = Screen.APP_DETAIL },
                    { returnToAppAfterFlow = true; startScreen = StartScreen.STORAGE_SETUP; screen = Screen.NONE },
                    { returnToAppAfterFlow = true; startScreen = StartScreen.ACCESS_METHOD; screen = Screen.NONE },
                    { identityType = it.type; screen = Screen.NONE; startScreen = StartScreen.APP },
                    screen, selectedApp, ::goBack, identityType == IdentityType.ACCOUNT, loginEmail, selectedMethod
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
    onTabSelected: (Int) -> Unit,
    onOpenScreen: (Screen) -> Unit,
    onOpenApp: (AppItem) -> Unit,
    onOpenStorage: () -> Unit,
    onOpenAccessMethod: () -> Unit,
    onRecoveryRestored: (BaReIdentity) -> Unit,
    screen: Screen,
    selectedApp: AppItem?,
    onBack: () -> Unit,
    hasAccount: Boolean,
    accountEmail: String,
    accessMethod: AccessMethod?,
) {
    if (screen != Screen.NONE) {
        when (screen) {
            Screen.APP_DETAIL -> AppDetailScreen(selectedApp, onOpenScreen, onBack)
            Screen.APP_CONFIG -> AppConfigScreen(selectedApp, onBack)
            Screen.IMPORT_EXPORT -> RecoveryScreen(onRecovered = onRecoveryRestored, onBack = onBack)
            else -> MiscScreen(screen, onBack)
        }
        return
    }
    if (searchOpen) {
        SearchScreen(searchQuery, onSearchQueryChange, onOpenApp, onCloseSearch)
        return
    }
    var appsMenuOpen by remember { mutableStateOf(false) }
    val appsSelected = pagerState.currentPage == Tab.APPS.ordinal
    Scaffold(
        topBar = {
            if (appsSelected) {
                TopAppBar(
                    title = { Text(stringResource(R.string.apps), fontWeight = FontWeight.Bold) },
                    actions = {
                        IconButton(onClick = onOpenSearch) {
                            Icon(Icons.Outlined.Search, stringResource(R.string.search))
                        }
                        Box {
                            IconButton(onClick = { appsMenuOpen = true }) {
                                Icon(Icons.Default.Menu, contentDescription = "Apps menu")
                            }
                            DropdownMenu(
                                expanded = appsMenuOpen,
                                onDismissRequest = { appsMenuOpen = false }
                            ) {
                                DropdownMenuItem(
                                    text = { Text(stringResource(R.string.import_apk_apks)) },
                                    onClick = {
                                        appsMenuOpen = false
                                        onOpenScreen(Screen.IMPORT_EXPORT)
                                    }
                                )
                                DropdownMenuItem(
                                    text = { Text(stringResource(R.string.labels_favorites)) },
                                    onClick = {
                                        appsMenuOpen = false
                                        onOpenScreen(Screen.MANAGEMENT)
                                    }
                                )
                                DropdownMenuItem(
                                    text = { Text(stringResource(R.string.protected_backups)) },
                                    onClick = {
                                        appsMenuOpen = false
                                        onOpenScreen(Screen.MANAGEMENT)
                                    }
                                )
                            }
                        }
                    }
                )
            } else {
                TopAppBar(
                    modifier = Modifier.height(96.dp),
                    title = {
                        Column(
                            modifier = Modifier.fillMaxWidth(),
                            verticalArrangement = Arrangement.Center,
                            horizontalAlignment = androidx.compose.ui.Alignment.CenterHorizontally,
                        ) {
                            Text(
                                text = "B Λ R E",
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
                    actions = { IconButton(onClick = onOpenSearch) { Icon(Icons.Outlined.Search, stringResource(R.string.search)) } },
                )
            }
        },
        bottomBar = {
            NavigationBar {
                tabs.forEachIndexed { index, tab ->
                    NavigationBarItem(
                        selected = pagerState.currentPage == index,
                        onClick = { onTabSelected(index) },
                        icon = { Icon(tab.icon, stringResource(tab.titleRes), modifier = Modifier.size(22.dp)) },
                        label = { Text(stringResource(tab.titleRes), style = MaterialTheme.typography.labelMedium) },
                    )
                }
            }
        },
    ) { padding ->
        HorizontalPager(state = pagerState, modifier = Modifier.fillMaxSize().padding(padding)) { page ->
            when (tabs[page]) {
                Tab.HOME -> HomeScreen(
                    identityType = if (hasAccount) IdentityType.ACCOUNT else IdentityType.LOCAL,
                    accountEmail = accountEmail,
                    accessMethod = accessMethod,
                    onOpen = onOpenScreen,
                    onOpenTab = onTabSelected,
                    onOpenAccessMethod = onOpenAccessMethod,
                    onOpenStorage = onOpenStorage,
                )
                Tab.APPS -> AppsScreen(onOpenScreen, onOpenApp)
                Tab.SCHEDULES -> SchedulesScreen(onOpenScreen)
                Tab.ACCOUNT -> AccountScreen(onOpenScreen)
            }
        }
    }
}
