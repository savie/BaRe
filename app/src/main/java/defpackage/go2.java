package defpackage;

import java.time.ZonedDateTime;
import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class go2 implements Consumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ ZonedDateTime b;

    public /* synthetic */ go2(ZonedDateTime zonedDateTime, int i) {
        this.a = i;
        this.b = zonedDateTime;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.a;
        ZonedDateTime zonedDateTime = this.b;
        switch (i) {
            case 0:
                ((mo2) obj).m = zonedDateTime;
                break;
            default:
                ((dr5) obj).n = zonedDateTime;
                break;
        }
    }
}
