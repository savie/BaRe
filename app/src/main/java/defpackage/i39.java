package defpackage;

import android.os.Parcel;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i39 extends j39 {
    @Override // defpackage.j39
    public final void f(ne neVar) {
        c39 c39Var = (c39) neVar;
        m39 m39Var = (m39) c39Var.p();
        h39 h39Var = new h39(this);
        GoogleSignInOptions googleSignInOptions = c39Var.y;
        Parcel parcelF = m39Var.f();
        int i = z29.a;
        parcelF.writeStrongBinder(h39Var);
        z29.b(parcelF, googleSignInOptions);
        m39Var.g(parcelF, 103);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* bridge */ /* synthetic */ fn6 b(Status status) {
        return status;
    }
}
