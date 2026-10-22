package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.os.Build;
import android.os.PersistableBundle;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xe7 {
    public Context a;
    public String b;
    public Intent[] c;
    public String d;
    public IconCompat e;
    public PersistableBundle f;

    public final ShortcutInfo a() {
        ShortcutInfo.Builder intents = new ShortcutInfo.Builder(this.a, this.b).setShortLabel(this.d).setIntents(this.c);
        IconCompat iconCompat = this.e;
        if (iconCompat != null) {
            intents.setIcon(iconCompat.d(this.a));
        }
        if (!TextUtils.isEmpty(null)) {
            intents.setLongLabel(null);
        }
        if (!TextUtils.isEmpty(null)) {
            intents.setDisabledMessage(null);
        }
        intents.setRank(0);
        PersistableBundle persistableBundle = this.f;
        if (persistableBundle != null) {
            intents.setExtras(persistableBundle);
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            intents.setLongLived(false);
        } else {
            if (this.f == null) {
                this.f = new PersistableBundle();
            }
            this.f.putBoolean("extraLongLived", false);
            intents.setExtras(this.f);
        }
        if (i >= 33) {
            i6.j(intents);
        }
        return intents.build();
    }
}
