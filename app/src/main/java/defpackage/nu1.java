package defpackage;

import android.content.ClipData;
import android.view.ContentInfo;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nu1 implements ou1 {
    public final ContentInfo a;

    public nu1(ContentInfo contentInfo) {
        contentInfo.getClass();
        this.a = contentInfo;
    }

    @Override // defpackage.ou1
    public final ClipData a() {
        return this.a.getClip();
    }

    @Override // defpackage.ou1
    public final int b() {
        return this.a.getFlags();
    }

    @Override // defpackage.ou1
    public final ContentInfo c() {
        return this.a;
    }

    @Override // defpackage.ou1
    public final int getSource() {
        return this.a.getSource();
    }

    public final String toString() {
        return "ContentInfoCompat{" + this.a + "}";
    }
}
