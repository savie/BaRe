package defpackage;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class s19 extends z19 {
    public final /* synthetic */ Intent a;
    public final /* synthetic */ GoogleApiActivity b;

    public s19(Intent intent, GoogleApiActivity googleApiActivity) {
        this.a = intent;
        this.b = googleApiActivity;
    }

    @Override // defpackage.z19
    public final void a() {
        Intent intent = this.a;
        if (intent != null) {
            this.b.startActivityForResult(intent, 2);
        }
    }
}
