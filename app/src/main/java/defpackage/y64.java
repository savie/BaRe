package defpackage;

import java.util.ArrayList;
import java.util.Map;
import java.util.function.Function;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class y64 implements Function {
    public final /* synthetic */ int a;

    public /* synthetic */ y64(int i) {
        this.a = i;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.a) {
            case 0:
                return new ArrayList();
            default:
                return yr5.l((Map.Entry) obj);
        }
    }
}
