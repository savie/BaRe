package defpackage;

import android.content.SharedPreferences;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface od3 {
    nd3 a();

    default void b(nd3 nd3Var) {
        nd3Var.getClass();
        String strD = d();
        String string = nd3Var.toString();
        SharedPreferences.Editor editor = cz4.k;
        if (editor != null) {
            editor.putString(strD, string).apply();
        } else {
            pe4.F("editor");
            throw null;
        }
    }

    nd3 c();

    String d();

    default void reset() {
        b(c());
    }
}
