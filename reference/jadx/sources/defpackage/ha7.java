package defpackage;

import android.content.SharedPreferences;
import android.os.Looper;
import java.util.Locale;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.intro.d;
import org.swiftapps.swiftbackup.model.firebase.AppSettings;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.swiftapps.swiftbackup.settings.b;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ha7 {
    public static final ha7 a = new ha7();

    public static void a(AppSettings appSettings) {
        appSettings.getClass();
        e(new yi5(appSettings, 6));
        e(new qb5(appSettings, 8));
        try {
            Boolean boolIsShowSystemApps = appSettings.isShowSystemApps();
            boolean zBooleanValue = boolIsShowSystemApps != null ? boolIsShowSystemApps.booleanValue() : false;
            SharedPreferences.Editor editor = cz4.k;
            if (editor == null) {
                pe4.F("editor");
                throw null;
            }
            editor.putBoolean("show_system_apps", zBooleanValue).apply();
            try {
                ho6.O(xy.Right, appSettings.getAppListRightSwipeActions());
                ho6.O(xy.Left, appSettings.getAppListLeftSwipeActions());
            } catch (Exception e) {
                vr6 vr6Var = vr6.INSTANCE;
                String message = e.getMessage();
                vr6.e$default(vr6Var, "SettingsBackupHelper", message == null ? "" : message, null, 4, null);
            }
            try {
                MultipleBackupStrategy appsMultipleBackupStrategy = appSettings.getAppsMultipleBackupStrategy();
                if (appsMultipleBackupStrategy != null) {
                    MultipleBackupStrategy.Companion.getClass();
                    gv7 gv7Var = w14.a;
                    w14.h(appsMultipleBackupStrategy, "apps_multiple_backups_strategy");
                } else if (pe4.d(appSettings.isAppBackupArchivingEnabled(), Boolean.TRUE)) {
                    MultipleBackupStrategy.Companion.getClass();
                    MultipleBackupStrategy multipleBackupStrategyB = b.b();
                    multipleBackupStrategyB.getClass();
                    w14.h(multipleBackupStrategyB, "apps_multiple_backups_strategy");
                }
            } catch (Exception e2) {
                vr6 vr6Var2 = vr6.INSTANCE;
                String message2 = e2.getMessage();
                vr6.e$default(vr6Var2, "SettingsBackupHelper", message2 == null ? "" : message2, null, 4, null);
            }
            try {
                wu wuVar = yu.Companion;
                Integer restorePermissionsMode = appSettings.getRestorePermissionsMode();
                wuVar.getClass();
                yu yuVarB = wu.b(restorePermissionsMode);
                yuVarB.getClass();
                int id = yuVarB.getId();
                SharedPreferences.Editor editor2 = cz4.k;
                if (editor2 == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor2.putInt("restore_runtime_permissions", id).apply();
                try {
                    Boolean restoreSpecialAppPerms = appSettings.getRestoreSpecialAppPerms();
                    boolean zBooleanValue2 = restoreSpecialAppPerms != null ? restoreSpecialAppPerms.booleanValue() : true;
                    SharedPreferences.Editor editor3 = cz4.k;
                    if (editor3 == null) {
                        pe4.F("editor");
                        throw null;
                    }
                    editor3.putBoolean("restore_special_permissions", zBooleanValue2).apply();
                    int i = 7;
                    e(new n55(appSettings, i));
                    try {
                        Boolean boolIsAppCacheBackupReq = appSettings.isAppCacheBackupReq();
                        boolean zBooleanValue3 = boolIsAppCacheBackupReq != null ? boolIsAppCacheBackupReq.booleanValue() : false;
                        SharedPreferences.Editor editor4 = cz4.k;
                        if (editor4 == null) {
                            pe4.F("editor");
                            throw null;
                        }
                        editor4.putBoolean("backup_app_cache", zBooleanValue3).apply();
                        try {
                            Boolean boolIsRestoreSsaids = appSettings.isRestoreSsaids();
                            boolean zBooleanValue4 = boolIsRestoreSsaids != null ? boolIsRestoreSsaids.booleanValue() : false;
                            SharedPreferences.Editor editor5 = cz4.k;
                            if (editor5 == null) {
                                pe4.F("editor");
                                throw null;
                            }
                            editor5.putBoolean("restore_ssaids", zBooleanValue4).apply();
                            try {
                                Boolean boolIsInPlaceApkDowngradeEnabled = appSettings.isInPlaceApkDowngradeEnabled();
                                boolean zBooleanValue5 = boolIsInPlaceApkDowngradeEnabled != null ? boolIsInPlaceApkDowngradeEnabled.booleanValue() : false;
                                SharedPreferences.Editor editor6 = cz4.k;
                                if (editor6 == null) {
                                    pe4.F("editor");
                                    throw null;
                                }
                                editor6.putBoolean("in_place_apk_downgrades", zBooleanValue5).apply();
                                e(new to5(appSettings, i));
                                e(new hs4(appSettings, 10));
                                e(new us5(appSettings, 5));
                                try {
                                    Boolean boolIsPlayNotificationSounds = appSettings.isPlayNotificationSounds();
                                    boolean zBooleanValue6 = boolIsPlayNotificationSounds != null ? boolIsPlayNotificationSounds.booleanValue() : true;
                                    SharedPreferences.Editor editor7 = cz4.k;
                                    if (editor7 == null) {
                                        pe4.F("editor");
                                        throw null;
                                    }
                                    editor7.putBoolean("play_notification_sounds", zBooleanValue6).apply();
                                    try {
                                        is4 is4VarG = xx3.g(appSettings.getLanguage());
                                        Locale localeB = j05.b();
                                        String language = localeB.getLanguage();
                                        language.getClass();
                                        String country = localeB.getCountry();
                                        country.getClass();
                                        if (!is4VarG.equals(xx3.i(language, country))) {
                                            j05.a(is4VarG.a(), false);
                                        }
                                    } catch (Exception e3) {
                                        vr6 vr6Var3 = vr6.INSTANCE;
                                        String message3 = e3.getMessage();
                                        vr6.e$default(vr6Var3, "SettingsBackupHelper", message3 == null ? "" : message3, null, 4, null);
                                    }
                                    try {
                                        tb1 tb1Var = tb1.a;
                                        String cloudConnection = appSettings.getCloudConnection();
                                        if (cloudConnection == null || cloudConnection.length() == 0) {
                                            cloudConnection = null;
                                        }
                                        SharedPreferences.Editor editor8 = cz4.k;
                                        if (editor8 == null) {
                                            pe4.F("editor");
                                            throw null;
                                        }
                                        editor8.putString("setup_cloud_first_startup", cloudConnection).apply();
                                        e(new no5(appSettings, 4));
                                    } catch (Exception e4) {
                                        vr6 vr6Var4 = vr6.INSTANCE;
                                        String message4 = e4.getMessage();
                                        vr6.e$default(vr6Var4, "SettingsBackupHelper", message4 == null ? "" : message4, null, 4, null);
                                    }
                                } catch (Exception e5) {
                                    vr6 vr6Var5 = vr6.INSTANCE;
                                    String message5 = e5.getMessage();
                                    vr6.e$default(vr6Var5, "SettingsBackupHelper", message5 == null ? "" : message5, null, 4, null);
                                }
                            } catch (Exception e6) {
                                vr6 vr6Var6 = vr6.INSTANCE;
                                String message6 = e6.getMessage();
                                vr6.e$default(vr6Var6, "SettingsBackupHelper", message6 == null ? "" : message6, null, 4, null);
                            }
                        } catch (Exception e7) {
                            vr6 vr6Var7 = vr6.INSTANCE;
                            String message7 = e7.getMessage();
                            vr6.e$default(vr6Var7, "SettingsBackupHelper", message7 == null ? "" : message7, null, 4, null);
                        }
                    } catch (Exception e8) {
                        vr6 vr6Var8 = vr6.INSTANCE;
                        String message8 = e8.getMessage();
                        vr6.e$default(vr6Var8, "SettingsBackupHelper", message8 == null ? "" : message8, null, 4, null);
                    }
                } catch (Exception e9) {
                    vr6 vr6Var9 = vr6.INSTANCE;
                    String message9 = e9.getMessage();
                    vr6.e$default(vr6Var9, "SettingsBackupHelper", message9 == null ? "" : message9, null, 4, null);
                }
            } catch (Exception e10) {
                vr6 vr6Var10 = vr6.INSTANCE;
                String message10 = e10.getMessage();
                vr6.e$default(vr6Var10, "SettingsBackupHelper", message10 == null ? "" : message10, null, 4, null);
            }
        } catch (Exception e11) {
            vr6 vr6Var11 = vr6.INSTANCE;
            String message11 = e11.getMessage();
            vr6.e$default(vr6Var11, "SettingsBackupHelper", message11 == null ? "" : message11, null, 4, null);
        }
    }

    public static boolean b(d dVar) {
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return false;
        }
        d45.b.getClass();
        if (d45.a() != null) {
            Boolean boolValueOf = null;
            try {
                d45.b.getClass();
                MFirebaseUser mFirebaseUserA = d45.a();
                if (mFirebaseUserA != null) {
                    boolValueOf = Boolean.valueOf(mFirebaseUserA.isAnonymous());
                }
            } catch (Exception unused) {
            }
            if (!pe4.d(boolValueOf, Boolean.TRUE)) {
                if (dVar != null) {
                    dVar.h(R.string.checking_cloud_for_saved_settings);
                }
                l73 l73VarA = cf3.a(re3.k().d("appSettings"), true);
                if (!(l73VarA instanceof xe3)) {
                    if (!(l73VarA instanceof we3)) {
                        q.j();
                        return false;
                    }
                    vr6 vr6Var = vr6.INSTANCE;
                    String str = ((we3) l73VarA).n.b;
                    str.getClass();
                    vr6.e$default(vr6Var, "SettingsBackupHelper", str, null, 4, null);
                    return false;
                }
                AppSettings appSettings = (AppSettings) ((xe3) l73VarA).n.c(AppSettings.class);
                if (appSettings != null) {
                    if (dVar != null) {
                        dVar.h(R.string.restoring_settings_from_cloud);
                    }
                    a(appSettings);
                    vr6.i$default(vr6.INSTANCE, "SettingsBackupHelper", "Restoring settings from cloud complete", null, 4, null);
                    return true;
                }
            }
        }
        return true;
    }

    public static void e(bt3 bt3Var) {
        try {
            bt3Var.invoke();
        } catch (Exception e) {
            vr6 vr6Var = vr6.INSTANCE;
            String message = e.getMessage();
            if (message == null) {
                message = "";
            }
            vr6.e$default(vr6Var, "SettingsBackupHelper", message, null, 4, null);
        }
    }

    public final synchronized void c(AppSettings appSettings) {
        appSettings.getClass();
        d45.b.getClass();
        if (d45.a() != null) {
            Boolean boolValueOf = null;
            try {
                d45.b.getClass();
                MFirebaseUser mFirebaseUserA = d45.a();
                if (mFirebaseUserA != null) {
                    boolValueOf = Boolean.valueOf(mFirebaseUserA.isAnonymous());
                }
            } catch (Exception unused) {
            }
            if (!pe4.d(boolValueOf, Boolean.TRUE)) {
                re3.k().d("appSettings").i(appSettings);
            }
        }
    }
}
