package defpackage;

import android.widget.TextView;
import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class rp3 implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ rp3(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
        this.e = obj4;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        Object obj2;
        boolean z = false;
        switch (this.a) {
            case 0:
                qp3 qp3Var = (qp3) this.b;
                tp3 tp3Var = (tp3) this.c;
                TextView textView = tp3Var.l;
                ih6 ih6Var = (ih6) this.d;
                ih6 ih6Var2 = (ih6) this.e;
                String str = (String) obj;
                if (str != null && str.length() != 0 && !qp3Var.e().isComplete()) {
                    z = true;
                }
                sz8.d0(textView, z);
                ih6Var.a = z;
                tp3.b(ih6Var2, ih6Var, tp3Var);
                if (z) {
                    textView.setText(str);
                }
                return be8.a;
            case 1:
                u34 u34Var = (u34) this.b;
                String str2 = (String) this.c;
                String str3 = (String) this.d;
                l46 l46Var = (l46) this.e;
                ij5 ij5Var = (ij5) obj;
                if (((String) ly8.w(ij5Var, u34.d, "")).equals(str2)) {
                    l46 l46VarC = u34Var.c(ij5Var, str2);
                    if (l46VarC != null && !l46VarC.a.equals(str3)) {
                        synchronized (u34Var) {
                            u34Var.d(ij5Var, str2);
                            HashSet hashSet = new HashSet((Collection) ly8.w(ij5Var, l46Var, new HashSet()));
                            hashSet.add(str2);
                            ij5Var.d(l46Var, hashSet);
                        }
                    }
                    return null;
                }
                l46 l46Var2 = u34.c;
                long jLongValue = ((Long) ly8.w(ij5Var, l46Var2, 0L)).longValue();
                if (jLongValue + 1 == 30) {
                    synchronized (u34Var) {
                        try {
                            long jLongValue2 = ((Long) ly8.w(ij5Var, l46Var2, 0L)).longValue();
                            String str4 = "";
                            Set hashSet2 = new HashSet();
                            String str5 = null;
                            for (Map.Entry entry : ij5Var.a().entrySet()) {
                                if (entry.getValue() instanceof Set) {
                                    Set<String> set = (Set) entry.getValue();
                                    for (String str6 : set) {
                                        if (str5 == null || str5.compareTo(str6) > 0) {
                                            str4 = ((l46) entry.getKey()).a;
                                            str5 = str6;
                                            hashSet2 = set;
                                        }
                                    }
                                }
                            }
                            obj2 = null;
                            HashSet hashSet3 = new HashSet(hashSet2);
                            hashSet3.remove(str5);
                            str4.getClass();
                            ij5Var.d(new l46(str4), hashSet3);
                            jLongValue = jLongValue2 - 1;
                            ij5Var.c(u34.c, Long.valueOf(jLongValue));
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                } else {
                    obj2 = null;
                }
                HashSet hashSet4 = new HashSet((Collection) ly8.w(ij5Var, l46Var, new HashSet()));
                hashSet4.add(str2);
                ij5Var.d(l46Var, hashSet4);
                ij5Var.c(u34.c, Long.valueOf(jLongValue + 1));
                ij5Var.c(u34.d, str2);
                return obj2;
            case 2:
                wp8 wp8Var = (wp8) this.b;
                lh6 lh6Var = (lh6) this.c;
                km5 km5Var = ((yp8) this.d).f;
                dy7 dy7Var = (dy7) this.e;
                Integer num = (Integer) obj;
                be8 be8Var = be8.a;
                if (num != null) {
                    int size = wp8Var.n.size();
                    Integer num2 = (Integer) lh6Var.a;
                    int iIntValue = num.intValue();
                    if (num2 == null || num2.intValue() != iIntValue) {
                        lh6Var.a = num;
                        km5Var.u(size);
                        km5Var.v(num.intValue(), num2 != null);
                        dy7Var.b((num.intValue() * 100) / size);
                    }
                }
                return be8Var;
            default:
                tt8 tt8Var = (tt8) this.b;
                lh6 lh6Var2 = (lh6) this.c;
                km5 km5Var2 = ((yp8) this.d).f;
                dy7 dy7Var2 = (dy7) this.e;
                Integer num3 = (Integer) obj;
                be8 be8Var2 = be8.a;
                if (num3 != null) {
                    int size2 = tt8Var.p.size();
                    Integer num4 = (Integer) lh6Var2.a;
                    int iIntValue2 = num3.intValue();
                    if (num4 == null || num4.intValue() != iIntValue2) {
                        lh6Var2.a = num3;
                        km5Var2.u(size2);
                        km5Var2.v(num3.intValue(), num4 != null);
                        dy7Var2.b((num3.intValue() * 100) / size2);
                    }
                }
                return be8Var2;
        }
    }
}
