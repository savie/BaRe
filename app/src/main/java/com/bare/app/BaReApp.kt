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
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.PagerState
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Search
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.res.stringResource
import com.bare.R
import com.bare.feature.account.AccountScreen
import com.bare.feature.apps.AppConfigScreen
import com.bare.feature.apps.AppDetailScreen
import com.bare.feature.apps.AppsScreen
import com.bare.feature.home.HomeScreen
import com.bare.feature.misc.CloudScreen
import com.bare.feature.misc.GenericDomainScreen
import com.bare.feature.misc.MiscScreen
import com.bare.feature.misc.SearchScreen
import com.bare.feature.onboarding.*
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
    val restoredIdentity = remember(identityStore) { identityStore.load() }
    var startScreen by remember(restoredIdentity) {
        mutableStateOf(
            if (restoredIdentity != null) {
                if (identityStore.isSetupComplete()) StartScreen.APP else StartScreen.STORAGE_SETUP
            } else {
                StartScreen.WELCOME
            }
        )
    }
    var selectedMethod by remember { mutableStateOf<AccessMethod?>(null) }
    var accessError by remember { mutableStateOf<String?>(null) }\n    val accessResolver = remember(context) { com.bare.capability.AccessCapabilityResolver(context) }
    var screen by remember { mutableStateOf(Screen.NONE) }
    var selectedApp by remember { mutableStateOf<AppItem?>(null) }
    var loginEmail by remember { mutableStateOf("") }
    var loginPassword by remember { mutableStateOf("") }
    var signUpEmail by remember { mutableStateOf("") }
    var signUpPassword by remember { mutableStateOf("") }
    var signUpConfirmPassword by remember { mutableStateOf("") }
    var resetEmail by remember { mutableStateOf("") }
    var showLocalConfirmation by remember { mutableStateOf(false) }
    var identityType by remember(restoredIdentity) { mutableStateOf(restoredIdentity?.type) }
    var returnToCloudAfterAuth by remember { mutableStateOf(false) }
    var searchQuery by remember { mutableStateOf("") }
    var searchOpen by remember { mutableStateOf(false) }
    val pagerState = rememberPagerState(pageCount = { tabs.size })
    val scope = rememberCoroutineScope()

    fun goBack() {
        when {
            searchOpen -> searchOpen = false
            screen != Screen.NONE -> screen = Screen.NONE
            startScreen == StartScreen.ACCESS_METHOD -> startScreen = StartScreen.STORAGE_SETUP
            startScreen == StartScreen.STORAGE_SETUP -> startScreen =
                if (identityType == IdentityType.LOCAL) StartScreen.WELCOME else StartScreen.LOGIN
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
                                val identity = identityStore.createLocalIdentity()
                                identityType = identity.type
                                showLocalConfirmation = false
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
                StartScreen.STORAGE_SETUP -> StorageSetupScreen(identityType?.let { identityStore.load()?.identityId }, { startScreen = StartScreen.ACCESS_METHOD }, ::goBack)
                StartScreen.ACCESS_METHOD -> AccessMethodScreen(
                    selectedMethod,
                    { selectedMethod = it; accessError = null },
                    {
                        val method = selectedMethod
                        if (method != null) scope.launch(Dispatchers.IO) {
                            val capability = accessResolver.resolve(method)
                            withContext(Dispatchers.Main) {
                                if (capability.available) {
                                    identityStore.markSetupComplete()
                                    startScreen = StartScreen.APP
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
                    { target -> if (target == Screen.CLOUD && identityType != IdentityType.ACCOUNT) { returnToCloudAfterAuth = true; startScreen = StartScreen.LOGIN } else { screen = target } }, { selectedApp = it; screen = Screen.APP_DETAIL },
                    screen, selectedApp, ::goBack, identityType == IdentityType.ACCOUNT
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
    screen: Screen,
    selectedApp: AppItem?,
    onBack: () -> Unit,
    hasAccount: Boolean,
) {
    if (screen != Screen.NONE) {
        when (screen) {
            Screen.APP_DETAIL -> AppDetailScreen(selectedApp, onOpenScreen, onBack)
            Screen.APP_CONFIG -> AppConfigScreen(selectedApp, onBack)
            else -> MiscScreen(screen, onBack)
        }
        return
    }
    if (searchOpen) {
        SearchScreen(searchQuery, onSearchQueryChange, onOpenApp, onCloseSearch)
        return
    }
    Scaffold(
        topBar = {
            TopAppBar(
                title = {
                    Column(
                        modifier = Modifier.fillMaxWidth(),
                        verticalArrangement = Arrangement.Center,
                        horizontalAlignment = androidx.compose.ui.Alignment.CenterHorizontally,
                    ) {
                        Text(
                            text = "BARE",
                            style = MaterialTheme.typography.titleLarge,
                            fontWeight = androidx.compose.ui.text.font.FontWeight.Light,
                            letterSpacing = 8.sp,
                            color = MaterialTheme.colorScheme.onSurface,
                        )
                        Text(
                            text = "SAVE OUR DAY",
                            style = MaterialTheme.typography.labelSmall,
                            letterSpacing = 4.sp,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                    }
                },
                actions = { IconButton(onClick = onOpenSearch) { Icon(Icons.Default.Search, stringResource(R.string.search)) } },
            )
        },
        bottomBar = {
            NavigationBar {
                tabs.forEachIndexed { index, tab ->
                    NavigationBarItem(
                        selected = pagerState.currentPage == index,
                        onClick = { onTabSelected(index) },
                        icon = { Icon(tab.icon, stringResource(tab.titleRes)) },
                        label = { Text(stringResource(tab.titleRes)) },
                    )
                }
            }
        },
    ) { padding ->
        HorizontalPager(state = pagerState, modifier = Modifier.fillMaxSize().padding(padding)) { page ->
            when (tabs[page]) {
                Tab.HOME -> HomeScreen(onOpenScreen)
                Tab.APPS -> AppsScreen(onOpenScreen, onOpenApp)
                Tab.SCHEDULES -> SchedulesScreen(onOpenScreen)
                Tab.ACCOUNT -> AccountScreen(onOpenScreen)
            }
        }
    }
}
