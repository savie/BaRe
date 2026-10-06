package defpackage;

import java.io.IOException;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.cloud.protocols.CloudCredentials;
import org.swiftapps.swiftbackup.cloud.protocols.a;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class q51 extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ q51(Object obj, Object obj2, jv1 jv1Var, int i) {
        super(2, jv1Var);
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                return new q51((qv1) obj3, (r51) obj2, jv1Var, 0);
            default:
                return new q51((dd1) obj3, (tn2) obj2, jv1Var, 1);
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) throws IOException {
        int i = this.a;
        be8 be8Var = be8.a;
        xx1 xx1Var = (xx1) obj;
        jv1 jv1Var = (jv1) obj2;
        switch (i) {
            case 0:
                ((q51) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
            default:
                ((q51) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
        }
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws IOException {
        int i = this.a;
        Object obj2 = this.c;
        Object obj3 = this.b;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                lg7.H(obj);
                qv1 qv1Var = (qv1) obj3;
                ((r51) obj2).f.k(new fm7((List) el1.g1(qv1Var.getSmsItemList(), qv1Var.getMmsItemList()), (Set) null, false, (String) null, 30));
                break;
            default:
                lg7.H(obj);
                CloudCredentials.Companion.getClass();
                CloudCredentials cloudCredentialsB = a.b((dd1) obj3);
                if (cloudCredentialsB != null) {
                    a.a(cloudCredentialsB, (tn2) obj2);
                }
                break;
        }
        return be8Var;
    }
}
