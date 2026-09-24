package defpackage;

import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class rh4 extends od7 implements Closeable {
    public List a;
    public List b;
    public zd7 d;
    public final ArrayList c = new ArrayList();
    public boolean e = false;

    public rh4(zd7 zd7Var) {
        this.d = zd7Var;
    }

    @Override // defpackage.od7
    public final rh4 a(String... strArr) {
        if (strArr != null && strArr.length > 0) {
            this.c.add(new dm1(strArr));
        }
        return this;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0045  */
    /* JADX WARN: Code duplicated, block: B:38:0x007c A[PHI: r3
      0x007c: PHI (r3v3 gn6) = (r3v1 gn6), (r3v4 gn6) binds: [B:42:0x008f, B:36:0x0079] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // defpackage.od7
    public gn6 b() {
        gn6 gn6Var;
        boolean z = !this.e && this.d.c;
        if (z) {
            this.b = this.a;
        }
        gn6 gn6Var2 = new gn6();
        List list = this.a;
        if (list == null || list != this.b) {
            gn6Var2.a = this.a;
            gn6Var2.b = this.b;
        } else {
            if (ji8.a == null) {
                ji8.a = Collections.synchronizedCollection(qj5.c()).getClass();
            }
            if (ji8.a.isInstance(list)) {
                gn6Var2.a = this.a;
                gn6Var2.b = this.b;
            } else {
                List listSynchronizedList = Collections.synchronizedList(this.a);
                gn6Var2.a = listSynchronizedList;
                gn6Var2.b = listSynchronizedList;
            }
        }
        List list2 = null;
        try {
            try {
                this.d.execTask(new gy7(this.c, gn6Var2));
                close();
                gn6Var2.a = this.a;
                gn6Var2.b = z ? null : this.b;
                return gn6Var2;
            } catch (IOException e) {
                if (e instanceof ee7) {
                    gn6Var = gn6.e;
                    close();
                    gn6Var2.a = this.a;
                    if (!z) {
                        list2 = this.b;
                    }
                } else {
                    ji8.k("LIBSU", e);
                    gn6Var = gn6.d;
                    close();
                    gn6Var2.a = this.a;
                    if (!z) {
                        list2 = this.b;
                    }
                }
                gn6Var2.b = list2;
                return gn6Var;
            }
        } catch (Throwable th) {
            close();
            gn6Var2.a = this.a;
            gn6Var2.b = z ? null : this.b;
            throw th;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((ae7) it.next()).close();
        }
    }

    public rh4() {
    }
}
