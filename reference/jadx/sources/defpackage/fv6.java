package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fv6 {
    public static final l15 e = o15.b(fv6.class);
    public final di7 a;
    public final xr1 b;
    public final ur1 c;
    public final ij2 d;

    public fv6(ur1 ur1Var, di7 di7Var, xr1 xr1Var) {
        ij2 ij2Var = new ij2();
        EnumSet.noneOf(tu6.class);
        this.d = ij2Var;
        this.c = ur1Var;
        this.a = di7Var;
        this.b = xr1Var;
    }

    public final pt6 a() {
        List list;
        ArrayList arrayList;
        byte[] bArr = new byte[32];
        di7 di7Var = this.a;
        di7Var.d.nextBytes(bArr);
        EnumSet enumSetCopyOf = EnumSet.copyOf((Collection) di7Var.a);
        UUID uuid = this.b.d;
        EnumSet enumSetA = di7Var.a();
        ot6 ot6Var = new ot6(36, us6.UNKNOWN, it6.SMB2_NEGOTIATE, 0L, 0L);
        ot6Var.e = enumSetCopyOf;
        ot6Var.f = uuid;
        ot6Var.g = enumSetA;
        if (enumSetCopyOf.contains(us6.SMB_3_1_1)) {
            arrayList = new ArrayList();
            List listAsList = Arrays.asList(xu6.a);
            vt6 vt6Var = new vt6(nt6.SMB2_PREAUTH_INTEGRITY_CAPABILITIES);
            vt6Var.b = listAsList;
            vt6Var.c = (byte[]) bArr.clone();
            arrayList.add(vt6Var);
            if (enumSetA.contains(bt6.SMB2_GLOBAL_CAP_ENCRYPTION)) {
                list = arrayList;
                List listAsList2 = Arrays.asList(wu6.e, wu6.d);
                ws6 ws6Var = new ws6(nt6.SMB2_ENCRYPTION_CAPABILITIES);
                ws6Var.b = listAsList2;
                arrayList.add(ws6Var);
                list = arrayList;
            }
        } else {
            list = Collections.EMPTY_LIST;
        }
        list = arrayList;
        ot6Var.h = list;
        this.d.a = ot6Var;
        return (pt6) this.c.m(ot6Var);
    }
}
