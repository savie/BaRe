package defpackage;

import java.util.function.BiConsumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class qn8 implements BiConsumer {
    public final /* synthetic */ StringBuilder a;

    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        String str = (String) obj;
        String str2 = (String) obj2;
        StringBuilder sb = this.a;
        if (sb.length() != 0) {
            sb.append(',');
        }
        sb.append(str);
        sb.append('=');
        sb.append(str2);
    }
}
