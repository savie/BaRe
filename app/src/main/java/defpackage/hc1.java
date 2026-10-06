package defpackage;

import android.content.Context;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.cloud.orphans.b;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class hc1 implements mt3 {
    public final /* synthetic */ int a;

    public /* synthetic */ hc1(int i) {
        this.a = i;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) throws InterruptedException {
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                dd1 dd1Var = (dd1) obj;
                dd1Var.getClass();
                return Boolean.valueOf(dd1Var.getReleaseState().compareTo(xi6.TestOnly) <= 0);
            case 1:
                b bVar = (b) obj;
                bVar.getClass();
                List<wa1> list = bVar.i;
                if (bVar.d() || list.isEmpty()) {
                    return bVar;
                }
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                for (wa1 wa1Var : list) {
                    wa1Var.getClass();
                    linkedHashSet.add(wa1Var.d.name() + WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR + wa1Var.b);
                }
                Set set = bVar.j;
                set.getClass();
                LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                for (Object obj2 : set) {
                    if (linkedHashSet.contains(obj2)) {
                        linkedHashSet2.add(obj2);
                    }
                }
                int size = linkedHashSet2.size();
                int size2 = linkedHashSet.size();
                Set set2 = linkedHashSet;
                if (size == size2) {
                    set2 = sv2.a;
                }
                return b.a(bVar, null, null, set2, null, 0, 0, 7679);
            case 2:
                Throwable th = (Throwable) obj;
                th.getClass();
                return th.getCause();
            case 3:
                return String.valueOf(((Integer) obj).intValue() & 255);
            case 4:
                String str = (String) obj;
                str.getClass();
                x95.i.getClass();
                return new ab1(nb5.c(str));
            case 5:
                return Boolean.valueOf(jq5.b(nq5.i, ((Boolean) obj).booleanValue(), 1));
            case 6:
                return Boolean.valueOf(obj == null);
            case 7:
                if (((Boolean) obj).booleanValue()) {
                    SwiftApp.Companion companion = SwiftApp.d;
                    Context contextC = SwiftApp.Companion.c();
                    String string = contextC.getString(R.string.copied_to_clipboard);
                    string.getClass();
                    zn4 zn4Var = zn4.a;
                    dj7.y(contextC, string);
                }
                return be8Var;
            default:
                Thread.sleep(((Long) obj).longValue());
                return be8Var;
        }
    }
}
