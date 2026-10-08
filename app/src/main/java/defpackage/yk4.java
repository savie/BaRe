package defpackage;

import java.io.Closeable;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class yk4 extends ll4 {
    public LinkedList a;
    public final transient Closeable b;

    public yk4(pw8 pw8Var, String str) {
        super(str);
        this.b = pw8Var;
    }

    public static yk4 d(Throwable th, xk4 xk4Var) {
        yk4 yk4Var;
        Object objB;
        if (th instanceof yk4) {
            yk4Var = (yk4) th;
        } else {
            String strG = u81.g(th);
            if (strG == null || strG.isEmpty()) {
                strG = "(was " + th.getClass().getName() + ")";
            }
            yk4Var = new yk4((!(th instanceof ll4) || (objB = ((ll4) th).b()) == null) ? null : (Closeable) objB, strG, th);
        }
        if (yk4Var.a == null) {
            yk4Var.a = new LinkedList();
        }
        if (yk4Var.a.size() < 1000) {
            yk4Var.a.addFirst(xk4Var);
        }
        return yk4Var;
    }

    @Override // defpackage.ll4
    public final Object b() {
        return this.b;
    }

    public final String c() {
        String message = super.getMessage();
        if (this.a == null) {
            return message;
        }
        StringBuilder sb = new StringBuilder(message);
        sb.append(" (through reference chain: ");
        LinkedList linkedList = this.a;
        if (linkedList != null) {
            Iterator it = linkedList.iterator();
            while (it.hasNext()) {
                sb.append(((xk4) it.next()).toString());
                if (it.hasNext()) {
                    sb.append("->");
                }
            }
        }
        sb.append(')');
        return sb.toString();
    }

    @Override // java.lang.Throwable
    public final String getLocalizedMessage() {
        return c();
    }

    @Override // defpackage.ll4, java.lang.Throwable
    public final String getMessage() {
        return c();
    }

    @Override // defpackage.ll4, java.lang.Throwable
    public final String toString() {
        return getClass().getName() + ": " + c();
    }

    public yk4(Closeable closeable, String str, Throwable th) {
        super(str, th);
        this.b = closeable;
    }
}
