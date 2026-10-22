package defpackage;

import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c10 implements Consumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ c10(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                d10.p((d10) obj, (Long) obj2);
                break;
            case 1:
                uw3.k((uw3) obj, (v64.d) obj2);
                break;
            case 2:
                bc6.C((bc6) obj, (byte[]) obj2);
                break;
            default:
                p97.i((p97) obj, (qk7) obj2);
                break;
        }
    }
}
