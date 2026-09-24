package defpackage;

import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class qw4 implements Consumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ String b;

    public /* synthetic */ qw4(String str, int i) {
        this.a = i;
        this.b = str;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.a;
        String str = this.b;
        switch (i) {
            case 0:
                sw4.g((sw4) obj, str);
                break;
            case 1:
                px4.j((px4) obj, str);
                break;
            case 2:
                ((wx4) obj).h = str;
                break;
            case 3:
                ay4.n((ay4) obj, str);
                break;
            case 4:
                ((vr5) obj).g = str;
                break;
            default:
                wf8.o((wf8) obj, str);
                break;
        }
    }
}
