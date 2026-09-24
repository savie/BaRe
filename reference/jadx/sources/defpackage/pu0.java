package defpackage;

import java.security.PrivilegedAction;
import java.security.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class pu0 implements PrivilegedAction {
    public final /* synthetic */ String a;
    public final /* synthetic */ String b;
    public final /* synthetic */ String c;
    public final /* synthetic */ qu0 d;

    public pu0(qu0 qu0Var, String str, String str2, String str3) {
        this.d = qu0Var;
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    @Override // java.security.PrivilegedAction
    public final Object run() {
        String str = this.a;
        String str2 = this.b;
        qu0 qu0Var = this.d;
        Provider.Service service = super/*java.security.Provider*/.getService(str, str2);
        if (service == null || service.getClassName() == null) {
            return null;
        }
        qu0Var.a.put(this.c, service);
        qu0Var.remove(service.getType() + "." + service.getAlgorithm());
        qu0Var.putService(service);
        return service;
    }
}
