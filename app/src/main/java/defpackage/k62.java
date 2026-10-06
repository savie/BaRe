package defpackage;

import java.util.List;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class k62 extends ws7 implements qt3 {
    public int a;
    public final /* synthetic */ m62 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k62(m62 m62Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = m62Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new k62(this.b, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((k62) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws Throwable {
        List listA;
        m62 m62Var = this.b;
        int i = this.a;
        if (i == 0) {
            lg7.H(obj);
            try {
                SwiftApp.Companion companion = SwiftApp.d;
                oz4 oz4Var = new oz4(SwiftApp.Companion.c());
                dd1 dd1Var = m62Var.f;
                if (dd1Var == null) {
                    pe4.F("cloudType");
                    throw null;
                }
                listA = oz4Var.a(dd1Var);
                zn4 zn4Var = zn4.a;
                o20 o20Var = new o20(6, listA, m62Var);
                this.a = 1;
                Object objG = zn4.g(o20Var, this);
                yx1 yx1Var = yx1.a;
                if (objG == yx1Var) {
                    return yx1Var;
                }
            } catch (Exception e) {
                vr6.e$default(vr6.INSTANCE, m62Var.b, "startLocalServerDiscovery", e, null, 8, null);
                listA = ov2.a;
            }
        } else {
            if (i != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            lg7.H(obj);
        }
        return be8.a;
    }
}
