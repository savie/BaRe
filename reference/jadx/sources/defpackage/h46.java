package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.preference.PreferenceScreen;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class h46 {
    public final Context a;
    public long b = 0;
    public SharedPreferences c = null;
    public SharedPreferences.Editor d;
    public boolean e;
    public final String f;
    public PreferenceScreen g;
    public c46 h;
    public c46 i;
    public c46 j;

    public h46(Context context) {
        this.a = context;
        this.f = context.getPackageName() + "_preferences";
    }

    public final SharedPreferences.Editor a() {
        if (!this.e) {
            return b().edit();
        }
        if (this.d == null) {
            this.d = b().edit();
        }
        return this.d;
    }

    public final SharedPreferences b() {
        if (this.c == null) {
            this.c = this.a.getSharedPreferences(this.f, 0);
        }
        return this.c;
    }
}
