package defpackage;

import java.security.PrivilegedAction;

/* JADX INFO: loaded from: classes.dex */
public final class r81 implements PrivilegedAction {
    public final /* synthetic */ String a;

    public r81(String str) {
        this.a = str;
    }

    @Override // java.security.PrivilegedAction
    public final Object run() {
        try {
            return ClassLoader.getSystemClassLoader().loadClass(this.a);
        } catch (Exception unused) {
            return null;
        }
    }
}
