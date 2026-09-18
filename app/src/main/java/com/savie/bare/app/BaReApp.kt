package com.savie.bare.app

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
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.res.stringResource
import com.savie.bare.R
import com.savie.bare.feature.account.AccountScreen
import com.savie.bare.feature.apps.AppConfigScreen
import com.savie.bare.feature.apps.AppDetailScreen
import com.savie.bare.feature.apps.AppsScreen
import com.savie.bare.feature.home.HomeScreen
import com.savie.bare.feature.misc.CloudScreen
import com.savie.bare.feature.misc.GenericDomainScreen
import com.savie.bare.feature.misc.MiscScreen
import com.savie.bare.feature.misc.SearchScreen
import com.savie.bare.feature.onboarding.*
import com.savie.bare.feature.schedules.SchedulesScreen
import com.savie.bare.ui.theme.BaReTheme
import kotlinx.coroutines.launch

@OptIn(ExperimentalFoundationApi::class)
@Composable
fun BaReApp() {
    var startScreen by remember { mutableStateOf(StartScreen.WELCOME) }
    var selectedMethod by remember { mutableStateOf<AccessMethod?>(null) }
    var screen by remember { mutableStateOf(Screen.NONE) }
    var selectedApp by remember { mutableStateOf<AppItem?>(null) }
    var loginEmail by remember { mutableStateOf("") }
    var identityType by remember { mutableStateOf<IdentityType?>(null) }
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

    BackHandler(enabled = startScreen != StartScreen.WELCOME || screen != Screen.NONE || searchOpen) { goBack() }

    BaReTheme {
        Surface(Modifier.fillMaxSize()) {
            when (startScreen) {
                StartScreen.WELCOME -> WelcomeScreen { identity ->
                    identityType = identity
                    startScreen = when (identity) {
                        IdentityType.LOCAL -> StartScreen.STORAGE_SETUP
                        IdentityType.ACCOUNT -> StartScreen.LOGIN
                    }
                }
                StartScreen.LOGIN -> LoginScreen(loginEmail, { loginEmail = it }, { startScreen = StartScreen.STORAGE_SETUP }, ::goBack)
                StartScreen.STORAGE_SETUP -> StorageSetupScreen({ startScreen = StartScreen.ACCESS_METHOD }, ::goBack)
                StartScreen.ACCESS_METHOD -> AccessMethodScreen(selectedMethod, { selectedMethod = it }, { if (selectedMethod != null) startScreen = StartScreen.APP }, ::goBack)
                StartScreen.APP -> MainShell(
                    pagerState, searchOpen, searchQuery, { searchQuery = it },
                    { searchOpen = true }, { searchOpen = false },
                    { index -> scope.launch { pagerState.animateScrollToPage(index) } },
                    { screen = it }, { selectedApp = it; screen = Screen.APP_DETAIL },
                    screen, selectedApp, ::goBack
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
