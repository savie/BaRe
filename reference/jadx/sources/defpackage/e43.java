package defpackage;

import java.util.Calendar;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e43 extends g43 {
    public static final e43 b = new e43("(Z|(?:[+-]\\d{2}))");
    public static final e43 c = new e43("(Z|(?:[+-]\\d{2}\\d{2}))");
    public static final e43 d = new e43("(Z|(?:[+-]\\d{2}(?::)\\d{2}))");

    public e43(String str) {
        this.a = Pattern.compile(str);
    }

    @Override // defpackage.g43
    public final void c(Calendar calendar, String str) {
        calendar.setTimeZone(s53.a(str));
    }
}
