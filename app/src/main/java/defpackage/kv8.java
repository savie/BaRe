package defpackage;

import android.view.DisplayCutout;
import android.view.WindowInsets;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class kv8 extends jv8 {
    public kv8(tv8 tv8Var, WindowInsets windowInsets) {
        super(tv8Var, windowInsets);
    }

    @Override // defpackage.qv8
    public tv8 a() {
        return tv8.h(this.c.consumeDisplayCutout(), null);
    }

    @Override // defpackage.iv8, defpackage.qv8
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof kv8)) {
            return false;
        }
        kv8 kv8Var = (kv8) obj;
        return Objects.equals(this.c, kv8Var.c) && Objects.equals(this.g, kv8Var.g) && iv8.J(this.h, kv8Var.h);
    }

    @Override // defpackage.qv8
    public en2 g() {
        DisplayCutout displayCutout = this.c.getDisplayCutout();
        if (displayCutout == null) {
            return null;
        }
        return new en2(displayCutout);
    }

    @Override // defpackage.qv8
    public int hashCode() {
        return this.c.hashCode();
    }
}
