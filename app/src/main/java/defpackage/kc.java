package defpackage;

import android.view.View;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class kc implements jk8 {
    public final /* synthetic */ int a;
    public Object b;
    public Object c;
    public Object d;
    public Object e;

    public kc(xx1 xx1Var, ec2 ec2Var, fc2 fc2Var) {
        this.a = 4;
        this.b = xx1Var;
        this.c = fc2Var;
        this.d = ms8.c(Integer.MAX_VALUE, null, 6);
        this.e = new tr9(2);
        oh4 oh4Var = (oh4) xx1Var.d().get(nh4.b);
        if (oh4Var != null) {
            oh4Var.invokeOnCompletion(new gv4(1, ec2Var, this));
        }
    }

    public jd4 a(ArrayList arrayList) {
        jd4 ci1Var;
        boolean zIsEmpty = arrayList.isEmpty();
        ov2 ov2Var = ov2.a;
        if (zIsEmpty) {
            return new ci1(ov2Var, ov2Var);
        }
        rg1 rg1VarA = ((vg1) this.e).a();
        try {
            if (rg1VarA == null) {
                return ai1.i;
            }
            try {
                tu0 tu0Var = (tu0) ((kf) this.b).invoke();
                if (tu0Var instanceof fb1) {
                    bi1 bi1Var = new bi1(((fb1) tu0Var).n, arrayList);
                    rg1VarA.close();
                    return bi1Var;
                }
                if (!(tu0Var instanceof gb1)) {
                    throw new mn5();
                }
                Set set = ((gb1) tu0Var).n;
                jm1 jm1Var = (jm1) ((ji1) this.c).invoke();
                if (jm1Var instanceof xa1) {
                    bi1 bi1Var2 = new bi1(((xa1) jm1Var).g, arrayList);
                    rg1VarA.close();
                    return bi1Var2;
                }
                if (!(jm1Var instanceof ya1)) {
                    throw new mn5();
                }
                ya1 ya1Var = (ya1) jm1Var;
                ai6 ai6Var = ei1.a;
                mn6 mn6VarC = ei1.c(arrayList, ya1Var.g, set, ya1Var.h);
                ArrayList arrayList2 = mn6VarC.b;
                ArrayList arrayList3 = mn6VarC.a;
                if (arrayList3.isEmpty()) {
                    ci1 ci1Var2 = new ci1(ov2Var, arrayList2);
                    rg1VarA.close();
                    return ci1Var2;
                }
                c7 c7Var = (c7) this.d;
                ArrayList arrayList4 = new ArrayList(hl1.G0(arrayList3, 10));
                Iterator it = arrayList3.iterator();
                while (it.hasNext()) {
                    arrayList4.add(((wa1) it.next()).c);
                }
                y13 y13Var = (y13) c7Var.invoke(arrayList4);
                if (y13Var instanceof of1) {
                    ci1Var = new bi1(((of1) y13Var).h, arrayList2);
                } else {
                    if (!y13Var.equals(pf1.h)) {
                        throw new mn5();
                    }
                    ci1Var = new ci1(arrayList3, arrayList2);
                }
                rg1VarA.close();
                return ci1Var;
            } catch (Exception e) {
                bi1 bi1Var3 = new bi1(e, arrayList);
                rg1VarA.close();
                return bi1Var3;
            }
        } catch (Throwable th) {
            rg1VarA.close();
            throw th;
        }
    }

    public pe4 b() {
        rg1 rg1VarA = ((vg1) this.e).a();
        try {
            if (rg1VarA == null) {
                return gi1.m;
            }
            try {
                tu0 tu0Var = (tu0) ((kf) this.b).invoke();
                if (tu0Var instanceof fb1) {
                    hi1 hi1Var = new hi1(((fb1) tu0Var).n);
                    rg1VarA.close();
                    return hi1Var;
                }
                if (!(tu0Var instanceof gb1)) {
                    throw new mn5();
                }
                Set set = ((gb1) tu0Var).n;
                jm1 jm1Var = (jm1) ((ji1) this.c).invoke();
                if (jm1Var instanceof xa1) {
                    hi1 hi1Var2 = new hi1(((xa1) jm1Var).g);
                    rg1VarA.close();
                    return hi1Var2;
                }
                if (!(jm1Var instanceof ya1)) {
                    throw new mn5();
                }
                ya1 ya1Var = (ya1) jm1Var;
                qf1 qf1Var = ya1Var.h;
                ArrayList arrayList = ya1Var.g;
                ii1 ii1Var = new ii1(ei1.a(arrayList, set, qf1Var), arrayList.size(), set.size(), qf1Var);
                rg1VarA.close();
                return ii1Var;
            } catch (Exception e) {
                hi1 hi1Var3 = new hi1(e);
                rg1VarA.close();
                return hi1Var3;
            }
        } catch (Throwable th) {
            rg1VarA.close();
            throw th;
        }
    }

    public mu9 c() throws GeneralSecurityException {
        Integer num = (Integer) this.b;
        if (num == null) {
            m0.h("key size is not set");
            return null;
        }
        if (((Integer) this.c) == null) {
            m0.h("tag size is not set");
            return null;
        }
        if (((lu9) this.d) == null) {
            m0.h("hash type is not set");
            return null;
        }
        if (((ku9) this.e) == null) {
            m0.h("variant is not set");
            return null;
        }
        if (num.intValue() < 16) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size in bytes %d; must be at least 16 bytes", (Integer) this.b));
        }
        Integer num2 = (Integer) this.c;
        int iIntValue = num2.intValue();
        lu9 lu9Var = (lu9) this.d;
        if (iIntValue < 10) {
            throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; must be at least 10 bytes", num2));
        }
        if (lu9Var == lu9.b) {
            if (iIntValue > 20) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 20 bytes for SHA1", num2));
            }
        } else if (lu9Var == lu9.c) {
            if (iIntValue > 28) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 28 bytes for SHA224", num2));
            }
        } else if (lu9Var == lu9.d) {
            if (iIntValue > 32) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 32 bytes for SHA256", num2));
            }
        } else if (lu9Var == lu9.e) {
            if (iIntValue > 48) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 48 bytes for SHA384", num2));
            }
        } else {
            if (lu9Var != lu9.f) {
                m0.h("unknown hash type; must be SHA256, SHA384 or SHA512");
                return null;
            }
            if (iIntValue > 64) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 64 bytes for SHA512", num2));
            }
        }
        return new mu9(((Integer) this.b).intValue(), ((Integer) this.c).intValue(), (ku9) this.e, (lu9) this.d);
    }

    @Override // defpackage.jk8
    public View getRoot() {
        switch (this.a) {
            case 3:
                return (ConstraintLayout) this.b;
            case 4:
            default:
                return (ConstraintLayout) this.b;
            case 5:
                return (LinearLayout) this.b;
        }
    }

    public /* synthetic */ kc(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
        this.e = obj4;
    }

    public /* synthetic */ kc(int i) {
        this.a = i;
    }

    public kc(kf kfVar, ji1 ji1Var, c7 c7Var, vg1 vg1Var) {
        this.a = 2;
        vg1Var.getClass();
        this.b = kfVar;
        this.c = ji1Var;
        this.d = c7Var;
        this.e = vg1Var;
    }
}
