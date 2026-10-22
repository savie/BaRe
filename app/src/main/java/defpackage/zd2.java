package defpackage;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zd2 extends ae2 {
    public final Set f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zd2(v77 v77Var, hd hdVar) {
        super(v77Var, null);
        String[] strArr = null;
        Class cls = hdVar.N;
        RuntimeException runtimeException = vg4.e;
        if (runtimeException != null) {
            throw runtimeException;
        }
        vg4 vg4Var = vg4.d;
        Object[] objArrA = vg4Var.a(cls);
        if (objArrA != null) {
            String[] strArr2 = new String[objArrA.length];
            for (int i = 0; i < objArrA.length; i++) {
                try {
                    strArr2[i] = (String) vg4Var.b.invoke(objArrA[i], null);
                } catch (Exception e) {
                    throw new IllegalArgumentException(String.format("Failed to access name of field #%d (of %d) of Record type %s", Integer.valueOf(i), Integer.valueOf(objArrA.length), u81.t(cls)), e);
                }
            }
            strArr = strArr2;
        }
        this.f = strArr == null ? Collections.EMPTY_SET : new HashSet(Arrays.asList(strArr));
    }

    @Override // defpackage.ae2
    public final String c(pd pdVar, String str) {
        return this.f.contains(str) ? str : super.c(pdVar, str);
    }
}
