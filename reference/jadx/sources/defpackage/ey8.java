package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ey8 extends IOException {
    public final int a;

    /* JADX WARN: Code duplicated, block: B:28:0x0066  */
    /* JADX WARN: Illegal instructions before constructor call */
    public ey8(int i, String str, String str2, String str3) {
        String strO;
        String strO2;
        String strY0;
        str.getClass();
        str3.getClass();
        if (nq7.j0(str3)) {
            strY0 = "";
        } else {
            try {
                fl4 fl4VarI = yc9.K(str3).i();
                qj4 qj4VarX = fl4VarI.x("error");
                if (qj4VarX == null || (strO = qj4VarX.o()) == null || nq7.j0(strO)) {
                    strO = null;
                }
                qj4 qj4VarX2 = fl4VarI.x("description");
                if (qj4VarX2 == null || (strO2 = qj4VarX2.o()) == null || nq7.j0(strO2)) {
                    strO2 = null;
                }
                List listP0 = x50.p0(new String[]{strO, strO2});
                List list = !((ArrayList) listP0).isEmpty() ? listP0 : null;
                if (list != null) {
                    strY0 = el1.Y0(list, ": ", " (", ")", null, 56);
                } else {
                    strY0 = "";
                }
            } catch (Exception unused) {
            }
        }
        super(str + TokenAuthenticationScheme.SCHEME_DELIMITER + str2 + " failed with HTTP " + i + strY0);
        this.a = i;
    }
}
