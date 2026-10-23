package defpackage;

import android.util.Log;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class n63 implements rt3 {
    public final /* synthetic */ int a;

    public /* synthetic */ n63(int i) {
        this.a = i;
    }

    @Override // defpackage.rt3
    public final Object a(Object obj, Object obj2, Object obj3) {
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                String str = (String) obj;
                String str2 = (String) obj2;
                Exception exc = (Exception) obj3;
                str.getClass();
                str2.getClass();
                if (exc == null) {
                    Log.e(str, str2);
                } else {
                    Log.e(str, str2, exc);
                }
                break;
            default:
                String str3 = (String) obj;
                String str4 = (String) obj2;
                Exception exc2 = (Exception) obj3;
                SwiftApp.Companion companion = SwiftApp.d;
                str3.getClass();
                str4.getClass();
                vr6 vr6Var = vr6.INSTANCE;
                if (exc2 == null) {
                    vr6.e$default(vr6Var, str3, str4, null, 4, null);
                } else {
                    vr6.e$default(vr6Var, str3, str4, exc2, null, 8, null);
                }
                break;
        }
        return be8Var;
    }
}
