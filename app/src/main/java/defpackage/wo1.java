package defpackage;

import java.lang.reflect.Method;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class wo1 {
    public boolean a;
    public final Object b;

    public wo1(lm4 lm4Var) {
        this.b = lm4Var;
        this.a = true;
    }

    public Object a(ai5 ai5Var, Object obj) {
        if (obj == null) {
            return null;
        }
        HashMap map = ((i87) ai5Var.e).a;
        boolean z = this.a;
        Method method = (Method) this.b;
        return z ? method.invoke(obj, map) : method.invoke(obj, null);
    }

    public void b() {
        this.a = false;
    }

    public void c(char c) {
        lm4 lm4Var = (lm4) this.b;
        lm4Var.a(lm4Var.b, 1);
        char[] cArr = lm4Var.a;
        int i = lm4Var.b;
        lm4Var.b = i + 1;
        cArr[i] = c;
    }

    public void d(String str) {
        byte b;
        str.getClass();
        lm4 lm4Var = (lm4) this.b;
        lm4Var.a(lm4Var.b, str.length() + 2);
        char[] cArr = lm4Var.a;
        int i = lm4Var.b;
        int i2 = i + 1;
        cArr[i] = '\"';
        int length = str.length();
        str.getChars(0, length, cArr, i2);
        int i3 = length + i2;
        int i4 = i2;
        while (i4 < i3) {
            char c = cArr[i4];
            byte[] bArr = gq7.b;
            if (c < bArr.length && bArr[c] != 0) {
                int length2 = str.length();
                for (int i5 = i4 - i2; i5 < length2; i5++) {
                    lm4Var.a(i4, 2);
                    char cCharAt = str.charAt(i5);
                    byte[] bArr2 = gq7.b;
                    if (cCharAt >= bArr2.length || (b = bArr2[cCharAt]) == 0) {
                        int i6 = i4 + 1;
                        lm4Var.a[i4] = cCharAt;
                        i4 = i6;
                    } else if (b == 1) {
                        String str2 = gq7.a[cCharAt];
                        str2.getClass();
                        lm4Var.a(i4, str2.length());
                        str2.getChars(0, str2.length(), lm4Var.a, i4);
                        int length3 = str2.length() + i4;
                        lm4Var.b = length3;
                        i4 = length3;
                    } else {
                        char[] cArr2 = lm4Var.a;
                        cArr2[i4] = '\\';
                        cArr2[i4 + 1] = (char) b;
                        i4 += 2;
                        lm4Var.b = i4;
                    }
                }
                lm4Var.a(i4, 1);
                lm4Var.a[i4] = '\"';
                lm4Var.b = i4 + 1;
                return;
            }
            i4++;
        }
        cArr[i3] = '\"';
        lm4Var.b = i3 + 1;
    }

    public wo1(Method method, boolean z) {
        this.a = z;
        this.b = method;
    }

    public void e() {
    }

    public void f() {
    }
}
