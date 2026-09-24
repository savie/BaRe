package defpackage;

import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final enum q58 extends e88 {
    public q58() {
        super("RcdataLessthanSign", 10);
    }

    @Override // defpackage.e88
    public final void d(o58 o58Var, e51 e51Var) {
        if (e51Var.m('/')) {
            o58Var.e();
            o58Var.a(e88.r);
            return;
        }
        if (e51Var.o() && o58Var.o != null) {
            String str = "</" + o58Var.o;
            Locale locale = Locale.ENGLISH;
            String lowerCase = str.toLowerCase(locale);
            String upperCase = str.toUpperCase(locale);
            if (e51Var.p(lowerCase) <= -1 && e51Var.p(upperCase) <= -1) {
                c58 c58VarD = o58Var.d(false);
                String str2 = o58Var.o;
                c58VarD.c = str2;
                c58VarD.d = str2 != null ? str2.toLowerCase(locale) : "";
                o58Var.i = c58VarD;
                o58Var.k();
                e51Var.q();
                o58Var.c = e88.a;
                return;
            }
        }
        o58Var.h("<");
        o58Var.c = e88.c;
    }
}
