package defpackage;

import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class r7 extends a55 {
    public final ex6 c;
    public final ex6 d;
    public final zc2 e;
    public final z28 f;

    public r7() {
        ex6 ex6Var = new ex6();
        this.c = ex6Var;
        this.d = new ex6();
        zc2 zc2VarD = re3.a.d("contributorDetails").d(re3.j().substring(0, 6));
        this.e = zc2VarD;
        z28 z28Var = new z28(this, 1);
        this.f = z28Var;
        c(false);
        d45.b.getClass();
        MFirebaseUser mFirebaseUserA = d45.a();
        if (mFirebaseUserA == null) {
            throw dj7.f(0, "System.exit returned normally, while it was supposed to halt JVM.");
        }
        ex6Var.k(mFirebaseUserA);
        zc2VarD.c(z28Var);
    }

    @Override // defpackage.a55, defpackage.tl8
    public final void b() {
        super.b();
        zc2 zc2Var = re3.a;
        re3.n(this.e, this.f);
    }

    public final void c(boolean z) {
        q7 q7Var = new q7(1, Integer.valueOf(R.string.settings), null, Integer.valueOf(R.drawable.ic_settings));
        q7 q7Var2 = new q7(9, Integer.valueOf(R.string.registered_contributor), null, Integer.valueOf(R.drawable.ic_contributor));
        if (!z) {
            q7Var2 = null;
        }
        this.d.k(el1.Q0(fl1.C0(q7Var, q7Var2, new q7(2, Integer.valueOf(R.string.swiftlogger), null, Integer.valueOf(R.drawable.ic_bug)), new q7(3, Integer.valueOf(R.string.language), null, Integer.valueOf(R.drawable.ic_language)), new q7(7, Integer.valueOf(R.string.help_center), null, Integer.valueOf(R.drawable.ic_help)), new q7(6, Integer.valueOf(R.string.contact), null, Integer.valueOf(R.drawable.ic_contact)), new q7(4, Integer.valueOf(R.string.rate), null, Integer.valueOf(R.drawable.ic_rate)), new q7(8, Integer.valueOf(R.string.share_swiftbackup), null, Integer.valueOf(R.drawable.ic_share)), new q7(5, Integer.valueOf(R.string.about), null, Integer.valueOf(R.drawable.ic_information)))));
    }
}
