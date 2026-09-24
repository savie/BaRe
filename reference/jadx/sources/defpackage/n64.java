package defpackage;

import com.nimbusds.jose.jwk.JWKParameterNames;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class n64 extends r4 {
    public k75 b;
    public yc9 c;
    public final ge d = new ge();
    public final cu0 a = new cu0();

    /* JADX WARN: Code duplicated, block: B:168:0x02bf  */
    /* JADX WARN: Code duplicated, block: B:170:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:182:0x02e6  */
    /* JADX WARN: Code duplicated, block: B:185:0x02f3  */
    public static void j(n64 n64Var, bs2 bs2Var, String str) {
        qb6 qb6Var;
        o64 o64Var;
        StringBuilder sb;
        o64 o64Var2;
        boolean z;
        ArrayList arrayList;
        String strA;
        p64 p64Var;
        String str2;
        int length;
        if (str == null) {
            return;
        }
        k75 k75Var = n64Var.b;
        wj7 wj7Var = (wj7) bs2Var.d;
        StringBuilder sb2 = wj7Var.a;
        ge geVar = k75Var.a;
        ge geVar2 = k75Var.a;
        Set set = k75.h;
        Set set2 = k75.i;
        ArrayList arrayList2 = k75Var.c;
        Set set3 = k75.g;
        boolean z2 = false;
        o58 o58Var = new o58(new e51(str), new zw5(0));
        while (true) {
            if (o58Var.e) {
                StringBuilder sb3 = o58Var.g;
                int length2 = sb3.length();
                w48 w48Var = o58Var.l;
                if (length2 > 0) {
                    String string = sb3.toString();
                    sb3.delete(z2 ? 1 : 0, sb3.length());
                    o58Var.f = null;
                    w48Var.c = string;
                    qb6Var = w48Var;
                } else {
                    String str3 = o58Var.f;
                    if (str3 != null) {
                        w48Var.c = str3;
                        o58Var.f = null;
                        qb6Var = w48Var;
                    } else {
                        o58Var.e = z2;
                        qb6Var = o58Var.d;
                    }
                }
                int i = qb6Var.a;
                if (6 == i) {
                    return;
                }
                int iA = dj7.A(i);
                if (iA == 1) {
                    b58 b58Var = (b58) qb6Var;
                    boolean zContains = set3.contains(b58Var.d);
                    String str4 = b58Var.d;
                    if (zContains) {
                        p64 p64Var2 = new p64(str4, sb2.length(), k75.a(b58Var));
                        if (k75Var.f) {
                            int length3 = wj7Var.length();
                            if (length3 > 0 && '\n' != wj7Var.charAt(length3 - 1)) {
                                nc8.d(wj7Var, '\n');
                            }
                            k75Var.f = false;
                        }
                        if (set.contains(str4) || b58Var.j) {
                            geVar.getClass();
                            String strA2 = ge.A(p64Var2);
                            if (strA2 != null && strA2.length() > 0) {
                                try {
                                    wj7Var.append(strA2);
                                } catch (IOException e) {
                                    y5.k(e);
                                    return;
                                }
                            }
                            int length4 = sb2.length();
                            if (!p64Var2.d()) {
                                p64Var2.d = length4;
                            }
                        }
                        arrayList2.add(p64Var2);
                    } else {
                        if (JWKParameterNames.RSA_FIRST_PRIME_FACTOR.equals(k75Var.d.a)) {
                            k75Var.d.e(sb2.length());
                            nc8.d(wj7Var, '\n');
                            k75Var.d = k75Var.d.e;
                        } else if ("li".equals(str4) && "li".equals(k75Var.d.a)) {
                            k75Var.d.e(sb2.length());
                            k75Var.d = k75Var.d.e;
                        }
                        if (set2.contains(str4)) {
                            k75Var.e = "pre".equals(str4);
                            int length5 = wj7Var.length();
                            if (length5 > 0 && '\n' != wj7Var.charAt(length5 - 1)) {
                                nc8.d(wj7Var, '\n');
                            }
                        } else {
                            if (k75Var.f) {
                                int length6 = wj7Var.length();
                                if (length6 > 0 && '\n' != wj7Var.charAt(length6 - 1)) {
                                    nc8.d(wj7Var, '\n');
                                }
                                k75Var.f = false;
                            }
                            int length7 = sb2.length();
                            Map mapA = k75.a(b58Var);
                            o64Var = k75Var.d;
                            sb = sb2;
                            o64Var2 = new o64(str4, length7, mapA, o64Var);
                            if (!set.contains(str4) || b58Var.j) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (z) {
                                geVar.getClass();
                                strA = ge.A(o64Var2);
                                if (strA != null && strA.length() > 0) {
                                    try {
                                        wj7Var.append(strA);
                                    } catch (IOException e2) {
                                        y5.k(e2);
                                        return;
                                    }
                                }
                                o64Var2.e(sb.length());
                            }
                            arrayList = o64Var.f;
                            if (arrayList == null) {
                                arrayList = new ArrayList(2);
                                o64Var.f = arrayList;
                            }
                            arrayList.add(o64Var2);
                            if (!z) {
                                k75Var.d = o64Var2;
                            }
                        }
                        int length8 = sb2.length();
                        Map mapA2 = k75.a(b58Var);
                        o64Var = k75Var.d;
                        sb = sb2;
                        o64Var2 = new o64(str4, length8, mapA2, o64Var);
                        if (set.contains(str4)) {
                            z = true;
                        } else {
                            z = true;
                        }
                        if (z) {
                            geVar.getClass();
                            strA = ge.A(o64Var2);
                            if (strA != null) {
                                wj7Var.append(strA);
                            }
                            o64Var2.e(sb.length());
                        }
                        arrayList = o64Var.f;
                        if (arrayList == null) {
                            arrayList = new ArrayList(2);
                            o64Var.f = arrayList;
                        }
                        arrayList.add(o64Var2);
                        if (!z) {
                            k75Var.d = o64Var2;
                        }
                    }
                    qb6Var.f();
                    sb2 = sb;
                    z2 = false;
                } else if (iA == 2) {
                    a58 a58Var = (a58) qb6Var;
                    boolean zContains2 = set3.contains(a58Var.d);
                    String str5 = a58Var.d;
                    if (zContains2) {
                        int size = arrayList2.size();
                        while (true) {
                            size--;
                            if (size <= -1) {
                                p64Var = null;
                                break;
                            }
                            p64 p64Var3 = (p64) arrayList2.get(size);
                            if (str5.equals(p64Var3.a) && p64Var3.d < 0) {
                                p64Var = p64Var3;
                                break;
                            }
                        }
                        if (p64Var != null) {
                            if (p64Var.b == wj7Var.length()) {
                                geVar2.getClass();
                                String strA3 = ge.A(p64Var);
                                if (strA3 != null) {
                                    try {
                                        wj7Var.append(strA3);
                                    } catch (IOException e3) {
                                        y5.k(e3);
                                        return;
                                    }
                                }
                            }
                            int length9 = sb2.length();
                            if (!p64Var.d()) {
                                p64Var.d = length9;
                            }
                        }
                    } else {
                        o64 o64Var3 = k75Var.d;
                        while (o64Var3 != null && !str5.equals(o64Var3.a) && !o64Var3.d()) {
                            o64Var3 = o64Var3.e;
                        }
                        if (o64Var3 != null) {
                            int i2 = o64Var3.b;
                            if ("pre".equals(str5)) {
                                k75Var.e = false;
                            }
                            if (i2 == wj7Var.length()) {
                                geVar2.getClass();
                                String strA4 = ge.A(o64Var3);
                                if (strA4 != null) {
                                    try {
                                        wj7Var.append(strA4);
                                    } catch (IOException e4) {
                                        y5.k(e4);
                                        return;
                                    }
                                }
                            }
                            o64Var3.e(sb2.length());
                            if (i2 != o64Var3.d) {
                                k75Var.f = set2.contains(o64Var3.a);
                            }
                            if (JWKParameterNames.RSA_FIRST_PRIME_FACTOR.equals(str5)) {
                                nc8.d(wj7Var, '\n');
                            }
                            k75Var.d = o64Var3.e;
                        }
                    }
                } else if (iA == 4) {
                    w48 w48Var2 = (w48) qb6Var;
                    if (k75Var.e) {
                        try {
                            wj7Var.append(w48Var2.c);
                        } catch (IOException e5) {
                            y5.k(e5);
                            return;
                        }
                    } else {
                        if (k75Var.f) {
                            int length10 = wj7Var.length();
                            if (length10 > 0 && '\n' != wj7Var.charAt(length10 - 1)) {
                                nc8.d(wj7Var, '\n');
                            }
                            k75Var.f = false;
                        }
                        us2 us2Var = k75Var.b;
                        String str6 = w48Var2.c;
                        us2Var.getClass();
                        int length11 = sb2.length();
                        int length12 = str6.length();
                        int i3 = 0;
                        boolean z3 = false;
                        while (i3 < length12) {
                            char cCharAt = str6.charAt(i3);
                            if (Character.isWhitespace(cCharAt)) {
                                str2 = str6;
                                z3 = true;
                            } else {
                                if (!z3 || (length = sb2.length()) <= 0) {
                                    str2 = str6;
                                } else {
                                    str2 = str6;
                                    if (!Character.isWhitespace(sb2.charAt(length - 1))) {
                                        nc8.d(wj7Var, ' ');
                                    }
                                }
                                nc8.d(wj7Var, cCharAt);
                                z3 = false;
                            }
                            i3++;
                            str6 = str2;
                        }
                        if (z3 && length11 < sb2.length()) {
                            nc8.d(wj7Var, ' ');
                        }
                    }
                }
                sb = sb2;
                qb6Var.f();
                sb2 = sb;
                z2 = false;
            } else {
                o58Var.c.d(o58Var, o58Var.a);
            }
        }
    }

    @Override // defpackage.r4
    public final void a(bs2 bs2Var) {
        yc9 yc9Var = this.c;
        if (yc9Var != null) {
            yc9Var.c0(bs2Var, this.b);
        } else {
            l0.e("Unexpected state, html-renderer is not defined");
        }
    }

    @Override // defpackage.r4
    public final void e(i75 i75Var) {
        cu0 cu0Var = this.a;
        cu0Var.getClass();
        new cz4(7);
        cu0Var.a(new v94());
        cu0Var.a(new mv4());
        cu0Var.a(new lt0());
        int i = 0;
        cu0Var.a(new mr7(0));
        int i2 = 1;
        cu0Var.a(new mr7(1));
        cu0Var.a(new fv2(i2));
        cu0Var.a(new xp7());
        cu0Var.a(new ax4(i2));
        cu0Var.a(new ax4(i));
        cu0Var.a(new fv2(i));
        cu0Var.a(new l34());
        this.b = new k75(this.d, new us2(28));
        HashMap map = (HashMap) cu0Var.b;
        if (cu0Var.a) {
            l0.e("Builder has been already built");
        } else {
            cu0Var.a = true;
            this.c = map.size() > 0 ? new l75(Collections.unmodifiableMap(map)) : new m75();
        }
    }

    @Override // defpackage.r4
    public final void i(om5 om5Var) {
        om5Var.g(h64.class, new m64(this));
        om5Var.g(k64.class, new l64(this));
    }
}
