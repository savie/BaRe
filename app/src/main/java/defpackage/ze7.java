package defpackage;

import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.graphics.drawable.Icon;
import com.bareapps.barebackup.BareApp;
import com.bareapps.barebackup.shortcuts.ShortcutsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ze7 {
    public static ShortcutInfo a(int i, String str, String str2) {
        int i2 = ShortcutsActivity.P;
        Intent intentA = ye7.a(str);
        BareApp.Companion companion = BareApp.d;
        ShortcutInfo shortcutInfoBuild = new ShortcutInfo.Builder(BareApp.Companion.c(), str).setShortLabel(str2).setIcon(Icon.createWithResource(BareApp.Companion.c(), i)).setIntent(intentA).build();
        shortcutInfoBuild.getClass();
        return shortcutInfoBuild;
    }
}
