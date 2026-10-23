package defpackage;

import android.content.Intent;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x19 extends z19 {
    public final /* synthetic */ Intent a;
    public final /* synthetic */ bu4 b;

    public x19(Intent intent, bu4 bu4Var) {
        this.a = intent;
        this.b = bu4Var;
    }

    @Override // defpackage.z19
    public final void a() {
        Intent intent = this.a;
        if (intent != null) {
            this.b.startActivityForResult(intent, 2);
        }
    }
}
