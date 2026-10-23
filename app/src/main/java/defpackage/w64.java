package defpackage;

import android.content.pm.ResolveInfo;
import java.util.function.Predicate;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class w64 implements Predicate {
    public final /* synthetic */ int a;

    public /* synthetic */ w64(int i) {
        this.a = i;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.a) {
            case 0:
                na4 na4Var = v64.c.b;
                return !((String) obj).isEmpty();
            default:
                return ((ResolveInfo) obj).isCrossProfileIntentForwarderActivity();
        }
    }
}
