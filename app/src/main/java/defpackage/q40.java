package defpackage;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.function.Function;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class q40 implements Function {
    public final /* synthetic */ int a;

    public /* synthetic */ q40(int i) {
        this.a = i;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.a) {
            case 0:
                return ((zd4) obj).b;
            case 1:
                na4 na4Var = v64.c.b;
                return new HashSet();
            case 2:
                return ((yf8) obj).a;
            default:
                return new LinkedList();
        }
    }
}
