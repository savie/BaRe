package defpackage;

import android.text.TextUtils;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hi8 {
    public static final Pattern b = Pattern.compile("\\AA[\\w-]{38}\\z");
    public static hi8 c;
    public final ge a;

    public hi8(ge geVar) {
        this.a = geVar;
    }

    public final boolean a(ee0 ee0Var) {
        if (TextUtils.isEmpty(ee0Var.c)) {
            return true;
        }
        long j = ee0Var.f + ee0Var.e;
        this.a.getClass();
        return j < (System.currentTimeMillis() / 1000) + 3600;
    }
}
