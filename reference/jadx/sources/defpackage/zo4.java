package defpackage;

import com.nimbusds.jose.jwk.JWKParameterNames;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zo4 {
    public static final ib a = ib.k(JWKParameterNames.OCT_KEY_VALUE);

    public static ArrayList a(ul4 ul4Var, e25 e25Var, float f, cj8 cj8Var, boolean z) {
        ul4 ul4Var2;
        e25 e25Var2;
        float f2;
        cj8 cj8Var2;
        boolean z2;
        ArrayList arrayList = new ArrayList();
        if (ul4Var.v() == 6) {
            e25Var.a("Lottie doesn't support expressions.");
            return arrayList;
        }
        ul4Var.b();
        while (ul4Var.m()) {
            if (ul4Var.A(a) != 0) {
                ul4Var.G();
            } else if (ul4Var.v() == 1) {
                ul4Var.a();
                if (ul4Var.v() == 7) {
                    ul4 ul4Var3 = ul4Var;
                    e25 e25Var3 = e25Var;
                    float f3 = f;
                    cj8 cj8Var3 = cj8Var;
                    boolean z3 = z;
                    wo4 wo4VarB = yo4.b(ul4Var3, e25Var3, f3, cj8Var3, false, z3);
                    ul4Var2 = ul4Var3;
                    e25Var2 = e25Var3;
                    f2 = f3;
                    cj8Var2 = cj8Var3;
                    z2 = z3;
                    arrayList.add(wo4VarB);
                } else {
                    ul4Var2 = ul4Var;
                    e25Var2 = e25Var;
                    f2 = f;
                    cj8Var2 = cj8Var;
                    z2 = z;
                    while (ul4Var2.m()) {
                        arrayList.add(yo4.b(ul4Var2, e25Var2, f2, cj8Var2, true, z2));
                    }
                }
                ul4Var2.g();
                ul4Var = ul4Var2;
                e25Var = e25Var2;
                f = f2;
                cj8Var = cj8Var2;
                z = z2;
            } else {
                ul4 ul4Var4 = ul4Var;
                arrayList.add(yo4.b(ul4Var4, e25Var, f, cj8Var, false, z));
                ul4Var = ul4Var4;
            }
        }
        ul4Var.h();
        b(arrayList);
        return arrayList;
    }

    public static void b(ArrayList arrayList) {
        int i;
        Object obj;
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            i = size - 1;
            if (i2 >= i) {
                break;
            }
            wo4 wo4Var = (wo4) arrayList.get(i2);
            i2++;
            wo4 wo4Var2 = (wo4) arrayList.get(i2);
            wo4Var.h = Float.valueOf(wo4Var2.g);
            if (wo4Var.c == null && (obj = wo4Var2.b) != null) {
                wo4Var.c = obj;
                if (wo4Var instanceof iy5) {
                    ((iy5) wo4Var).d();
                }
            }
        }
        wo4 wo4Var3 = (wo4) arrayList.get(i);
        if ((wo4Var3.b == null || wo4Var3.c == null) && arrayList.size() > 1) {
            arrayList.remove(wo4Var3);
        }
    }
}
