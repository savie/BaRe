package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rd2 {
    public int a;
    public final Object b;

    public rd2(gy5 gy5Var) {
        this.b = new ArrayList();
        this.a = 0;
        gy5Var.getClass();
        dy5 dy5Var = new dy5(gy5Var);
        while (dy5Var.hasNext()) {
            ((ArrayList) this.b).add(((m61) dy5Var.next()).a);
        }
        this.a = Math.max(1, ((ArrayList) this.b).size());
        for (int i = 0; i < ((ArrayList) this.b).size(); i++) {
            this.a = d((CharSequence) ((ArrayList) this.b).get(i)) + this.a;
        }
        a();
    }

    public static int d(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        int i2 = 0;
        while (i < length) {
            char cCharAt = charSequence.charAt(i);
            if (cCharAt <= 127) {
                i2++;
            } else if (cCharAt <= 2047) {
                i2 += 2;
            } else if (Character.isHighSurrogate(cCharAt)) {
                i2 += 4;
                i++;
            } else {
                i2 += 3;
            }
            i++;
        }
        return i2;
    }

    public void a() {
        String string;
        ArrayList arrayList = (ArrayList) this.b;
        if (this.a > 768) {
            throw new xc2(xs1.m(new StringBuilder("Data has a key path longer than 768 bytes ("), this.a, ")."));
        }
        if (arrayList.size() > 32) {
            StringBuilder sb = new StringBuilder("Path specified exceeds the maximum depth that can be written (32) or object contains a cycle ");
            if (arrayList.size() != 0) {
                StringBuilder sb2 = new StringBuilder("in path '");
                StringBuilder sb3 = new StringBuilder();
                for (int i = 0; i < arrayList.size(); i++) {
                    if (i > 0) {
                        sb3.append("/");
                    }
                    sb3.append((String) arrayList.get(i));
                }
                sb2.append(sb3.toString());
                sb2.append("'");
                string = sb2.toString();
            } else {
                string = "";
            }
            sb.append(string);
            throw new xc2(sb.toString());
        }
    }

    public void b() {
        ArrayList arrayList = (ArrayList) this.b;
        this.a -= d((String) arrayList.remove(arrayList.size() - 1));
        if (arrayList.size() > 0) {
            this.a--;
        }
    }

    public void c(String str) {
        ArrayList arrayList = (ArrayList) this.b;
        if (arrayList.size() > 0) {
            this.a++;
        }
        arrayList.add(str);
        this.a = d(str) + this.a;
        a();
    }

    public void e(Object obj) {
        if (obj instanceof Map) {
            Map map = (Map) obj;
            for (String str : map.keySet()) {
                if (!str.startsWith(".")) {
                    c(str);
                    e(map.get(str));
                    b();
                }
            }
            return;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            for (int i = 0; i < list.size(); i++) {
                c(Integer.toString(i));
                e(list.get(i));
                b();
            }
        }
    }

    public rd2(td2 td2Var, int i) {
        this.b = td2Var;
        this.a = i;
    }
}
