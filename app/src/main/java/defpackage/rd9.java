package defpackage;

import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rd9 extends je9 {
    @Override // defpackage.je9
    public final /* synthetic */ Object a(String str) {
        if (hb9.b.matcher(str).matches()) {
            return Boolean.TRUE;
        }
        if (hb9.c.matcher(str).matches()) {
            return Boolean.FALSE;
        }
        Log.e("PhenotypeFlag", "Invalid boolean value for " + this.b + ": " + str);
        return null;
    }
}
