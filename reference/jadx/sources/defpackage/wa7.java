package defpackage;

import java.nio.file.attribute.FileTime;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wa7 {
    public static final wa7[] s = new wa7[0];
    public String a;
    public boolean b;
    public boolean c;
    public boolean d;
    public boolean e;
    public boolean f;
    public boolean g;
    public FileTime h;
    public FileTime i;
    public FileTime j;
    public boolean k;
    public int l;
    public boolean m;
    public long n;
    public long o;
    public long p;
    public long q;
    public List r;

    public final void a(Iterable iterable) {
        if (iterable == null) {
            this.r = null;
            return;
        }
        LinkedList linkedList = new LinkedList();
        iterable.forEach(new uo1(linkedList, 7));
        this.r = Collections.unmodifiableList(linkedList);
    }

    /* JADX WARN: Code duplicated, block: B:48:0x009c  */
    public final boolean equals(Object obj) {
        boolean z;
        gb7 gb7Var;
        if (this != obj) {
            if (obj != null && wa7.class == obj.getClass()) {
                wa7 wa7Var = (wa7) obj;
                if (Objects.equals(this.a, wa7Var.a) && this.b == wa7Var.b && this.c == wa7Var.c && this.d == wa7Var.d && this.e == wa7Var.e && this.f == wa7Var.f && this.g == wa7Var.g && Objects.equals(this.h, wa7Var.h) && Objects.equals(this.i, wa7Var.i) && Objects.equals(this.j, wa7Var.j) && this.k == wa7Var.k && this.l == wa7Var.l && this.m == wa7Var.m && this.n == wa7Var.n && this.o == wa7Var.o && this.p == wa7Var.p && this.q == wa7Var.q) {
                    List list = this.r;
                    List list2 = wa7Var.r;
                    if (list == null) {
                        if (list2 == null) {
                            z = true;
                        } else {
                            z = false;
                        }
                    } else if (list2 == null) {
                        z = false;
                    } else {
                        Iterator it = list2.iterator();
                        Iterator it2 = list.iterator();
                        do {
                            if (it2.hasNext()) {
                                gb7Var = (gb7) it2.next();
                                if (!it.hasNext()) {
                                    break;
                                }
                            } else {
                                z = !it.hasNext();
                            }
                        } while (gb7Var.equals(it.next()));
                        z = false;
                    }
                    if (z) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.a;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }
}
