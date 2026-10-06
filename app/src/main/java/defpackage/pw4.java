package defpackage;

import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class pw4 implements Consumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ String b;

    public /* synthetic */ pw4(String str, int i) {
        this.a = i;
        this.b = str;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.a;
        String str = this.b;
        switch (i) {
            case 0:
                sw4.f((sw4) obj, str);
                break;
            case 1:
                ((px4) obj).j = str;
                break;
            case 2:
                ((dr5) obj).l = str;
                break;
            default:
                p86.m((p86) obj, str);
                break;
        }
    }
}
