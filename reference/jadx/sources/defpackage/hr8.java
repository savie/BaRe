package defpackage;

import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hr8 extends ve {
    @Override // defpackage.bf
    public final boolean b() {
        if (super.b() && cy0.x("MULTI_PROCESS")) {
            WeakHashMap weakHashMap = er8.a;
            if (jr8.b.b()) {
                return kr8.a.getStatics().isMultiProcessEnabled();
            }
            g84.j("This method is not supported by the current version of the framework and the current WebView APK");
        }
        return false;
    }
}
