package defpackage;

import android.app.ActivityManager;
import android.text.style.BulletSpan;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class qs1 {
    public static /* synthetic */ ActivityManager.TaskDescription a(int i, String str) {
        return new ActivityManager.TaskDescription(str, R.mipmap.ic_launcher, i);
    }

    public static /* synthetic */ BulletSpan b(int i, int i2, int i3) {
        return new BulletSpan(i, i2, i3);
    }
}
