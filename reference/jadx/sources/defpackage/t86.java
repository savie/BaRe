package defpackage;

import java.security.PrivilegedAction;

/* JADX INFO: loaded from: classes.dex */
public final class t86 implements PrivilegedAction {
    public final /* synthetic */ String a;

    public t86(String str) {
        this.a = str;
    }

    @Override // java.security.PrivilegedAction
    public final Object run() {
        return System.getProperty(this.a);
    }
}
