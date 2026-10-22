package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.util.Locale;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sw5 extends g3 {
    public final rw5 a = new rw5();
    public final ov4 b = new ov4();

    /* JADX WARN: Code duplicated, block: B:21:0x003c  */
    @Override // defpackage.g3
    public final void a(CharSequence charSequence) {
        int iQ;
        int i;
        ov4 ov4Var = this.b;
        StringBuilder sb = ov4Var.b;
        if (sb.length() != 0) {
            sb.append('\n');
        }
        sb.append(charSequence);
        int iB = 0;
        while (iB < charSequence.length()) {
            int iA = dj7.A(ov4Var.a);
            if (iA == 0) {
                int iB2 = zm5.B(charSequence, iB, charSequence.length());
                if (iB2 >= charSequence.length() || charSequence.charAt(iB2) != '[') {
                    iB = -1;
                } else {
                    ov4Var.a = 2;
                    ov4Var.d = new StringBuilder();
                    iB = iB2 + 1;
                    if (iB >= charSequence.length()) {
                        ov4Var.d.append('\n');
                    }
                }
            } else if (iA == 1) {
                iQ = ho6.Q(iB, charSequence);
                if (iQ == -1) {
                    iB = -1;
                } else {
                    ov4Var.d.append(charSequence, iB, iQ);
                    if (iQ >= charSequence.length()) {
                        ov4Var.d.append('\n');
                        iB = iQ;
                    } else if (charSequence.charAt(iQ) != ']' || (i = iQ + 1) >= charSequence.length() || charSequence.charAt(i) != ':' || ov4Var.d.length() > 999) {
                        iB = -1;
                    } else {
                        String string = ov4Var.d.toString();
                        Pattern pattern = fy2.a;
                        String strReplaceAll = fy2.c.matcher(string.trim().toLowerCase(Locale.ROOT)).replaceAll(TokenAuthenticationScheme.SCHEME_DELIMITER);
                        if (strReplaceAll.isEmpty()) {
                            iB = -1;
                        } else {
                            ov4Var.e = strReplaceAll;
                            ov4Var.a = 3;
                            iB = zm5.B(charSequence, iQ + 2, charSequence.length());
                        }
                    }
                }
            } else if (iA == 2) {
                int iB3 = zm5.B(charSequence, iB, charSequence.length());
                int iP = ho6.P(iB3, charSequence);
                if (iP != -1) {
                    ov4Var.f = charSequence.charAt(iB3) == '<' ? charSequence.subSequence(iB3 + 1, iP - 1).toString() : charSequence.subSequence(iB3, iP).toString();
                    iB = zm5.B(charSequence, iP, charSequence.length());
                    if (iB >= charSequence.length()) {
                        ov4Var.i = true;
                        sb.setLength(0);
                    } else if (iB == iP) {
                        iB = -1;
                    }
                    ov4Var.a = 4;
                } else {
                    iB = -1;
                }
            } else if (iA == 3) {
                iB = zm5.B(charSequence, iB, charSequence.length());
                if (iB >= charSequence.length()) {
                    ov4Var.a = 1;
                } else {
                    ov4Var.g = (char) 0;
                    char cCharAt = charSequence.charAt(iB);
                    if (cCharAt == '\"' || cCharAt == '\'') {
                        ov4Var.g = cCharAt;
                    } else if (cCharAt == '(') {
                        ov4Var.g = ')';
                    }
                    if (ov4Var.g != 0) {
                        ov4Var.a = 5;
                        ov4Var.h = new StringBuilder();
                        iB++;
                        if (iB == charSequence.length()) {
                            ov4Var.h.append('\n');
                        }
                    } else {
                        ov4Var.a();
                        ov4Var.a = 1;
                    }
                }
            } else if (iA == 4) {
                iQ = ho6.R(charSequence, iB, ov4Var.g);
                if (iQ == -1) {
                    iB = -1;
                } else {
                    ov4Var.h.append(charSequence.subSequence(iB, iQ));
                    if (iQ >= charSequence.length()) {
                        ov4Var.h.append('\n');
                        iB = iQ;
                    } else {
                        iB = zm5.B(charSequence, iQ + 1, charSequence.length());
                        if (iB != charSequence.length()) {
                            iB = -1;
                        } else {
                            ov4Var.i = true;
                            ov4Var.a();
                            sb.setLength(0);
                            ov4Var.a = 1;
                        }
                    }
                }
            } else if (iA == 5) {
                return;
            }
            if (iB == -1) {
                ov4Var.a = 6;
                return;
            }
        }
    }

    @Override // defpackage.g3
    public final boolean c() {
        return true;
    }

    @Override // defpackage.g3
    public final void d() {
        if (this.b.b.length() == 0) {
            this.a.f();
        }
    }

    @Override // defpackage.g3
    public final ws0 e() {
        return this.a;
    }

    @Override // defpackage.g3
    public final void g(ic4 ic4Var) {
        StringBuilder sb = this.b.b;
        if (sb.length() > 0) {
            ic4Var.f(sb.toString(), this.a);
        }
    }

    @Override // defpackage.g3
    public final ys0 h(un2 un2Var) {
        if (un2Var.h) {
            return null;
        }
        return ys0.a(un2Var.b);
    }
}
