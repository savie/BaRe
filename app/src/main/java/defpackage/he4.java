package defpackage;

import com.google.android.gms.identitycredentials.GetCredentialRequest;
import com.google.android.gms.tasks.Task;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class he4 extends kz3 {
    public static final oe k = new oe("IdentityCredentials.API", new de4(), new b05());

    public final Task c(GetCredentialRequest getCredentialRequest) {
        getCredentialRequest.getClass();
        by7 by7VarA = r19.a();
        by7VarA.c = new y53[]{cy0.f};
        by7VarA.a = new zq8(getCredentialRequest, 21);
        by7VarA.d = 32701;
        Task taskB = b(0, by7VarA.a());
        taskB.getClass();
        return taskB;
    }
}
