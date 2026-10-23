package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vq7 implements f77 {
    public final /* synthetic */ CharSequence a;

    public vq7(CharSequence charSequence) {
        this.a = charSequence;
    }

    @Override // defpackage.f77
    public final Iterator iterator() {
        return new cv4(this.a);
    }
}
