package defpackage;

import android.content.Intent;
import android.net.Uri;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.shortcuts.ShortcutsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class ye7 {
    public static Intent a(String str) {
        Uri uri = Uri.EMPTY;
        SwiftApp.Companion companion = SwiftApp.d;
        Intent flags = new Intent("android.intent.action.MAIN", uri, SwiftApp.Companion.c(), ShortcutsActivity.class).putExtra("extra_id", str).setFlags(67108864);
        flags.getClass();
        return flags;
    }
}
