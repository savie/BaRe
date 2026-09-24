package defpackage;

import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ph4 extends CancellationException {
    public final transient oh4 a;

    public ph4(String str, Throwable th, oh4 oh4Var) {
        super(str);
        this.a = oh4Var;
        if (th != null) {
            initCause(th);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ph4)) {
            return false;
        }
        ph4 ph4Var = (ph4) obj;
        if (!pe4.d(ph4Var.getMessage(), getMessage())) {
            return false;
        }
        Object obj2 = ph4Var.a;
        if (obj2 == null) {
            obj2 = zn5.b;
        }
        Object obj3 = this.a;
        if (obj3 == null) {
            obj3 = zn5.b;
        }
        return pe4.d(obj2, obj3) && pe4.d(ph4Var.getCause(), getCause());
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    public final int hashCode() {
        String message = getMessage();
        message.getClass();
        int iHashCode = message.hashCode() * 31;
        Object obj = this.a;
        if (obj == null) {
            obj = zn5.b;
        }
        int iHashCode2 = (obj.hashCode() + iHashCode) * 31;
        Throwable cause = getCause();
        return iHashCode2 + (cause != null ? cause.hashCode() : 0);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("; job=");
        Object obj = this.a;
        if (obj == null) {
            obj = zn5.b;
        }
        sb.append(obj);
        return sb.toString();
    }
}
