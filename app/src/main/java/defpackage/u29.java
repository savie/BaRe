package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u29 extends kz3 {
    public static final oe l = new oe("Auth.Api.Identity.SignIn.API", new q29(), new b05());
    public final String k;

    public u29(Context context, o39 o39Var) {
        super(context, null, l, o39Var, jz3.c);
        this.k = w29.a();
    }

    public static jf7 c(Intent intent) throws re {
        Status status = Status.k;
        if (intent == null) {
            throw new re(status);
        }
        Parcelable.Creator<Status> creator = Status.CREATOR;
        byte[] byteArrayExtra = intent.getByteArrayExtra("status");
        Status status2 = (Status) (byteArrayExtra == null ? null : rs9.d(byteArrayExtra, creator));
        if (status2 == null) {
            throw new re(Status.p);
        }
        if (!status2.n()) {
            throw new re(status2);
        }
        Parcelable.Creator<jf7> creator2 = jf7.CREATOR;
        byte[] byteArrayExtra2 = intent.getByteArrayExtra("sign_in_credential");
        jf7 jf7Var = (jf7) (byteArrayExtra2 != null ? rs9.d(byteArrayExtra2, creator2) : null);
        if (jf7Var != null) {
            return jf7Var;
        }
        throw new re(status);
    }
}
