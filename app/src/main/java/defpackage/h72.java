package defpackage;

import android.app.ActivityOptions;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class h72 {
    public final Intent a;
    public final lk b;
    public ActivityOptions c;
    public Bundle d;
    public final boolean e;

    public h72(ka kaVar) {
        Intent intent = new Intent("android.intent.action.VIEW");
        this.a = intent;
        this.b = new lk();
        this.e = true;
        if (kaVar != null) {
            intent.setPackage(((ComponentName) kaVar.c).getPackageName());
            d72 d72Var = (d72) kaVar.b;
            Bundle bundle = new Bundle();
            bundle.putBinder("android.support.customtabs.extra.SESSION", d72Var);
            intent.putExtras(bundle);
        }
    }

    public final ix0 a() {
        Intent intent = this.a;
        if (!intent.hasExtra("android.support.customtabs.extra.SESSION")) {
            Bundle bundle = new Bundle();
            bundle.putBinder("android.support.customtabs.extra.SESSION", null);
            intent.putExtras(bundle);
        }
        intent.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", this.e);
        this.b.getClass();
        intent.putExtras(new Bundle());
        Bundle bundle2 = this.d;
        if (bundle2 != null) {
            intent.putExtras(bundle2);
        }
        intent.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", 0);
        String strA = f72.a();
        if (!TextUtils.isEmpty(strA)) {
            Bundle bundleExtra = intent.hasExtra("com.android.browser.headers") ? intent.getBundleExtra("com.android.browser.headers") : new Bundle();
            if (!bundleExtra.containsKey("Accept-Language")) {
                bundleExtra.putString("Accept-Language", strA);
                intent.putExtra("com.android.browser.headers", bundleExtra);
            }
        }
        if (Build.VERSION.SDK_INT >= 34) {
            if (this.c == null) {
                this.c = e72.a();
            }
            g72.a(this.c, false);
        }
        ActivityOptions activityOptions = this.c;
        return new ix0(1, intent, activityOptions != null ? activityOptions.toBundle() : null);
    }

    public h72() {
        this.a = new Intent("android.intent.action.VIEW");
        this.b = new lk();
        this.e = true;
    }
}
