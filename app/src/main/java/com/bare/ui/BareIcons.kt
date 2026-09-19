package com.bare.ui

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.StrokeCap
import androidx.compose.ui.graphics.StrokeJoin
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.PathParser
import androidx.compose.ui.unit.dp

private fun outlineIcon(name: String, pathData: String): ImageVector =
    ImageVector.Builder(
        name = name,
        defaultWidth = 24.dp,
        defaultHeight = 24.dp,
        viewportWidth = 24f,
        viewportHeight = 24f,
    ).addPath(
        pathData = PathParser().parsePathString(pathData).toNodes(),
        fill = null,
        stroke = SolidColor(Color.Black),
        strokeLineWidth = 1.8f,
        strokeLineCap = StrokeCap.Round,
        strokeLineJoin = StrokeJoin.Round,
    ).build()

private fun filledIcon(name: String, pathData: String): ImageVector =
    ImageVector.Builder(
        name = name,
        defaultWidth = 24.dp,
        defaultHeight = 24.dp,
        viewportWidth = 24f,
        viewportHeight = 24f,
    ).addPath(
        pathData = PathParser().parsePathString(pathData).toNodes(),
        fill = SolidColor(Color.Black),
    ).build()

object BareIcons {
    val Apps = filledIcon(
        "BareApps",
        "M4 4h4v4H4z M10 4h4v4h-4z M16 4h4v4h-4z " +
            "M4 10h4v4H4z M10 10h4v4h-4z M16 10h4v4h-4z " +
            "M4 16h4v4H4z M10 16h4v4h-4z M16 16h4v4h-4z",
    )

    val Messages = outlineIcon(
        "BareMessages",
        "M4 5.5h16v10H8l-4 3v-13z M8 9h8 M8 12h5",
    )

    val Call = outlineIcon(
        "BareCall",
        "M7.1 4.4l2.2 3.1-1.8 1.7c1.1 2.3 2.9 4.1 5.2 5.2l1.7-1.8 3.1 2.2-.9 3.1c-.2.7-.9 1.1-1.6 1C9.1 17.9 6.1 14.9 5.1 8.9c-.1-.7.3-1.4 1-1.6l1-.3",
    )

    val Folders = outlineIcon(
        "BareFolders",
        "3 6h6l1.6 2H21v10.5H3V6z",
    )

    val Wifi = outlineIcon(
        "BareWifi",
        "M3.5 9.5c4.7-4.2 12.3-4.2 17 0 M6.5 12.5c3-2.7 8-2.7 11 0 M9.7 15.5c1.3-1.2 3.3-1.2 4.6 0 M12 18h.01",
    )

    val Wallpapers = outlineIcon(
        "BareWallpapers",
        "M4 5h16v14H4z M7 15l3.2-3.2 2.5 2.2 2.3-2.4L19 16.5 M8 9h.01",
    )

    val Upload = outlineIcon(
        "BareUpload",
        "M5 17.5h14a3 3 0 0 0 0-6h-.5A6.5 6.5 0 0 0 6 10.5 3.5 3.5 0 0 0 5 17.5z M12 16V8 M9 11l3-3 3 3",
    )

    val Download = outlineIcon(
        "BareDownload",
        "M5 17.5h14a3 3 0 0 0 0-6h-.5A6.5 6.5 0 0 0 6 10.5 3.5 3.5 0 0 0 5 17.5z M12 7v8 M9 12l3 3 3-3",
    )

    val Home = outlineIcon(
        "BareHome",
        "M3.5 10.8 12 3.5l8.5 7.3 M5.5 9.5V20h13V9.5 M9.5 20v-6h5v6",
    )

    val Grid = Apps

    val Schedule = outlineIcon(
        "BareSchedule",
        "M12 3.5a8.5 8.5 0 1 0 0 17a8.5 8.5 0 0 0 0-17z M12 7v5l3.5 2",
    )

    val Account = outlineIcon(
        "BareAccount",
        "M12 3.5a8.5 8.5 0 1 0 0 17a8.5 8.5 0 0 0 0-17z M8.8 16.2c.8-2.2 5.6-2.2 6.4 0 M12 8.1a2.1 2.1 0 1 0 0 4.2a2.1 2.1 0 0 0 0-4.2z",
    )
}
