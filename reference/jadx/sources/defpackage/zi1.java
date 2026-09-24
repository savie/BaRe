package defpackage;

import android.content.res.Resources;
import java.security.SecureRandom;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class zi1 implements mt3 {
    public final /* synthetic */ int a;

    public /* synthetic */ zi1(int i) {
        this.a = i;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                String str = (String) obj;
                str.getClass();
                return Boolean.valueOf(uq7.V(str, "SSH-", false));
            case 1:
                int iIntValue = ((Integer) obj).intValue();
                z4 z4Var = ve6.a;
                return Integer.valueOf(ve6.a.a().nextInt(iIntValue));
            case 2:
                byte[] bArr = new byte[((Integer) obj).intValue()];
                new SecureRandom().nextBytes(bArr);
                return bArr;
            case 3:
                int i2 = ln3.b0;
                return be8Var;
            case 4:
                String str2 = (String) obj;
                str2.getClass();
                return Boolean.valueOf(str2.length() > 0);
            case 5:
                ah8.a.updateInDatabase$default(ah8.Companion, (ah8) obj, null, 2, null);
                return be8Var;
            case 6:
                ((vg) obj).getClass();
                return be8Var;
            case 7:
                return nv6.deleteAll$lambda$0("DELETE FROM smessage", (fw6) obj);
            case 8:
                jv6 jv6Var = (jv6) obj;
                jv6Var.getClass();
                return jv6.toString$default(jv6Var, false, false, true, 3, null);
            default:
                ((Resources) obj).getClass();
                return Boolean.FALSE;
        }
    }
}
