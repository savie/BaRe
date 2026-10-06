package defpackage;

import java.io.EOFException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kl7 extends qi4 {
    @Override // defpackage.qi4
    public final Object a(bn4 bn4Var) throws EOFException, tj4 {
        String strS = bn4Var.S();
        if (strS.length() <= 1) {
            return Character.valueOf(strS.charAt(0));
        }
        throw new lj4(dj7.l("Expected a char but was ", u48.j('\"', "\"", strS), " at path ", bn4Var.r()));
    }

    @Override // defpackage.qi4
    public final void e(dn4 dn4Var, Object obj) {
        dn4Var.z(((Character) obj).toString());
    }

    public final String toString() {
        return "JsonAdapter(Character)";
    }
}
