package defpackage;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContentInfo;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ku1 implements lu1 {
    public final ContentInfo.Builder a;

    public ku1(ClipData clipData, int i) {
        this.a = ju1.b(clipData, i);
    }

    @Override // defpackage.lu1
    public final void a(Uri uri) {
        this.a.setLinkUri(uri);
    }

    @Override // defpackage.lu1
    public final void b(int i) {
        this.a.setFlags(i);
    }

    @Override // defpackage.lu1
    public final qu1 build() {
        return new qu1(new nu1(this.a.build()));
    }

    @Override // defpackage.lu1
    public final void setExtras(Bundle bundle) {
        this.a.setExtras(bundle);
    }
}
