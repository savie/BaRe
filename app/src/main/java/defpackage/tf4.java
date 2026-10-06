package defpackage;

import java.io.File;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.intro.d;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class tf4 extends ws7 implements qt3 {
    public final /* synthetic */ d a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tf4(d dVar, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = dVar;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new tf4(this.a, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        tf4 tf4Var = (tf4) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        tf4Var.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        lg7.H(obj);
        vr6 vr6Var = vr6.INSTANCE;
        d dVar = this.a;
        vr6.i$default(vr6Var, dVar.b, "Exiting and clearing data", null, 4, null);
        dVar.h(R.string.processing);
        SwiftApp.Companion companion = SwiftApp.d;
        File dataDir = SwiftApp.Companion.c().getDataDir();
        if (dataDir == null) {
            return be8.a;
        }
        boolean z = q63.d;
        String path = dataDir.getPath();
        path.getClass();
        cy0.g(path);
        dVar.f();
        System.exit(0);
        g84.h("System.exit returned normally, while it was supposed to halt JVM.");
        return null;
    }
}
