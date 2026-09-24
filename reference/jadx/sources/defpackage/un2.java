package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class un2 {
    public static final LinkedHashSet p = new LinkedHashSet(Arrays.asList(at0.class, k34.class, z53.class, h64.class, a28.class, lw4.class, ib4.class));
    public static final Map q;
    public CharSequence a;
    public boolean d;
    public boolean h;
    public final List i;
    public final fo8 j;
    public final List k;
    public final qn2 l;
    public final ArrayList n;
    public final LinkedHashSet o;
    public int b = 0;
    public int c = 0;
    public int e = 0;
    public int f = 0;
    public int g = 0;
    public final LinkedHashMap m = new LinkedHashMap();

    static {
        HashMap map = new HashMap();
        map.put(at0.class, new bt0());
        map.put(k34.class, new m34());
        map.put(z53.class, new a63(0));
        map.put(h64.class, new i64());
        map.put(a28.class, new b28());
        map.put(lw4.class, new a63(1));
        map.put(ib4.class, new jb4());
        q = Collections.unmodifiableMap(map);
    }

    public un2(ArrayList arrayList, fo8 fo8Var, ArrayList arrayList2) {
        ArrayList arrayList3 = new ArrayList();
        this.n = arrayList3;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        this.o = linkedHashSet;
        this.i = arrayList;
        this.j = fo8Var;
        this.k = arrayList2;
        qn2 qn2Var = new qn2();
        this.l = qn2Var;
        arrayList3.add(qn2Var);
        linkedHashSet.add(qn2Var);
    }

    public final void a(g3 g3Var) {
        while (!h().b(g3Var.e())) {
            e(h());
        }
        h().e().b(g3Var.e());
        this.n.add(g3Var);
        this.o.add(g3Var);
    }

    public final void b(sw5 sw5Var) {
        ov4 ov4Var = sw5Var.b;
        ov4Var.a();
        for (nv4 nv4Var : ov4Var.c) {
            rw5 rw5Var = sw5Var.a;
            nv4Var.f();
            on5 on5Var = rw5Var.d;
            nv4Var.d = on5Var;
            if (on5Var != null) {
                on5Var.e = nv4Var;
            }
            nv4Var.e = rw5Var;
            rw5Var.d = nv4Var;
            on5 on5Var2 = rw5Var.a;
            nv4Var.a = on5Var2;
            if (nv4Var.d == null) {
                on5Var2.b = nv4Var;
            }
            String str = nv4Var.f;
            LinkedHashMap linkedHashMap = this.m;
            if (!linkedHashMap.containsKey(str)) {
                linkedHashMap.put(str, nv4Var);
            }
        }
    }

    public final void c() {
        CharSequence charSequenceSubSequence;
        if (this.d) {
            int i = this.b + 1;
            CharSequence charSequence = this.a;
            CharSequence charSequenceSubSequence2 = charSequence.subSequence(i, charSequence.length());
            int i2 = 4 - (this.c % 4);
            StringBuilder sb = new StringBuilder(charSequenceSubSequence2.length() + i2);
            for (int i3 = 0; i3 < i2; i3++) {
                sb.append(' ');
            }
            sb.append(charSequenceSubSequence2);
            charSequenceSubSequence = sb.toString();
        } else {
            CharSequence charSequence2 = this.a;
            charSequenceSubSequence = charSequence2.subSequence(this.b, charSequence2.length());
        }
        h().a(charSequenceSubSequence);
    }

    public final void d() {
        char cCharAt = this.a.charAt(this.b);
        int i = this.b;
        if (cCharAt != '\t') {
            this.b = i + 1;
            this.c++;
        } else {
            this.b = i + 1;
            int i2 = this.c;
            this.c = (4 - (i2 % 4)) + i2;
        }
    }

    public final void e(g3 g3Var) {
        if (h() == g3Var) {
            ArrayList arrayList = this.n;
            arrayList.remove(arrayList.size() - 1);
        }
        if (g3Var instanceof sw5) {
            b((sw5) g3Var);
        }
        g3Var.d();
    }

    public final void f(List list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            e((g3) list.get(size));
        }
    }

    public final void g() {
        int i = this.b;
        int i2 = this.c;
        this.h = true;
        int length = this.a.length();
        while (i < length) {
            char cCharAt = this.a.charAt(i);
            if (cCharAt == '\t') {
                i++;
                i2 += 4 - (i2 % 4);
            } else if (cCharAt != ' ') {
                this.h = false;
                break;
            } else {
                i++;
                i2++;
            }
        }
        this.e = i;
        this.f = i2;
        this.g = i2 - this.c;
    }

    public final g3 h() {
        return (g3) dj7.e(this.n, 1);
    }

    public final void i(String str) {
        gt0 gt0VarA;
        int length = str.length();
        StringBuilder sb = null;
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == 0) {
                if (sb == null) {
                    sb = new StringBuilder(length);
                    sb.append((CharSequence) str, 0, i);
                }
                sb.append((char) 65533);
            } else if (sb != null) {
                sb.append(cCharAt);
            }
        }
        if (sb != null) {
            str = sb.toString();
        }
        this.a = str;
        this.b = 0;
        this.c = 0;
        this.d = false;
        ArrayList arrayList = this.n;
        int i2 = 1;
        for (g3 g3Var : arrayList.subList(1, arrayList.size())) {
            g();
            ys0 ys0VarH = g3Var.h(this);
            if (ys0VarH == null) {
                break;
            }
            if (ys0VarH.c) {
                e(g3Var);
                return;
            }
            int i3 = ys0VarH.a;
            if (i3 != -1) {
                k(i3);
            } else {
                int i4 = ys0VarH.b;
                if (i4 != -1) {
                    j(i4);
                }
            }
            i2++;
        }
        ArrayList arrayList2 = new ArrayList(arrayList.subList(i2, arrayList.size()));
        g3Var = (g3) arrayList.get(i2 - 1);
        boolean zIsEmpty = arrayList2.isEmpty();
        boolean zF = (g3Var.e() instanceof rw5) || g3Var.f();
        while (zF) {
            g();
            if (!this.h) {
                int i5 = 4;
                if (this.g >= 4 || !Character.isLetter(Character.codePointAt(this.a, this.e))) {
                    ke keVar = new ke(g3Var, i5);
                    Iterator it = this.i.iterator();
                    do {
                        if (!it.hasNext()) {
                            gt0VarA = null;
                            break;
                        }
                        gt0VarA = ((h3) it.next()).a(this, keVar);
                    } while (gt0VarA == null);
                    if (gt0VarA == null) {
                        k(this.e);
                        break;
                    }
                    if (!zIsEmpty) {
                        f(arrayList2);
                        zIsEmpty = true;
                    }
                    int i6 = gt0VarA.b;
                    if (i6 != -1) {
                        k(i6);
                    } else {
                        int i7 = gt0VarA.c;
                        if (i7 != -1) {
                            j(i7);
                        }
                    }
                    if (gt0VarA.d) {
                        g3 g3VarH = h();
                        arrayList.remove(arrayList.size() - 1);
                        this.o.remove(g3VarH);
                        if (g3VarH instanceof sw5) {
                            b((sw5) g3VarH);
                        }
                        g3VarH.e().f();
                    }
                    g3[] g3VarArr = gt0VarA.a;
                    for (g3 g3Var2 : g3VarArr) {
                        a(g3Var2);
                        zF = g3Var2.f();
                    }
                }
            }
            k(this.e);
            break;
        }
        if (!zIsEmpty && !this.h && h().c()) {
            c();
            return;
        }
        if (!zIsEmpty) {
            f(arrayList2);
        }
        if (!g3Var2.f()) {
            c();
        } else {
            if (this.h) {
                return;
            }
            a(new sw5());
            c();
        }
    }

    public final void j(int i) {
        int i2;
        int i3 = this.f;
        if (i >= i3) {
            this.b = this.e;
            this.c = i3;
        }
        int length = this.a.length();
        while (true) {
            i2 = this.c;
            if (i2 >= i || this.b == length) {
                break;
            } else {
                d();
            }
        }
        if (i2 <= i) {
            this.d = false;
            return;
        }
        this.b--;
        this.c = i;
        this.d = true;
    }

    public final void k(int i) {
        int i2 = this.e;
        if (i >= i2) {
            this.b = i2;
            this.c = this.f;
        }
        int length = this.a.length();
        while (true) {
            int i3 = this.b;
            if (i3 >= i || i3 == length) {
                break;
            } else {
                d();
            }
        }
        this.d = false;
    }
}
