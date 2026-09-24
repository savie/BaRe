package defpackage;

import java.util.Map;
import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class o86 implements Consumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ Map b;

    public /* synthetic */ o86(int i, Map map) {
        this.a = i;
        this.b = map;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.a;
        Map map = this.b;
        switch (i) {
            case 0:
                p86.p((p86) obj, map);
                break;
            default:
                z97.a.H(map, (z97) obj);
                break;
        }
    }
}
