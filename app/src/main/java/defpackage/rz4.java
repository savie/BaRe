package defpackage;

import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class rz4 extends cu3 implements rt3 {
    @Override // defpackage.rt3
    public final Object a(Object obj, Object obj2, Object obj3) {
        String str = (String) obj;
        int iIntValue = ((Number) obj2).intValue();
        int iIntValue2 = ((Number) obj3).intValue();
        str.getClass();
        return Boolean.valueOf(((SwiftApp) this.receiver).isLocalNetworkTcpBlockedByPermission(str, iIntValue, iIntValue2));
    }
}
