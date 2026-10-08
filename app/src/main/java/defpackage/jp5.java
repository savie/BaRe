package defpackage;

import java.util.Collection;
import java.util.EnumSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class jp5 extends cy0 {
    public static final EnumSet l = EnumSet.of(lp5.NTLMSSP_NEGOTIATE_NTLM, lp5.NTLMSSP_NEGOTIATE_UNICODE);
    public Set j;
    public final bw8 k;

    public jp5(Set set, bw8 bw8Var) {
        EnumSet enumSetCopyOf = EnumSet.copyOf((Collection) set);
        this.j = enumSetCopyOf;
        enumSetCopyOf.addAll(l);
        this.k = bw8Var;
    }
}
