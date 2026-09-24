package okhttp3;

import defpackage.bo4;
import defpackage.el1;
import defpackage.iz1;
import defpackage.ov2;
import defpackage.pw5;
import defpackage.x50;
import defpackage.z40;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import okhttp3.internal._HeadersCommonKt;
import okhttp3.internal._UtilCommonKt;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Headers implements Iterable<pw5>, bo4 {
    public static final Headers b = new Headers(new String[0]);
    public final String[] a;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Builder {
        public final ArrayList a = new ArrayList(20);

        public final void a(String str, String str2) {
            str2.getClass();
            _HeadersCommonKt.b(str);
            _HeadersCommonKt.c(str2, str);
            _HeadersCommonKt.a(this, str, str2);
        }

        public final Headers b() {
            return new Headers((String[]) this.a.toArray(new String[0]));
        }

        public final void c(String str) {
            str.getClass();
            int i = 0;
            while (true) {
                ArrayList arrayList = this.a;
                if (i >= arrayList.size()) {
                    return;
                }
                if (str.equalsIgnoreCase((String) arrayList.get(i))) {
                    arrayList.remove(i);
                    arrayList.remove(i);
                    i -= 2;
                }
                i += 2;
            }
        }

        public final void d(String str, String str2) {
            str.getClass();
            str2.getClass();
            _HeadersCommonKt.b(str);
            _HeadersCommonKt.c(str2, str);
            c(str);
            _HeadersCommonKt.a(this, str, str2);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
    }

    public Headers(String[] strArr) {
        strArr.getClass();
        this.a = strArr;
    }

    public final String d(String str) {
        String[] strArr = this.a;
        strArr.getClass();
        int length = strArr.length - 2;
        int iN = iz1.n(length, 0, -2);
        if (iN > length) {
            return null;
        }
        while (!str.equalsIgnoreCase(strArr[length])) {
            if (length == iN) {
                return null;
            }
            length -= 2;
        }
        return strArr[length + 1];
    }

    public final String e(int i) {
        String str = (String) x50.q0(i * 2, this.a);
        if (str != null) {
            return str;
        }
        throw new IndexOutOfBoundsException("name[" + i + ']');
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Headers) {
            return Arrays.equals(this.a, ((Headers) obj).a);
        }
        return false;
    }

    public final Builder f() {
        Builder builder = new Builder();
        el1.L0(builder.a, this.a);
        return builder;
    }

    public final String g(int i) {
        String str = (String) x50.q0((i * 2) + 1, this.a);
        if (str != null) {
            return str;
        }
        throw new IndexOutOfBoundsException("value[" + i + ']');
    }

    public final int hashCode() {
        return Arrays.hashCode(this.a);
    }

    public final List i(String str) {
        str.getClass();
        int size = size();
        List listUnmodifiableList = null;
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            if (str.equalsIgnoreCase(e(i))) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(g(i));
            }
        }
        if (arrayList != null) {
            listUnmodifiableList = Collections.unmodifiableList(arrayList);
            listUnmodifiableList.getClass();
        }
        return listUnmodifiableList == null ? ov2.a : listUnmodifiableList;
    }

    @Override // java.lang.Iterable
    public final Iterator<pw5> iterator() {
        int size = size();
        pw5[] pw5VarArr = new pw5[size];
        for (int i = 0; i < size; i++) {
            pw5VarArr[i] = new pw5(e(i), g(i));
        }
        return new z40(pw5VarArr);
    }

    public final int size() {
        return this.a.length / 2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int size = size();
        for (int i = 0; i < size; i++) {
            String strE = e(i);
            String strG = g(i);
            sb.append(strE);
            sb.append(": ");
            if (_UtilCommonKt.k(strE)) {
                strG = "██";
            }
            sb.append(strG);
            sb.append("\n");
        }
        return sb.toString();
    }
}
