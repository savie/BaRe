package defpackage;

import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class br5 implements Consumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ Long b;

    public /* synthetic */ br5(Long l, int i) {
        this.a = i;
        this.b = l;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.a;
        Long l = this.b;
        switch (i) {
            case 0:
                ((dr5) obj).j = l;
                break;
            default:
                ((bc6) obj).q = l;
                break;
        }
    }
}
