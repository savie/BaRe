package com.bare.app

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.Search
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.TopAppBar
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.bare.R

/**
 * Shared global identity header for every BaRe page.
 *
 * Page-specific navigation, context, search, filters, and actions belong in
 * the page's sub-header rather than changing this global identity.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun GlobalHeader(
    showSearchAction: Boolean = false,
    onOpenSearch: (() -> Unit)? = null,
) {
    TopAppBar(
        modifier = Modifier.height(96.dp),
        title = {
            Column(
                modifier = Modifier.fillMaxWidth(),
                verticalArrangement = Arrangement.Center,
                horizontalAlignment = androidx.compose.ui.Alignment.Start,
            ) {
                androidx.compose.material3.Text(
                    text = stringResource(R.string.app_name),
                    style = MaterialTheme.typography.titleLarge,
                    fontWeight = FontWeight.Bold,
                    letterSpacing = 5.sp,
                    color = MaterialTheme.colorScheme.onSurface,
                )
                androidx.compose.material3.Text(
                    text = stringResource(R.string.brand_tagline),
                    style = MaterialTheme.typography.labelSmall,
                    letterSpacing = 3.5.sp,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
            }
        },
        actions = {
            if (showSearchAction && onOpenSearch != null) {
                IconButton(onClick = onOpenSearch) {
                    Icon(Icons.Outlined.Search, stringResource(R.string.search))
                }
            }
        },
    )
}
