package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import com.nimbusds.jose.jwk.JWKParameterNames;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class vr1 {
    public static long g;
    public final /* synthetic */ int a = 1;
    public int b;
    public final Object c;
    public Object d;
    public final Object e;
    public final Object f;

    public vr1(yr1 yr1Var, f64 f64Var, String str, wz5 wz5Var, String str2, String str3) {
        long j = g;
        g = 1 + j;
        this.c = f64Var;
        this.e = wz5Var;
        this.f = new u00(4, (ub) yr1Var.f, "Connection", u48.l(j, "conn_"));
        this.b = 1;
        this.d = new nr8(yr1Var, f64Var, str, str3, this, str2);
    }

    public static /* synthetic */ void k(vr1 vr1Var, String str, int i, int i2) {
        if ((i2 & 2) != 0) {
            i = vr1Var.b;
        }
        vr1Var.j(i, str, (i2 & 4) != 0 ? "" : "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'");
        throw null;
    }

    public int a(int i, CharSequence charSequence) {
        int i2 = i + 4;
        if (i2 < charSequence.length()) {
            ((StringBuilder) this.e).append((char) (m(i + 3, charSequence) + (m(i, charSequence) << 12) + (m(i + 1, charSequence) << 8) + (m(i + 2, charSequence) << 4)));
            return i2;
        }
        this.b = i;
        if (i2 < charSequence.length()) {
            return a(this.b, charSequence);
        }
        k(this, "Unexpected EOF during unicode escape", 0, 6);
        throw null;
    }

    public boolean b() {
        int i = this.b;
        if (i == -1) {
            return false;
        }
        String str = (String) this.f;
        while (i < str.length()) {
            char cCharAt = str.charAt(i);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.b = i;
                return (cCharAt == ',' || cCharAt == ':' || cCharAt == ']' || cCharAt == '}') ? false : true;
            }
            i++;
        }
        this.b = i;
        return false;
    }

    public void c(int i) {
        String str;
        u00 u00Var = (u00) this.f;
        if (this.b != 3) {
            boolean z = false;
            if (u00Var.e()) {
                u00Var.c("closing realtime connection", null, new Object[0]);
            }
            this.b = 3;
            nr8 nr8Var = (nr8) this.d;
            if (nr8Var != null) {
                nr8Var.c();
                this.d = null;
            }
            wz5 wz5Var = (wz5) this.e;
            u00 u00Var2 = wz5Var.y;
            if (u00Var2.e()) {
                if (i == 1) {
                    str = "SERVER_RESET";
                } else {
                    if (i != 2) {
                        throw null;
                    }
                    str = "OTHER";
                }
                u00Var2.c("Got on disconnect due to ".concat(str), null, new Object[0]);
            }
            wz5Var.h = rz5.a;
            wz5Var.g = null;
            wz5Var.l.clear();
            ArrayList arrayList = new ArrayList();
            Iterator it = wz5Var.n.entrySet().iterator();
            while (it.hasNext()) {
                uz5 uz5Var = (uz5) ((Map.Entry) it.next()).getValue();
                if (uz5Var.b.containsKey("h") && uz5Var.d) {
                    arrayList.add(uz5Var);
                    it.remove();
                }
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                ((uz5) it2.next()).c.d("disconnected", null);
            }
            if (wz5Var.d.size() == 0) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                long j = wz5Var.f;
                long j2 = jCurrentTimeMillis - j;
                if (j > 0 && j2 > 30000) {
                    z = true;
                }
                if (i == 1 || z) {
                    ln6 ln6Var = wz5Var.z;
                    ln6Var.j = true;
                    ln6Var.i = 0L;
                }
                wz5Var.o();
            }
            wz5Var.f = 0L;
            wj6 wj6Var = wz5Var.a;
            wj6Var.getClass();
            wj6Var.p(vs1.d, Boolean.FALSE);
            ms8.v(wj6Var.b);
            ArrayList arrayList2 = new ArrayList();
            ns0 ns0Var = wj6Var.e;
            gy5 gy5Var = gy5.d;
            ns0Var.getClass();
            wj6Var.e = new ns0(17);
            wj6Var.j(arrayList2);
        }
    }

    public void d(int i, String str) {
        String str2 = (String) this.f;
        if (str2.length() - i < str.length()) {
            k(this, "Unexpected end of boolean literal", 0, 6);
            throw null;
        }
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (str.charAt(i2) != (str2.charAt(i + i2) | ' ')) {
                k(this, "Expected valid boolean literal prefix, but had '" + i() + '\'', 0, 6);
                throw null;
            }
        }
        this.b = str.length() + i;
    }

    public String e() {
        String string;
        StringBuilder sb = (StringBuilder) this.e;
        String str = (String) this.f;
        f('\"');
        int i = this.b;
        int iG0 = nq7.g0('\"', i, 4, str);
        if (iG0 == -1) {
            i();
            l((byte) 1, false);
            throw null;
        }
        int i2 = i;
        while (i2 < iG0) {
            if (str.charAt(i2) == '\\') {
                int iT = this.b;
                char cCharAt = str.charAt(i2);
                boolean z = false;
                while (cCharAt != '\"') {
                    if (cCharAt == '\\') {
                        sb.append((CharSequence) str, iT, i2);
                        int iT2 = t(i2 + 1);
                        if (iT2 == -1) {
                            k(this, "Expected escape sequence to continue, got EOF", 0, 6);
                            throw null;
                        }
                        int iA = iT2 + 1;
                        char cCharAt2 = str.charAt(iT2);
                        if (cCharAt2 == 'u') {
                            iA = a(iA, str);
                        } else {
                            char c = cCharAt2 < 'u' ? w41.a[cCharAt2] : (char) 0;
                            if (c == 0) {
                                k(this, "Invalid escaped char '" + cCharAt2 + '\'', 0, 6);
                                throw null;
                            }
                            sb.append(c);
                        }
                        iT = t(iA);
                        if (iT == -1) {
                            k(this, "Unexpected EOF", iT, 4);
                            throw null;
                        }
                    } else {
                        i2++;
                        if (i2 >= str.length()) {
                            sb.append((CharSequence) str, iT, i2);
                            iT = t(i2);
                            if (iT == -1) {
                                k(this, "Unexpected EOF", iT, 4);
                                throw null;
                            }
                        } else {
                            continue;
                        }
                        cCharAt = str.charAt(i2);
                    }
                    i2 = iT;
                    z = true;
                    cCharAt = str.charAt(i2);
                }
                if (z) {
                    sb.append((CharSequence) str, iT, i2);
                    String string2 = sb.toString();
                    sb.setLength(0);
                    string = string2;
                } else {
                    string = str.subSequence(iT, i2).toString();
                }
                this.b = i2 + 1;
                return string;
            }
            i2++;
        }
        this.b = iG0 + 1;
        return str.substring(i, iG0);
    }

    public void f(char c) {
        int i = this.b;
        if (i == -1) {
            w(c);
            throw null;
        }
        String str = (String) this.f;
        while (i < str.length()) {
            int i2 = i + 1;
            char cCharAt = str.charAt(i);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.b = i2;
                if (cCharAt == c) {
                    return;
                }
                w(c);
                throw null;
            }
            i = i2;
        }
        this.b = -1;
        w(c);
        throw null;
    }

    public long g() {
        boolean z;
        long j;
        double dPow;
        int iT = t(u());
        String str = (String) this.f;
        int i = 6;
        if (iT >= str.length() || iT == -1) {
            k(this, "EOF", 0, 6);
            throw null;
        }
        if (str.charAt(iT) == '\"') {
            iT++;
            if (iT == str.length()) {
                k(this, "EOF", 0, 6);
                throw null;
            }
            z = true;
        } else {
            z = false;
        }
        int i2 = iT;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        long j2 = 0;
        long j3 = 0;
        long j4 = 0;
        while (true) {
            j3 = j3;
            if (i2 == str.length()) {
                break;
            }
            char cCharAt = str.charAt(i2);
            if ((cCharAt != 'e' && cCharAt != 'E') || z3) {
                if (cCharAt == '-' && z3) {
                    if (i2 == iT) {
                        k(this, "Unexpected symbol '-' in numeric literal", 0, 6);
                        throw null;
                    }
                    i2++;
                    z2 = false;
                } else if (cCharAt != '+' || !z3) {
                    if (cCharAt != '-') {
                        if (z85.b(cCharAt) != 0) {
                            break;
                        }
                        i2++;
                        int i3 = cCharAt - '0';
                        if (i3 < 0 || i3 >= 10) {
                            k(this, "Unexpected symbol '" + cCharAt + "' in numeric literal", 0, 6);
                            throw null;
                        }
                        if (z3) {
                            j2 = (j2 * 10) + ((long) i3);
                        } else {
                            j4 = (j4 * 10) - ((long) i3);
                            if (j4 > j3) {
                                k(this, "Numeric value overflow", 0, 6);
                                throw null;
                            }
                        }
                    } else {
                        if (i2 != iT) {
                            k(this, "Unexpected symbol '-' in numeric literal", 0, 6);
                            throw null;
                        }
                        i2++;
                        i = 6;
                        z4 = true;
                    }
                } else {
                    if (i2 == iT) {
                        k(this, "Unexpected symbol '+' in numeric literal", 0, 6);
                        throw null;
                    }
                    i2++;
                    i = 6;
                    z2 = true;
                }
                i = 6;
            } else {
                if (i2 == iT) {
                    k(this, "Unexpected symbol " + cCharAt + " in numeric literal", 0, i);
                    throw null;
                }
                i2++;
                z2 = true;
                z3 = true;
            }
        }
        boolean z5 = i2 != iT;
        if (iT == i2 || (z4 && iT == i2 - 1)) {
            k(this, "Expected numeric literal", 0, 6);
            throw null;
        }
        if (z) {
            if (!z5) {
                k(this, "EOF", 0, 6);
                throw null;
            }
            if (str.charAt(i2) != '\"') {
                k(this, "Expected closing quotation mark", 0, 6);
                throw null;
            }
            i2++;
        }
        this.b = i2;
        long j5 = j4;
        if (z3) {
            double d = j5;
            if (!z2) {
                dPow = Math.pow(10.0d, -j2);
            } else {
                if (!z2) {
                    q.j();
                    return j3;
                }
                dPow = Math.pow(10.0d, j2);
            }
            double d2 = d * dPow;
            if (d2 > 9.223372036854776E18d || d2 < -9.223372036854776E18d) {
                k(this, "Numeric value overflow", 0, 6);
                throw null;
            }
            if (Math.floor(d2) != d2) {
                k(this, "Can't convert " + d2 + " to Long", 0, 6);
                throw null;
            }
            j = (long) d2;
        } else {
            j = j5;
        }
        if (z4) {
            return j;
        }
        if (j != Long.MIN_VALUE) {
            return -j;
        }
        k(this, "Numeric value overflow", 0, 6);
        throw null;
    }

    public String h() {
        String str = (String) this.d;
        if (str == null) {
            return e();
        }
        str.getClass();
        this.d = null;
        return str;
    }

    public String i() {
        String string;
        StringBuilder sb = (StringBuilder) this.e;
        String str = (String) this.f;
        String str2 = (String) this.d;
        if (str2 != null) {
            str2.getClass();
            this.d = null;
            return str2;
        }
        int iU = u();
        if (iU >= str.length() || iU == -1) {
            k(this, "EOF", iU, 4);
            throw null;
        }
        byte b = z85.b(str.charAt(iU));
        if (b == 1) {
            return h();
        }
        if (b != 0) {
            k(this, "Expected beginning of the string, but got " + str.charAt(iU), 0, 6);
            throw null;
        }
        boolean z = false;
        while (z85.b(str.charAt(iU)) == 0) {
            iU++;
            if (iU >= str.length()) {
                sb.append((CharSequence) str, this.b, iU);
                int iT = t(iU);
                if (iT == -1) {
                    this.b = iU;
                    sb.append((CharSequence) str, 0, 0);
                    String string2 = sb.toString();
                    sb.setLength(0);
                    return string2;
                }
                iU = iT;
                z = true;
            }
        }
        int i = this.b;
        if (z) {
            sb.append((CharSequence) str, i, iU);
            String string3 = sb.toString();
            sb.setLength(0);
            string = string3;
        } else {
            string = str.subSequence(i, iU).toString();
        }
        this.b = iU;
        return string;
    }

    public void j(int i, String str, String str2) {
        str2.getClass();
        String strConcat = str2.length() == 0 ? "" : "\n".concat(str2);
        StringBuilder sbN = fz5.n(str, " at path: ");
        sbN.append(((jl4) this.c).a());
        sbN.append(strConcat);
        throw bb9.d(i, (String) this.f, sbN.toString());
    }

    public void l(byte b, boolean z) {
        String str = (String) this.f;
        String strH = z85.H(b);
        int i = this.b;
        int i2 = z ? i - 1 : i;
        k(this, eq3.l("Expected ", strH, ", but had '", (i == str.length() || i2 < 0) ? "EOF" : String.valueOf(str.charAt(i2)), "' instead"), i2, 4);
        throw null;
    }

    public int m(int i, CharSequence charSequence) {
        char cCharAt = charSequence.charAt(i);
        if ('0' <= cCharAt && cCharAt < ':') {
            return cCharAt - '0';
        }
        if ('a' <= cCharAt && cCharAt < 'g') {
            return cCharAt - 'W';
        }
        if ('A' <= cCharAt && cCharAt < 'G') {
            return cCharAt - '7';
        }
        k(this, "Invalid toHexChar char '" + cCharAt + "' in unicode escape", 0, 6);
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0049  */
    public void n(String str) {
        u00 u00Var = (u00) this.f;
        if (u00Var.e()) {
            u00Var.c("Connection shutdown command received. Shutting down...", null, new Object[0]);
        }
        wz5 wz5Var = (wz5) this.e;
        u00 u00Var2 = wz5Var.y;
        if (str.equals("Invalid appcheck token")) {
            int i = wz5Var.D;
            if (i < 3) {
                wz5Var.D = i + 1;
                u00Var2.j("Detected invalid AppCheck token. Reconnecting (" + (3 - ((long) wz5Var.D)) + " attempts remaining)");
            } else {
                u00Var2.j("Firebase Database connection was forcefully killed by the server. Will not attempt reconnect. Reason: ".concat(str));
                wz5Var.c("server_kill");
            }
        } else {
            u00Var2.j("Firebase Database connection was forcefully killed by the server. Will not attempt reconnect. Reason: ".concat(str));
            wz5Var.c("server_kill");
        }
        c(2);
    }

    public void o(Map map) {
        u00 u00Var = (u00) this.f;
        if (u00Var.e()) {
            u00Var.c("Got control message: " + map.toString(), null, new Object[0]);
        }
        try {
            String str = (String) map.get(JWKParameterNames.RSA_OTHER_PRIMES__FACTOR_CRT_COEFFICIENT);
            if (str == null) {
                if (u00Var.e()) {
                    u00Var.c("Got invalid control message: " + map.toString(), null, new Object[0]);
                }
                c(2);
                return;
            }
            if (str.equals("s")) {
                n((String) map.get("d"));
                return;
            }
            if (str.equals(JWKParameterNames.RSA_OTHER_PRIMES__PRIME_FACTOR)) {
                s((String) map.get("d"));
            } else if (str.equals("h")) {
                q((Map) map.get("d"));
            } else if (u00Var.e()) {
                u00Var.c("Ignoring unknown control message: ".concat(str), null, new Object[0]);
            }
        } catch (ClassCastException e) {
            if (u00Var.e()) {
                u00Var.c("Failed to parse control message: " + e.toString(), null, new Object[0]);
            }
            c(2);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void p(Map map) {
        List listG;
        ik8 ik8VarD;
        List listG2;
        u00 u00Var = (u00) this.f;
        if (u00Var.e()) {
            u00Var.c("received data message: " + map.toString(), null, new Object[0]);
        }
        wz5 wz5Var = (wz5) this.e;
        u00 u00Var2 = wz5Var.y;
        if (map.containsKey(JWKParameterNames.RSA_OTHER_PRIMES__PRIME_FACTOR)) {
            qz5 qz5Var = (qz5) wz5Var.l.remove(Long.valueOf(((Integer) map.get(JWKParameterNames.RSA_OTHER_PRIMES__PRIME_FACTOR)).intValue()));
            if (qz5Var != null) {
                qz5Var.a((Map) map.get("b"));
                return;
            }
            return;
        }
        if (map.containsKey("error")) {
            return;
        }
        if (!map.containsKey("a")) {
            if (u00Var2.e()) {
                u00Var2.c("Ignoring unknown message: " + map, null, new Object[0]);
                return;
            }
            return;
        }
        String str = (String) map.get("a");
        Map map2 = (Map) map.get("b");
        wj6 wj6Var = wz5Var.a;
        if (u00Var2.e()) {
            u00Var2.c("handleServerMessage: " + str + TokenAuthenticationScheme.SCHEME_DELIMITER + map2, null, new Object[0]);
        }
        if (str.equals("d") || str.equals("m")) {
            boolean zEquals = str.equals("m");
            String str2 = (String) map2.get(JWKParameterNames.RSA_FIRST_PRIME_FACTOR);
            Object obj = map2.get("d");
            Object obj2 = map2.get(JWKParameterNames.RSA_OTHER_PRIMES__FACTOR_CRT_COEFFICIENT);
            Long lValueOf = obj2 instanceof Integer ? Long.valueOf(((Integer) obj2).intValue()) : obj2 instanceof Long ? (Long) obj2 : null;
            if (zEquals && (obj instanceof Map) && ((Map) obj).size() == 0) {
                if (u00Var2.e()) {
                    u00Var2.c(xs1.j("ignoring empty merge for path ", str2), null, new Object[0]);
                    return;
                }
                return;
            }
            ArrayList arrayListH0 = yc9.h0(str2);
            wj6Var.getClass();
            gy5 gy5Var = new gy5(arrayListH0);
            u00 u00Var3 = wj6Var.i;
            if (u00Var3.e()) {
                u00Var3.c("onDataUpdate: " + gy5Var, null, new Object[0]);
            }
            if (wj6Var.k.e()) {
                u00Var3.c("onDataUpdate: " + gy5Var + TokenAuthenticationScheme.SCHEME_DELIMITER + obj, null, new Object[0]);
            }
            try {
                if (lValueOf != null) {
                    hx7 hx7Var = new hx7(lValueOf.longValue());
                    if (zEquals) {
                        HashMap map3 = new HashMap();
                        for (Map.Entry entry : ((Map) obj).entrySet()) {
                            map3.put(new gy5((String) entry.getKey()), xh8.a(entry.getValue(), qv2.e));
                        }
                        bv7 bv7Var = wj6Var.n;
                        listG = (List) bv7Var.g.a(new nu7(bv7Var, hx7Var, gy5Var, map3, 0));
                    } else {
                        qn5 qn5VarA = xh8.a(obj, qv2.e);
                        bv7 bv7Var2 = wj6Var.n;
                        listG = (List) bv7Var2.g.a(new nu7(bv7Var2, hx7Var, gy5Var, qn5VarA, 1));
                    }
                } else if (zEquals) {
                    HashMap map4 = new HashMap();
                    for (Map.Entry entry2 : ((Map) obj).entrySet()) {
                        map4.put(new gy5((String) entry2.getKey()), xh8.a(entry2.getValue(), qv2.e));
                    }
                    bv7 bv7Var3 = wj6Var.n;
                    listG = (List) bv7Var3.g.a(new wu7(bv7Var3, map4, gy5Var));
                } else {
                    listG = wj6Var.n.g(gy5Var, xh8.a(obj, qv2.e));
                }
                if (listG.size() > 0) {
                    wj6Var.m(gy5Var);
                }
                wj6Var.j(listG);
                return;
            } catch (xc2 e) {
                u00Var3.d("FIREBASE INTERNAL ERROR", e);
                return;
            }
        }
        if (!str.equals("rm")) {
            if (str.equals("c")) {
                ArrayList arrayListH1 = yc9.h0((String) map2.get(JWKParameterNames.RSA_FIRST_PRIME_FACTOR));
                HashMap map5 = wz5Var.p;
                if (u00Var2.e()) {
                    u00Var2.c("removing all listens at path " + arrayListH1, null, new Object[0]);
                }
                ArrayList arrayList = new ArrayList();
                for (Map.Entry entry3 : map5.entrySet()) {
                    vz5 vz5Var = (vz5) entry3.getKey();
                    tz5 tz5Var = (tz5) entry3.getValue();
                    if (vz5Var.a.equals(arrayListH1)) {
                        arrayList.add(tz5Var);
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    map5.remove(((tz5) it.next()).b);
                }
                wz5Var.b();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    ((tz5) it2.next()).a.d("permission_denied", null);
                }
                return;
            }
            if (str.equals("ac")) {
                u00Var2.c(eq3.l("Auth token revoked: ", (String) map2.get("s"), " (", (String) map2.get("d"), ")"), null, new Object[0]);
                wz5Var.q = null;
                wz5Var.r = true;
                wj6Var.getClass();
                wj6Var.p(vs1.c, Boolean.FALSE);
                wz5Var.g.c(2);
                return;
            }
            if (str.equals("apc")) {
                u00Var2.c(eq3.l("App check token revoked: ", (String) map2.get("s"), " (", (String) map2.get("d"), ")"), null, new Object[0]);
                wz5Var.s = null;
                wz5Var.t = true;
                return;
            } else if (!str.equals("sd")) {
                if (u00Var2.e()) {
                    u00Var2.c("Unrecognized action from server: ".concat(str), null, new Object[0]);
                    return;
                }
                return;
            } else {
                String str3 = (String) map2.get("msg");
                ub ubVar = (ub) u00Var2.b;
                String str4 = (String) u00Var2.c;
                String strI = u00Var2.i(str3, new Object[0]);
                System.currentTimeMillis();
                ubVar.b(2, str4, strI);
                return;
            }
        }
        String str5 = (String) map2.get(JWKParameterNames.RSA_FIRST_PRIME_FACTOR);
        ArrayList arrayListH2 = yc9.h0(str5);
        Object obj3 = map2.get("d");
        Object obj4 = map2.get(JWKParameterNames.RSA_OTHER_PRIMES__FACTOR_CRT_COEFFICIENT);
        Long lValueOf2 = obj4 instanceof Integer ? Long.valueOf(((Integer) obj4).intValue()) : obj4 instanceof Long ? (Long) obj4 : null;
        ArrayList arrayList2 = new ArrayList();
        for (Map map6 : (List) obj3) {
            String str6 = (String) map6.get("s");
            String str7 = (String) map6.get(JWKParameterNames.RSA_EXPONENT);
            arrayList2.add(new ff6(str6 != null ? yc9.h0(str6) : null, str7 != null ? yc9.h0(str7) : null, map6.get("m")));
        }
        if (arrayList2.isEmpty()) {
            if (u00Var2.e()) {
                u00Var2.c("Ignoring empty range merge for path ".concat(str5), null, new Object[0]);
                return;
            }
            return;
        }
        wj6Var.getClass();
        gy5 gy5Var2 = new gy5(arrayListH2);
        u00 u00Var4 = wj6Var.i;
        if (u00Var4.e()) {
            u00Var4.c("onRangeMergeUpdate: " + gy5Var2, null, new Object[0]);
        }
        if (wj6Var.k.e()) {
            u00Var4.c("onRangeMergeUpdate: " + gy5Var2 + TokenAuthenticationScheme.SCHEME_DELIMITER + arrayList2, null, new Object[0]);
        }
        ArrayList<ef6> arrayList3 = new ArrayList(arrayList2.size());
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            arrayList3.add(new ef6((ff6) it3.next()));
        }
        bv7 bv7Var4 = wj6Var.n;
        if (lValueOf2 != null) {
            hx7 hx7Var2 = new hx7(lValueOf2.longValue());
            qc6 qc6Var = (qc6) bv7Var4.c.get(hx7Var2);
            if (qc6Var != null) {
                gy5 gy5Var3 = qc6Var.a;
                zm5.s(gy5Var2.equals(gy5Var3));
                lu7 lu7Var = (lu7) bv7Var4.a.e(gy5Var3);
                zm5.r("Missing sync point for query tag that we're tracking", lu7Var != null);
                ik8 ik8VarH = lu7Var.h(qc6Var);
                zm5.r("Missing view for query tag that we're tracking", ik8VarH != null);
                qn5 qn5VarA2 = ((gz0) ik8VarH.c.c).a.a;
                for (ef6 ef6Var : arrayList3) {
                    ef6Var.getClass();
                    qn5VarA2 = ef6Var.a(gy5.d, qn5VarA2, ef6Var.c);
                }
                listG2 = (List) bv7Var4.g.a(new nu7(bv7Var4, hx7Var2, gy5Var2, qn5VarA2, 1));
            } else {
                listG2 = Collections.EMPTY_LIST;
            }
        } else {
            lu7 lu7Var2 = (lu7) bv7Var4.a.e(gy5Var2);
            if (lu7Var2 == null || (ik8VarD = lu7Var2.d()) == null) {
                listG2 = Collections.EMPTY_LIST;
            } else {
                qn5 qn5VarA3 = ((gz0) ik8VarD.c.c).a.a;
                for (ef6 ef6Var2 : arrayList3) {
                    ef6Var2.getClass();
                    qn5VarA3 = ef6Var2.a(gy5.d, qn5VarA3, ef6Var2.c);
                }
                listG2 = bv7Var4.g(gy5Var2, qn5VarA3);
            }
        }
        if (listG2.size() > 0) {
            wj6Var.m(gy5Var2);
        }
        wj6Var.j(listG2);
    }

    public void q(Map map) {
        long jLongValue = ((Long) map.get("ts")).longValue();
        String str = (String) map.get("h");
        wz5 wz5Var = (wz5) this.e;
        wz5Var.c = str;
        String str2 = (String) map.get("s");
        if (this.b == 1) {
            ((nr8) this.d).getClass();
            u00 u00Var = (u00) this.f;
            if (u00Var.e()) {
                u00Var.c("realtime connection established", null, new Object[0]);
            }
            this.b = 2;
            wj6 wj6Var = wz5Var.a;
            u00 u00Var2 = wz5Var.y;
            if (u00Var2.e()) {
                u00Var2.c("onReady", null, new Object[0]);
            }
            wz5Var.f = System.currentTimeMillis();
            if (u00Var2.e()) {
                u00Var2.c("handling timestamp", null, new Object[0]);
            }
            long jCurrentTimeMillis = jLongValue - System.currentTimeMillis();
            HashMap map2 = new HashMap();
            map2.put("serverTimeOffset", Long.valueOf(jCurrentTimeMillis));
            wj6Var.getClass();
            for (Map.Entry entry : map2.entrySet()) {
                wj6Var.p(m61.b((String) entry.getKey()), entry.getValue());
            }
            if (wz5Var.e) {
                HashMap map3 = new HashMap();
                wz5Var.u.getClass();
                map3.put("sdk.android." + "22.0.1".replace('.', '-'), 1);
                if (u00Var2.e()) {
                    u00Var2.c("Sending first connection stats", null, new Object[0]);
                }
                if (!map3.isEmpty()) {
                    HashMap map4 = new HashMap();
                    map4.put("c", map3);
                    wz5Var.n("s", false, map4, new pz5(wz5Var));
                } else if (u00Var2.e()) {
                    u00Var2.c("Not sending stats because stats are empty", null, new Object[0]);
                }
            }
            if (u00Var2.e()) {
                u00Var2.c("calling restore tokens", null, new Object[0]);
            }
            rz5 rz5Var = wz5Var.h;
            yc9.D(rz5Var == rz5.c, "Wanted to restore tokens, but was in wrong state: %s", rz5Var);
            if (wz5Var.q != null) {
                if (u00Var2.e()) {
                    u00Var2.c("Restoring auth.", null, new Object[0]);
                }
                wz5Var.h = rz5.d;
                wz5Var.j(true);
            } else {
                if (u00Var2.e()) {
                    u00Var2.c("Not restoring auth because auth token is null.", null, new Object[0]);
                }
                wz5Var.h = rz5.e;
                wz5Var.i(true);
            }
            wz5Var.e = false;
            wz5Var.A = str2;
            wj6Var.p(vs1.d, Boolean.TRUE);
        }
    }

    public void r(HashMap map) {
        u00 u00Var = (u00) this.f;
        try {
            String str = (String) map.get(JWKParameterNames.RSA_OTHER_PRIMES__FACTOR_CRT_COEFFICIENT);
            if (str == null) {
                if (u00Var.e()) {
                    u00Var.c("Failed to parse server message: missing message type:" + map.toString(), null, new Object[0]);
                }
                c(2);
                return;
            }
            if (str.equals("d")) {
                p((Map) map.get("d"));
            } else if (str.equals("c")) {
                o((Map) map.get("d"));
            } else if (u00Var.e()) {
                u00Var.c("Ignoring unknown server message type: ".concat(str), null, new Object[0]);
            }
        } catch (ClassCastException e) {
            if (u00Var.e()) {
                u00Var.c("Failed to parse server message: " + e.toString(), null, new Object[0]);
            }
            c(2);
        }
    }

    public void s(String str) {
        u00 u00Var = (u00) this.f;
        if (u00Var.e()) {
            u00Var.c(eq3.n(new StringBuilder("Got a reset; killing connection to "), ((f64) this.c).a, "; Updating internalHost to ", str), null, new Object[0]);
        }
        ((wz5) this.e).c = str;
        c(1);
    }

    public int t(int i) {
        if (i < ((String) this.f).length()) {
            return i;
        }
        return -1;
    }

    public String toString() {
        switch (this.a) {
            case 1:
                StringBuilder sb = new StringBuilder("JsonReader(source='");
                sb.append(this.f);
                sb.append("', currentPosition=");
                return eq3.m(sb, this.b, ')');
            default:
                return super.toString();
        }
    }

    public int u() {
        char cCharAt;
        int i = this.b;
        if (i == -1) {
            return i;
        }
        String str = (String) this.f;
        while (i < str.length() && ((cCharAt = str.charAt(i)) == ' ' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == '\t')) {
            i++;
        }
        this.b = i;
        return i;
    }

    public boolean v() {
        int iU = u();
        String str = (String) this.f;
        if (iU >= str.length() || iU == -1 || str.charAt(iU) != ',') {
            return false;
        }
        this.b++;
        return true;
    }

    public void w(char c) {
        int i = this.b;
        if (i > 0 && c == '\"') {
            try {
                this.b = i - 1;
                String strI = i();
                this.b = i;
                if (pe4.d(strI, "null")) {
                    j(this.b - 1, "Expected string literal but 'null' literal was found", "Use 'coerceInputValues = true' in 'Json {}' builder to coerce nulls if property has a default value.");
                    throw null;
                }
            } catch (Throwable th) {
                this.b = i;
                throw th;
            }
        }
        l(z85.b(c), true);
        throw null;
    }

    public vr1(String str) {
        str.getClass();
        int i = 0;
        jl4 jl4Var = new jl4(i);
        jl4Var.b = new Object[8];
        int[] iArr = new int[8];
        while (i < 8) {
            iArr[i] = -1;
            i++;
        }
        jl4Var.d = iArr;
        jl4Var.c = -1;
        this.c = jl4Var;
        this.e = new StringBuilder();
        this.f = str;
    }
}
