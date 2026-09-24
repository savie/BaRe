package defpackage;

import java.util.Random;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f42 extends ws7 implements qt3 {
    public int a;

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new f42(2, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((f42) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        long jNextLong;
        long j;
        int i = this.a;
        if (i == 0) {
            lg7.H(obj);
            xe6 xe6Var = xe6.b;
            long j2 = ((long) b67.a) * 965;
            long j3 = 6237;
            Object[] objArr = new Object[0];
            if (!(j2 >= 6237)) {
                throw new IllegalArgumentException(od2.o(objArr) ? "Start value must be smaller or equal to end value." : String.format("Start value must be smaller or equal to end value.", objArr));
            }
            if (6237 != j2) {
                long j4 = j2 - 6237;
                do {
                    jNextLong = ((Random) xe6Var.a.get()).nextLong() >>> 1;
                    j = jNextLong % j4;
                } while (((jNextLong - j) + j4) - 1 < 0);
                j3 = 6237 + j;
            }
            this.a = 1;
            Object objJ = yc9.j(j3, this);
            yx1 yx1Var = yx1.a;
            if (objJ == yx1Var) {
                return yx1Var;
            }
        } else {
            if (i != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            lg7.H(obj);
        }
        mp6 mp6Var = mp6.a;
        boolean z = g42.a;
        mp6.a.h(new String[]{g42.a("AQIidBEcfIA55/ZqkgcruJviQBxUyAX3QlNWB4QsjFtRr1Uo+cmzX4TYIeWPKHxNgjljcj6lTJTJSWx41YOJ6kY09KtquDSQ0CxRlueojrcPT1qqVwddQrN3zIbFdLrz22ABInvlV0XLVqAyWNOF/ZQQ8/pgRsLyciVi2fEhYA3pV8m+AQ==")}, ip6.SU);
        g00 g00Var = g00.a;
        SwiftApp.Companion companion = SwiftApp.d;
        String packageName = SwiftApp.Companion.c().getPackageName();
        packageName.getClass();
        g00.g(packageName);
        return be8.a;
    }
}
