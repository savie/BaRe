package defpackage;

import android.text.TextUtils;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ci9 implements wu2 {
    public static final ci9 c;
    public static final ci9 d;
    public final /* synthetic */ int a;
    public final String b;

    static {
        int i = 0;
        c = new ci9("TINK", i);
        d = new ci9("NO_PREFIX", i);
    }

    public /* synthetic */ ci9(String str, int i) {
        this.a = i;
        this.b = str;
    }

    @Override // defpackage.wu2
    public boolean d(CharSequence charSequence, int i, int i2, ad8 ad8Var) {
        if (!TextUtils.equals(charSequence.subSequence(i, i2), this.b)) {
            return true;
        }
        ad8Var.c = (ad8Var.c & 3) | 4;
        return false;
    }

    public String toString() {
        switch (this.a) {
            case 0:
                return this.b;
            default:
                return super.toString();
        }
    }

    @Override // defpackage.wu2
    public Object getResult() {
        return this;
    }
}
