package defpackage;

import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q20 extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ q20(Object obj, Object obj2, Object obj3, jv1 jv1Var, int i) {
        super(2, jv1Var);
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Object obj2 = this.d;
        Object obj3 = this.c;
        Object obj4 = this.b;
        switch (i) {
            case 0:
                return new q20((r20) obj4, (n10) obj3, (List) obj2, jv1Var, 0);
            default:
                return new q20((BlacklistApp) obj4, (ArrayList) obj3, (bt3) obj2, jv1Var, 1);
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        xx1 xx1Var = (xx1) obj;
        jv1 jv1Var = (jv1) obj2;
        switch (i) {
            case 0:
                ((q20) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
            default:
                ((q20) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
        }
        return be8Var;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:70:0x0161  */
    /* JADX WARN: Code duplicated, block: B:78:0x0190  */
    /* JADX WARN: Code duplicated, block: B:81:0x0196  */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00f2, code lost:
    
        if (r9.equals("Export apps list") != false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0123, code lost:
    
        if (r9.equals("Apply labels") != false) goto L68;
     */
    @Override // defpackage.ml0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            Method dump skipped, instruction units count: 476
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.q20.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
