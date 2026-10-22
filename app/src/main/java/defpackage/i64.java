package defpackage;

import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i64 extends h3 {
    @Override // defpackage.h3
    public final gt0 a(un2 un2Var, ke keVar) {
        int i = un2Var.e;
        CharSequence charSequence = un2Var.a;
        if (un2Var.g >= 4 || charSequence.charAt(i) != '<') {
            return null;
        }
        for (int i2 = 1; i2 <= 7; i2++) {
            if (i2 != 7 || !(((g3) keVar.b).e() instanceof rw5)) {
                Pattern[] patternArr = j64.e[i2];
                Pattern pattern = patternArr[0];
                Pattern pattern2 = patternArr[1];
                if (pattern.matcher(charSequence.subSequence(i, charSequence.length())).find()) {
                    gt0 gt0Var = new gt0(new j64(pattern2));
                    gt0Var.b = un2Var.b;
                    return gt0Var;
                }
            }
        }
        return null;
    }
}
