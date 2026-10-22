package defpackage;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mu1 implements lu1 {
    public ClipData a;
    public int b;
    public int c;
    public Uri d;
    public Bundle e;

    @Override // defpackage.lu1
    public final void a(Uri uri) {
        this.d = uri;
    }

    @Override // defpackage.lu1
    public final void b(int i) {
        this.c = i;
    }

    @Override // defpackage.lu1
    public final qu1 build() {
        return new qu1(new pu1(this));
    }

    @Override // defpackage.lu1
    public final void setExtras(Bundle bundle) {
        this.e = bundle;
    }
}
