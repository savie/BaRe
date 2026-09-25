package com.bare.app

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.Search
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
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
@Composable
fun GlobalHeader(
    showSearchAction: Boolean = false,
    onOpenSearch: (() -> Unit)? = null,
) {
    Box(
        modifier = Modifier
            .fillMaxWidth()
            .height(80.dp),
        contentAlignment = androidx.compose.ui.Alignment.Center,
    ) {
        Column(
            verticalArrangement = Arrangement.Center,
            horizontalAlignment = androidx.compose.ui.Alignment.CenterHorizontally,
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

        if (showSearchAction && onOpenSearch != null) {
            IconButton(
                onClick = onOpenSearch,
                modifier = Modifier.align(androidx.compose.ui.Alignment.CenterEnd),
            ) {
                Icon(Icons.Outlined.Search, stringResource(R.string.search))
            }
        }
    }
}
