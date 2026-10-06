package defpackage;

import android.net.Uri;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jg8 implements ch5 {
    public static final Set b = Collections.unmodifiableSet(new HashSet(Arrays.asList("http", "https")));
    public final ch5 a;

    public jg8(ch5 ch5Var) {
        this.a = ch5Var;
    }

    @Override // defpackage.ch5
    public final boolean a(Object obj) {
        return b.contains(((Uri) obj).getScheme());
    }

    @Override // defpackage.ch5
    public final bh5 b(Object obj, int i, int i2, ou5 ou5Var) {
        return this.a.b(new sy3(((Uri) obj).toString()), i, i2, ou5Var);
    }
}
