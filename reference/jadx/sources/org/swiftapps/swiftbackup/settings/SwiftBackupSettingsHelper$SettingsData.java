package org.swiftapps.swiftbackup.settings;

import android.os.Looper;
import defpackage.d6;
import defpackage.el1;
import defpackage.fz5;
import defpackage.gs0;
import defpackage.ha7;
import defpackage.pe4;
import defpackage.v53;
import defpackage.vr6;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.appslist.data.FavoriteApp;
import org.swiftapps.swiftbackup.appslist.data.FavoriteAppsRepo$FavoritesWrapper;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistApp;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistData;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.model.firebase.AppSettings;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class SwiftBackupSettingsHelper$SettingsData {
    private final BlacklistData blacklist;
    private final FavoriteAppsRepo$FavoritesWrapper favorites;
    private final AppSettings settings;

    public /* synthetic */ SwiftBackupSettingsHelper$SettingsData(AppSettings appSettings, FavoriteAppsRepo$FavoritesWrapper favoriteAppsRepo$FavoritesWrapper, BlacklistData blacklistData, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? AppSettings.Companion.withSavedSettings() : appSettings, (i & 2) != 0 ? new FavoriteAppsRepo$FavoritesWrapper(el1.v1(v53.a.b().values())) : favoriteAppsRepo$FavoritesWrapper, (i & 4) != 0 ? gs0.a.a() : blacklistData);
    }

    public static /* synthetic */ SwiftBackupSettingsHelper$SettingsData copy$default(SwiftBackupSettingsHelper$SettingsData swiftBackupSettingsHelper$SettingsData, AppSettings appSettings, FavoriteAppsRepo$FavoritesWrapper favoriteAppsRepo$FavoritesWrapper, BlacklistData blacklistData, int i, Object obj) {
        if ((i & 1) != 0) {
            appSettings = swiftBackupSettingsHelper$SettingsData.settings;
        }
        if ((i & 2) != 0) {
            favoriteAppsRepo$FavoritesWrapper = swiftBackupSettingsHelper$SettingsData.favorites;
        }
        if ((i & 4) != 0) {
            blacklistData = swiftBackupSettingsHelper$SettingsData.blacklist;
        }
        return swiftBackupSettingsHelper$SettingsData.copy(appSettings, favoriteAppsRepo$FavoritesWrapper, blacklistData);
    }

    public final AppSettings component1() {
        return this.settings;
    }

    public final FavoriteAppsRepo$FavoritesWrapper component2() {
        return this.favorites;
    }

    public final BlacklistData component3() {
        return this.blacklist;
    }

    public final SwiftBackupSettingsHelper$SettingsData copy(AppSettings appSettings, FavoriteAppsRepo$FavoritesWrapper favoriteAppsRepo$FavoritesWrapper, BlacklistData blacklistData) {
        return new SwiftBackupSettingsHelper$SettingsData(appSettings, favoriteAppsRepo$FavoritesWrapper, blacklistData);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SwiftBackupSettingsHelper$SettingsData)) {
            return false;
        }
        SwiftBackupSettingsHelper$SettingsData swiftBackupSettingsHelper$SettingsData = (SwiftBackupSettingsHelper$SettingsData) obj;
        return pe4.d(this.settings, swiftBackupSettingsHelper$SettingsData.settings) && pe4.d(this.favorites, swiftBackupSettingsHelper$SettingsData.favorites) && pe4.d(this.blacklist, swiftBackupSettingsHelper$SettingsData.blacklist);
    }

    public final BlacklistData getBlacklist() {
        return this.blacklist;
    }

    public final FavoriteAppsRepo$FavoritesWrapper getFavorites() {
        return this.favorites;
    }

    public final AppSettings getSettings() {
        return this.settings;
    }

    public int hashCode() {
        AppSettings appSettings = this.settings;
        int iHashCode = (appSettings == null ? 0 : appSettings.hashCode()) * 31;
        FavoriteAppsRepo$FavoritesWrapper favoriteAppsRepo$FavoritesWrapper = this.favorites;
        int iHashCode2 = (iHashCode + (favoriteAppsRepo$FavoritesWrapper == null ? 0 : favoriteAppsRepo$FavoritesWrapper.hashCode())) * 31;
        BlacklistData blacklistData = this.blacklist;
        return iHashCode2 + (blacklistData != null ? blacklistData.hashCode() : 0);
    }

    public final void restore() {
        boolean z;
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return;
        }
        vr6 vr6Var = vr6.INSTANCE;
        vr6.i$default(vr6Var, "SwiftBackupSettingsHelper", "Starting restore", null, 4, null);
        AppSettings appSettings = this.settings;
        boolean z2 = true;
        if (appSettings != null) {
            ha7.a(appSettings);
            vr6.i$default(vr6Var, "SwiftBackupSettingsHelper", "Restored Settings", null, 4, null);
            z = true;
        } else {
            vr6.w$default(vr6Var, "SwiftBackupSettingsHelper", "No Settings", null, 4, null);
            z = false;
        }
        FavoriteAppsRepo$FavoritesWrapper favoriteAppsRepo$FavoritesWrapper = this.favorites;
        List<FavoriteApp> items = favoriteAppsRepo$FavoritesWrapper != null ? favoriteAppsRepo$FavoritesWrapper.getItems() : null;
        if (items == null || items.isEmpty()) {
            vr6.w$default(vr6Var, "SwiftBackupSettingsHelper", "No Favorites", null, 4, null);
        } else {
            v53.a.e(items);
            vr6.i$default(vr6Var, "SwiftBackupSettingsHelper", fz5.j(items.size(), "Restored Favorite apps: "), null, 4, null);
            z = true;
        }
        BlacklistData blacklistData = this.blacklist;
        if (blacklistData != null) {
            gs0.a.d(blacklistData, false);
            List<BlacklistApp> items2 = this.blacklist.getItems();
            vr6.i$default(vr6Var, "SwiftBackupSettingsHelper", "Restored Blacklist data: " + (items2 != null ? Integer.valueOf(items2.size()) : "---"), null, 4, null);
        } else {
            vr6.w$default(vr6Var, "SwiftBackupSettingsHelper", "No Blacklist data", null, 4, null);
            z2 = z;
        }
        if (z2) {
            try {
                Thread.sleep(2000L);
            } catch (Exception unused) {
            }
            Const.E("Restored settings");
        }
    }

    public String toString() {
        return "SettingsData(settings=" + this.settings + ", favorites=" + this.favorites + ", blacklist=" + this.blacklist + ")";
    }

    public SwiftBackupSettingsHelper$SettingsData(AppSettings appSettings, FavoriteAppsRepo$FavoritesWrapper favoriteAppsRepo$FavoritesWrapper, BlacklistData blacklistData) {
        this.settings = appSettings;
        this.favorites = favoriteAppsRepo$FavoritesWrapper;
        this.blacklist = blacklistData;
    }

    public SwiftBackupSettingsHelper$SettingsData() {
        this(null, null, null, 7, null);
    }
}
