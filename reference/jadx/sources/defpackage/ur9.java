package defpackage;

import android.content.ComponentName;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ur9 {
    public final String a;
    public final String b;
    public final ComponentName c;
    public final boolean d;

    public ur9(String str, boolean z) {
        ly8.e(str);
        this.a = str;
        ly8.e("com.google.android.gms");
        this.b = "com.google.android.gms";
        this.c = null;
        this.d = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ur9)) {
            return false;
        }
        ur9 ur9Var = (ur9) obj;
        return x13.m(this.a, ur9Var.a) && x13.m(this.b, ur9Var.b) && x13.m(this.c, ur9Var.c) && this.d == ur9Var.d;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b, this.c, 4225, Boolean.valueOf(this.d)});
    }

    public final String toString() {
        String str = this.a;
        if (str != null) {
            return str;
        }
        ComponentName componentName = this.c;
        ly8.h(componentName);
        return componentName.flattenToString();
    }

    public ur9(ComponentName componentName) {
        this.a = null;
        this.b = null;
        ly8.h(componentName);
        this.c = componentName;
        this.d = false;
    }
}
