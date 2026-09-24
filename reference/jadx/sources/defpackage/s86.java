package defpackage;

import java.security.PrivilegedAction;
import java.security.Security;

/* JADX INFO: loaded from: classes.dex */
public final class s86 implements PrivilegedAction {
    public final /* synthetic */ String a;

    public s86(String str) {
        this.a = str;
    }

    @Override // java.security.PrivilegedAction
    public final Object run() {
        return Security.getProperty(this.a);
    }
}
