package defpackage;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.compress.Packer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ky {
    public static boolean a(q63 q63Var, q63 q63Var2, bt3 bt3Var, final rt3 rt3Var) {
        Object bn6Var;
        Object bn6Var2;
        qo6 qo6VarG;
        q63Var.getClass();
        i40 i40VarC = Packer.c(q63Var);
        if (i40VarC == null || i40VarC.a != 6) {
            return Packer.a(q63Var, q63Var2, null, null, null, rt3Var, 28).a;
        }
        try {
            HashSet hashSet = mz6.a;
            bn6Var = mz6.n(q63Var);
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        Throwable thA = en6.a(bn6Var);
        if (thA != null) {
            vr6.e$default(vr6.INSTANCE, "AppSplitsArchiveExtractor", "Failed to list SBA split entries", thA, null, 8, null);
            return false;
        }
        List<xy6> list = (List) bn6Var;
        if (list.isEmpty()) {
            vr6.e$default(vr6.INSTANCE, "AppSplitsArchiveExtractor", "SBA split archive has no entries", null, 4, null);
            return false;
        }
        Iterator it = list.iterator();
        long j = 0;
        while (true) {
            long j2 = 1;
            if (!it.hasNext()) {
                break;
            }
            long j3 = ((xy6) it.next()).e;
            if (j3 >= 1) {
                j2 = j3;
            }
            j += j2;
        }
        final long j4 = j < 1 ? 1L : j;
        final kh6 kh6Var = new kh6();
        for (xy6 xy6Var : list) {
            long j5 = xy6Var.e;
            final long j6 = j5 < 1 ? 1L : j5;
            try {
                HashSet hashSet2 = mz6.a;
                String str = xy6Var.a;
                iu iuVar = iu.APP;
                f27 f27Var = f27.Basic;
                iz6 iz6Var = iz6.Auto;
                if (rt3Var != null) {
                    try {
                        qo6VarG = mz6.g(new mt3() { // from class: jy
                            /* JADX WARN: Code duplicated, block: B:10:0x001e  */
                            @Override // defpackage.mt3
                            public final Object invoke(Object obj) {
                                long jLongValue;
                                dz6 dz6Var = (dz6) obj;
                                dz6Var.getClass();
                                Long l = dz6Var.b;
                                long j7 = j6;
                                if (l == null) {
                                    jLongValue = j7;
                                } else {
                                    if (l.longValue() <= 0) {
                                        l = null;
                                    }
                                    if (l != null) {
                                        jLongValue = l.longValue();
                                    } else {
                                        jLongValue = j7;
                                    }
                                }
                                long j8 = dz6Var.a;
                                long j9 = j8 >= 0 ? j8 : 0L;
                                if (j9 > jLongValue) {
                                    j9 = jLongValue;
                                }
                                rt3Var.a(Long.valueOf(kh6Var.a + tu0.w((j9 / jLongValue) * j7)), Long.valueOf(j4), Long.valueOf(dz6Var.c));
                                return be8.a;
                            }
                        });
                    } catch (Throwable th2) {
                        th = th2;
                        bn6Var2 = new bn6(th);
                    }
                } else {
                    qo6VarG = null;
                }
                bn6Var2 = mz6.f(new jd0(q63Var, q63Var2, str, iuVar, f27Var, null, null, iz6Var, bt3Var, qo6VarG, 64));
            } catch (Throwable th3) {
                th = th3;
            }
            Throwable thA2 = en6.a(bn6Var2);
            if (thA2 != null) {
                vr6.e$default(vr6.INSTANCE, "AppSplitsArchiveExtractor", xs1.j("Failed to extract SBA split entry ", xy6Var.a), thA2, null, 8, null);
            }
            if (bn6Var2 instanceof bn6) {
                return false;
            }
            kh6Var.a += j6;
        }
        if (rt3Var != null) {
            rt3Var.a(Long.valueOf(j4), Long.valueOf(j4), 0L);
        }
        return true;
    }
}
