package defpackage;

import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bl2 {
    public int a;
    public int b;
    public boolean c;
    public final Serializable d;
    public final Object e;
    public final Object f;
    public Object g;

    public bl2(jm1 jm1Var, ArrayList arrayList, int[] iArr, int[] iArr2) {
        int i;
        int i2;
        this.d = arrayList;
        this.e = iArr;
        this.f = iArr2;
        Arrays.fill(iArr, 0);
        Arrays.fill(iArr2, 0);
        this.g = jm1Var;
        int iR = jm1Var.r();
        this.a = iR;
        int iQ = jm1Var.q();
        this.b = iQ;
        this.c = true;
        al2 al2Var = arrayList.isEmpty() ? null : (al2) arrayList.get(0);
        if (al2Var == null || al2Var.a != 0 || al2Var.b != 0) {
            arrayList.add(0, new al2(0, 0, 0));
        }
        arrayList.add(new al2(iR, iQ, 0));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            al2 al2Var2 = (al2) it.next();
            for (int i3 = 0; i3 < al2Var2.c; i3++) {
                int i4 = al2Var2.a + i3;
                int i5 = al2Var2.b + i3;
                int i6 = jm1Var.b(i4, i5) ? 1 : 2;
                iArr[i4] = (i5 << 4) | i6;
                iArr2[i5] = (i4 << 4) | i6;
            }
        }
        if (this.c) {
            Iterator it2 = arrayList.iterator();
            int i7 = 0;
            while (it2.hasNext()) {
                al2 al2Var3 = (al2) it2.next();
                while (true) {
                    i = al2Var3.a;
                    if (i7 < i) {
                        if (iArr[i7] == 0) {
                            int size = arrayList.size();
                            int i8 = 0;
                            for (int i9 = 0; i9 < size; i9++) {
                                al2 al2Var4 = (al2) arrayList.get(i9);
                                while (true) {
                                    i2 = al2Var4.b;
                                    if (i8 < i2) {
                                        if (iArr2[i8] == 0 && jm1Var.c(i7, i8)) {
                                            int i10 = jm1Var.b(i7, i8) ? 8 : 4;
                                            iArr[i7] = (i8 << 4) | i10;
                                            iArr2[i8] = i10 | (i7 << 4);
                                            break;
                                        }
                                        i8++;
                                    }
                                }
                                i8 = al2Var4.c + i2;
                            }
                        }
                        i7++;
                    }
                }
                i7 = al2Var3.c + i;
            }
        }
    }

    public static cl2 b(ArrayDeque arrayDeque, int i, boolean z) {
        cl2 cl2Var;
        Iterator it = arrayDeque.iterator();
        while (true) {
            if (!it.hasNext()) {
                cl2Var = null;
                break;
            }
            cl2Var = (cl2) it.next();
            if (cl2Var.a == i && cl2Var.c == z) {
                it.remove();
                break;
            }
        }
        while (it.hasNext()) {
            cl2 cl2Var2 = (cl2) it.next();
            if (z) {
                cl2Var2.b--;
            } else {
                cl2Var2.b++;
            }
        }
        return cl2Var;
    }

    public static void c(s40 s40Var, String str, String str2, String str3) {
        String strDecode;
        String strDecode2 = null;
        if (str2 == null) {
            strDecode = null;
        } else {
            try {
                strDecode = URLDecoder.decode(str2, StandardCharsets.UTF_8.name());
            } catch (UnsupportedEncodingException unused) {
                strDecode = null;
            }
        }
        if (str3 != null) {
            try {
                strDecode2 = URLDecoder.decode(str3, StandardCharsets.UTF_8.name());
            } catch (UnsupportedEncodingException unused2) {
            }
        }
        rd0 rd0Var = strDecode2 != null ? new rd0(strDecode2) : rd0.b;
        if (str == null || strDecode == null) {
            return;
        }
        ArrayList arrayList = s40Var.a;
        if (rd0Var == null) {
            return;
        }
        arrayList.add(str);
        arrayList.add(new qd0(strDecode, rd0Var));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a(z28 z28Var) {
        int i;
        int i2;
        int[] iArr;
        int[] iArr2 = (int[]) this.e;
        ArrayList arrayList = (ArrayList) this.d;
        int i3 = this.a;
        jm1 jm1Var = (jm1) this.g;
        gp0 gp0Var = new gp0(z28Var);
        ArrayDeque arrayDeque = new ArrayDeque();
        int i4 = this.b;
        int i5 = 1;
        int size = arrayList.size() - 1;
        int i6 = i4;
        int i7 = i3;
        while (size >= 0) {
            al2 al2Var = (al2) arrayList.get(size);
            int i8 = al2Var.a;
            int i9 = al2Var.c;
            int i10 = i8 + i9;
            int i11 = al2Var.b;
            int i12 = i11 + i9;
            int i13 = i5;
            while (true) {
                i = 0;
                if (i7 <= i10) {
                    break;
                }
                i7--;
                int i14 = iArr2[i7];
                if ((i14 & 12) != 0) {
                    iArr = iArr2;
                    int i15 = i14 >> 4;
                    cl2 cl2VarB = b(arrayDeque, i15, false);
                    if (cl2VarB != null) {
                        int i16 = (i3 - cl2VarB.b) - 1;
                        gp0Var.f(i7, i16);
                        if ((i14 & 4) != 0) {
                            jm1Var.n(i7, i15);
                            gp0Var.a(null, i16, i13);
                        }
                    } else {
                        boolean z = i13;
                        arrayDeque.add(new cl2(i7, (i3 - i7) - (z ? 1 : 0), z));
                    }
                } else {
                    iArr = iArr2;
                    gp0Var.r(i7, i13);
                    i3--;
                }
                arrayList = arrayList;
                iArr2 = iArr;
                i13 = 1;
            }
            int[] iArr3 = iArr2;
            ArrayList arrayList2 = arrayList;
            while (i6 > i12) {
                i6--;
                int i17 = ((int[]) this.f)[i6];
                if ((i17 & 12) != 0) {
                    int i18 = i17 >> 4;
                    cl2 cl2VarB2 = b(arrayDeque, i18, true);
                    if (cl2VarB2 == null) {
                        arrayDeque.add(new cl2(i6, i3 - i7, false));
                        i2 = 0;
                    } else {
                        i2 = 0;
                        gp0Var.f((i3 - cl2VarB2.b) - 1, i7);
                        if ((i17 & 4) != 0) {
                            jm1Var.n(i18, i6);
                            gp0Var.a(null, i7, 1);
                        }
                    }
                } else {
                    i2 = i;
                    gp0Var.n(i7, 1);
                    i3++;
                }
                i = i2;
            }
            int i19 = i11;
            int i20 = i8;
            while (i < i9) {
                if ((iArr3[i20] & 15) == 2) {
                    jm1Var.n(i20, i19);
                    gp0Var.a(null, i20, 1);
                }
                i20++;
                i19++;
                i++;
            }
            size--;
            i6 = i11;
            i7 = i8;
            i5 = 1;
            arrayList = arrayList2;
            iArr2 = iArr3;
        }
        gp0Var.b();
    }

    public void d(int i) {
        this.c = false;
        this.a = 1;
        bt2 bt2Var = (bt2) this.e;
        bt2Var.e = i;
        bt2Var.b = true;
        bt2Var.c = false;
        bt2Var.d = false;
        bt2Var.g = null;
        bt2 bt2Var2 = (bt2) this.f;
        bt2Var2.e = i;
        bt2Var2.b = true;
        bt2Var2.c = false;
        bt2Var2.d = false;
        bt2Var2.g = null;
        this.g = "";
        this.b = 0;
    }

    public bl2(String str) {
        this.e = new bt2(bt2.h);
        this.f = new bt2(bt2.i);
        this.d = str;
        d(0);
    }
}
