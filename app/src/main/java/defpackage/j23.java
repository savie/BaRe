package defpackage;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j23 {
    public static final g23[] e = new g23[0];
    public final /* synthetic */ int a;
    public boolean b;
    public Collection c;
    public final Object d;

    public j23() {
        this.a = 1;
        this.c = Collections.newSetFromMap(new WeakHashMap());
        this.d = new HashSet();
    }

    public boolean a(kk6 kk6Var) {
        boolean z = true;
        if (kk6Var == null) {
            return true;
        }
        boolean zRemove = ((Set) this.c).remove(kk6Var);
        if (!((HashSet) this.d).remove(kk6Var) && !zRemove) {
            z = false;
        }
        if (z) {
            kk6Var.clear();
        }
        return z;
    }

    public void b(InputStream inputStream, String str) throws IOException {
        this.c = new LinkedList();
        h23 h23Var = (h23) this.d;
        int i = g51.a;
        Charset charsetDefaultCharset = Charset.defaultCharset();
        if (str != null) {
            charsetDefaultCharset = Charset.forName(str);
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, charsetDefaultCharset));
        try {
            for (String strD = h23Var.d(bufferedReader); strD != null; strD = h23Var.d(bufferedReader)) {
                ((LinkedList) this.c).add(strD);
            }
            bufferedReader.close();
            h23Var.c((LinkedList) this.c);
            ((LinkedList) this.c).listIterator();
        } catch (Throwable th) {
            try {
                bufferedReader.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public String toString() {
        switch (this.a) {
            case 1:
                StringBuilder sb = new StringBuilder();
                sb.append(super.toString());
                sb.append("{numRequests=");
                sb.append(((Set) this.c).size());
                sb.append(", isPaused=");
                return dj7.p(sb, this.b, "}");
            default:
                return super.toString();
        }
    }

    public j23(h23 h23Var, e23 e23Var) {
        this.a = 0;
        LinkedList linkedList = new LinkedList();
        this.c = linkedList;
        linkedList.listIterator();
        this.d = h23Var;
        this.b = false;
    }
}
