package defpackage;

import android.util.Log;
import java.io.Serializable;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u50 implements wi8 {
    public int a;
    public Object b;
    public Serializable c;

    public u50(String str, String... strArr) {
        String string;
        if (strArr.length == 0) {
            string = "";
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            for (String str2 : strArr) {
                if (sb.length() > 1) {
                    sb.append(",");
                }
                sb.append(str2);
            }
            sb.append("] ");
            string = sb.toString();
        }
        this.c = string;
        this.b = str;
        int length = str.length();
        Object[] objArr = {str, 23};
        if (!(length <= 23)) {
            throw new IllegalArgumentException(String.format("tag \"%s\" is longer than the %d character maximum", objArr));
        }
        int i = 2;
        while (i <= 7 && !Log.isLoggable((String) this.b, i)) {
            i++;
        }
        this.a = i;
    }

    public void a(String str, Object... objArr) {
        if (this.a <= 3) {
            Log.d((String) this.b, e(str, objArr));
        }
    }

    public void b(Exception exc, String str, Object... objArr) {
        Log.e((String) this.b, e(str, objArr), exc);
    }

    @Override // defpackage.wi8
    public boolean c() {
        return false;
    }

    public void d(String str, Object... objArr) {
        Log.e((String) this.b, e(str, objArr));
    }

    public String e(String str, Object... objArr) {
        if (objArr.length > 0) {
            str = String.format(Locale.US, str, objArr);
        }
        return ((String) this.c).concat(str);
    }

    public void f(String str, Object... objArr) {
        if (this.a <= 2) {
            Log.v((String) this.b, e(str, objArr));
        }
    }

    public void g(String str, Object... objArr) {
        Log.w((String) this.b, e(str, objArr));
    }

    @Override // defpackage.wi8
    public int getLength() {
        return this.a;
    }

    @Override // defpackage.wi8
    public Class getType() {
        return (Class) this.c;
    }

    @Override // defpackage.wi8
    public Object getValue() {
        return this.b;
    }

    @Override // defpackage.wi8
    public void setValue(Object obj) {
        this.b = obj;
    }
}
