package defpackage;

import com.google.android.material.internal.CheckableImageButton;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v62 extends qw2 {
    public final /* synthetic */ int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ v62(pw2 pw2Var, int i) {
        super(pw2Var);
        this.e = i;
    }

    @Override // defpackage.qw2
    public void q() {
        switch (this.e) {
            case 0:
                pw2 pw2Var = this.b;
                pw2Var.G = null;
                CheckableImageButton checkableImageButton = pw2Var.k;
                checkableImageButton.setOnLongClickListener(null);
                wx3.z(checkableImageButton, null);
                break;
        }
    }
}
