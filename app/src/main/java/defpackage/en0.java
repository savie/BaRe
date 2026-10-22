package defpackage;

import java.io.Serializable;
import java.text.DateFormat;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class en0 implements Serializable {
    public static final TimeZone n = TimeZone.getTimeZone("UTC");
    public final lc8 a;
    public final jb9 b;
    public final yg4 c;
    public final mp7 d;
    public final DateFormat e;
    public final Locale f;
    public final bl0 k;

    public en0(xo0 xo0Var, yg4 yg4Var, lc8 lc8Var, DateFormat dateFormat, Locale locale, bl0 bl0Var, mp7 mp7Var) {
        this.b = xo0Var;
        this.c = yg4Var;
        this.a = lc8Var;
        this.e = dateFormat;
        this.f = locale;
        this.k = bl0Var;
        this.d = mp7Var;
    }
}
