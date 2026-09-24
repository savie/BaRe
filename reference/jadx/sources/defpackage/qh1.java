package defpackage;

import java.util.List;
import java.util.Set;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;
import org.swiftapps.swiftbackup.cloud.orphans.b;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class qh1 implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ String b;

    public /* synthetic */ qh1(String str, int i) {
        this.a = i;
        this.b = str;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i = this.a;
        String str = this.b;
        switch (i) {
            case 0:
                b bVar = (b) obj;
                bVar.getClass();
                Set set = bVar.j;
                if (bVar.d()) {
                    return bVar;
                }
                List<wa1> list = bVar.i;
                if (list != null && list.isEmpty()) {
                    return bVar;
                }
                for (wa1 wa1Var : list) {
                    wa1Var.getClass();
                    if ((wa1Var.d.name() + WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR + wa1Var.b).equals(str)) {
                        return b.a(bVar, null, null, set.contains(str) ? sz8.K(set, str) : sz8.S(set, str), null, 0, 0, 7679);
                    }
                }
                return bVar;
            default:
                String str2 = (String) obj;
                str2.getClass();
                return Boolean.valueOf(str2.equals(str));
        }
    }
}
