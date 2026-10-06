package defpackage;

import java.io.IOException;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hj3 {
    public static final hj3[] j = new hj3[0];
    public kk1[] a;
    public long b;
    public long c;
    public cr0[] d;
    public long[] e;
    public long[] f;
    public boolean g;
    public long h;
    public int i;

    public final List a() throws IOException {
        int i;
        if (od2.o(this.e) || od2.o(this.a)) {
            return Collections.EMPTY_LIST;
        }
        LinkedList linkedList = new LinkedList();
        long j2 = this.e[0];
        loop0: while (true) {
            for (int i2 = (int) j2; i2 >= 0; i2 = -1) {
                kk1[] kk1VarArr = this.a;
                if (i2 >= kk1VarArr.length) {
                    break loop0;
                }
                if (linkedList.contains(kk1VarArr[i2])) {
                    y5.m("folder uses the same coder more than once in coder chain");
                    return null;
                }
                linkedList.addLast(this.a[i2]);
                if (this.d == null) {
                    i = -1;
                    break;
                }
                i = 0;
                while (true) {
                    cr0[] cr0VarArr = this.d;
                    if (i >= cr0VarArr.length) {
                        i = -1;
                        break;
                    }
                    if (cr0VarArr[i].b == i2) {
                        break;
                    }
                    i++;
                }
                if (i != -1) {
                    j2 = this.d[i].a;
                }
            }
            break loop0;
        }
        return linkedList;
    }

    public final long b() {
        int i;
        long j2 = this.c;
        if (j2 != 0) {
            for (int i2 = ((int) j2) - 1; i2 >= 0; i2--) {
                if (this.d == null) {
                    i = -1;
                    break;
                }
                i = 0;
                while (true) {
                    cr0[] cr0VarArr = this.d;
                    if (i >= cr0VarArr.length) {
                        i = -1;
                        break;
                    }
                    if (cr0VarArr[i].b == i2) {
                        break;
                    }
                    i++;
                }
                if (i < 0) {
                    return this.f[i2];
                }
            }
        }
        return 0L;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("Folder with ");
        sb.append(this.a.length);
        sb.append(" coders, ");
        sb.append(this.b);
        sb.append(" input streams, ");
        sb.append(this.c);
        sb.append(" output streams, ");
        sb.append(this.d.length);
        sb.append(" bind pairs, ");
        sb.append(this.e.length);
        sb.append(" packed streams, ");
        sb.append(this.f.length);
        sb.append(" unpack sizes, ");
        if (this.g) {
            str = "with CRC " + this.h;
        } else {
            str = "without CRC";
        }
        sb.append(str);
        sb.append(" and ");
        return xs1.m(sb, this.i, " unpack streams");
    }
}
