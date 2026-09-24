package defpackage;

import android.text.style.UnderlineSpan;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ax4 extends ix7 {
    public final /* synthetic */ int a;

    public /* synthetic */ ax4(int i) {
        this.a = i;
    }

    @Override // defpackage.ix7
    public final void a(bs2 bs2Var, yc9 yc9Var, q64 q64Var) {
        switch (this.a) {
            case 0:
                q86 q86Var = lg7.a;
                if (q64Var.c()) {
                    o64 o64VarB = q64Var.b();
                    boolean zEquals = "ol".equals(o64VarB.a);
                    boolean zEquals2 = "ul".equals(o64VarB.a);
                    if (zEquals || zEquals2) {
                        j75 j75Var = (j75) bs2Var.b;
                        di4 di4Var = (di4) bs2Var.c;
                        sj7 sj7VarA = ((ky3) j75Var.k).a(bx4.class);
                        int i = 0;
                        o64 o64Var = o64VarB;
                        while (true) {
                            o64Var = o64Var.e;
                            if (o64Var == null) {
                                ArrayList arrayList = o64VarB.f;
                                int i2 = 1;
                                for (o64 o64Var2 : arrayList == null ? Collections.EMPTY_LIST : Collections.unmodifiableList(arrayList)) {
                                    ix7.c(bs2Var, yc9Var, o64Var2);
                                    if (sj7VarA != null && "li".equals(o64Var2.a)) {
                                        if (zEquals) {
                                            q86Var.b(di4Var, kx1.b);
                                            lg7.c.b(di4Var, Integer.valueOf(i2));
                                            i2++;
                                        } else {
                                            q86Var.b(di4Var, kx1.a);
                                            lg7.b.b(di4Var, Integer.valueOf(i));
                                        }
                                        wj7.c((wj7) bs2Var.d, sj7VarA.a(j75Var, di4Var), o64Var2.b, o64Var2.d);
                                    }
                                }
                                break;
                            } else {
                                String str = o64Var.a;
                                if ("ul".equals(str) || "ol".equals(str)) {
                                    i++;
                                }
                            }
                        }
                    }
                }
                break;
            default:
                if (q64Var.c()) {
                    ix7.c(bs2Var, yc9Var, q64Var.b());
                }
                wj7.c((wj7) bs2Var.d, new UnderlineSpan(), q64Var.b, q64Var.d);
                break;
        }
    }

    @Override // defpackage.ix7
    public final Collection b() {
        switch (this.a) {
            case 0:
                return Arrays.asList("ol", "ul");
            default:
                return Arrays.asList("u", "ins");
        }
    }
}
