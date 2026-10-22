package defpackage;

import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class z00 implements Consumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ String b;

    public /* synthetic */ z00(String str, int i) {
        this.a = i;
        this.b = str;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.a;
        String str = this.b;
        switch (i) {
            case 0:
                d10.j((d10) obj, str);
                break;
            case 1:
                px4.m((px4) obj, str);
                break;
            case 2:
                ((wx4) obj).m = str;
                break;
            case 3:
                ((yq5) obj).f = str;
                break;
            default:
                p86.k((p86) obj, str);
                break;
        }
    }
}
