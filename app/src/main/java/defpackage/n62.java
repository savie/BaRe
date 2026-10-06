package defpackage;

import android.text.TextUtils;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class n62 implements Iterator {
    public final h80 a = new h80(4, false);
    public final StringBuilder b = new StringBuilder();
    public final int c;
    public int d;
    public final /* synthetic */ o62 e;

    public n62(o62 o62Var) {
        this.e = o62Var;
        this.c = o62Var.a.length();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        h80 h80Var = this.a;
        h80Var.b = "";
        h80Var.c = "";
        StringBuilder sb = this.b;
        sb.setLength(0);
        int i = this.d;
        String strTrim = null;
        boolean z = false;
        String strTrim2 = null;
        while (true) {
            int i2 = this.c;
            if (i >= i2) {
                if (strTrim == null || sb.length() <= 0) {
                    break;
                    break;
                }
                String strTrim3 = sb.toString().trim();
                h80Var.b = strTrim;
                h80Var.c = strTrim3;
                this.d = i2;
                break;
            }
            char cCharAt = this.e.a.charAt(i);
            if (strTrim == null) {
                if (':' == cCharAt) {
                    if (sb.length() > 0) {
                        strTrim = sb.toString().trim();
                    }
                    sb.setLength(0);
                } else if (';' == cCharAt) {
                    sb.setLength(0);
                } else if (Character.isWhitespace(cCharAt)) {
                    if (sb.length() > 0) {
                        z = true;
                    }
                } else if (z) {
                    sb.setLength(0);
                    sb.append(cCharAt);
                    z = false;
                } else {
                    sb.append(cCharAt);
                }
            } else if (strTrim2 != null) {
                continue;
            } else if (Character.isWhitespace(cCharAt)) {
                if (sb.length() > 0) {
                    sb.append(cCharAt);
                }
            } else if (';' == cCharAt) {
                strTrim2 = sb.toString().trim();
                sb.setLength(0);
                if (!TextUtils.isEmpty(strTrim) && !TextUtils.isEmpty(strTrim2)) {
                    this.d = i + 1;
                    h80Var.b = strTrim;
                    h80Var.c = strTrim2;
                    break;
                }
            } else {
                sb.append(cCharAt);
            }
            i++;
        }
        return (TextUtils.isEmpty((String) h80Var.b) || TextUtils.isEmpty((String) h80Var.c)) ? false : true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        h80 h80Var = this.a;
        String str = (String) h80Var.b;
        String str2 = (String) h80Var.c;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            return h80Var;
        }
        m0.d();
        return null;
    }
}
