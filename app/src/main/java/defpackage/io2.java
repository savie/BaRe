package defpackage;

import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class io2 implements Consumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ String b;

    public /* synthetic */ io2(String str, int i) {
        this.a = i;
        this.b = str;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.a;
        String str = this.b;
        switch (i) {
            case 0:
                ((mo2) obj).l = str;
                break;
            case 1:
                ((px4) obj).g = str;
                break;
            case 2:
                ((ay4) obj).f = str;
                break;
            case 3:
                ((dr5) obj).k = str;
                break;
            default:
                xf8.j((xf8) obj, str);
                break;
        }
    }
}
