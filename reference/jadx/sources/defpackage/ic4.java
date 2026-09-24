package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.util.Arrays;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ic4 {
    public static final Pattern i = Pattern.compile("^[!\"#\\$%&'\\(\\)\\*\\+,\\-\\./:;<=>\\?@\\[\\\\\\]\\^_`\\{\\|\\}~\\p{Pc}\\p{Pd}\\p{Pe}\\p{Pf}\\p{Pi}\\p{Po}\\p{Ps}]");
    public static final Pattern j = Pattern.compile("^(?:<[A-Za-z][A-Za-z0-9-]*(?:\\s+[a-zA-Z_:][a-zA-Z0-9:._-]*(?:\\s*=\\s*(?:[^\"'=<>`\\x00-\\x20]+|'[^']*'|\"[^\"]*\"))?)*\\s*/?>|</[A-Za-z][A-Za-z0-9-]*\\s*[>]|<!---->|<!--(?:-?[^>-])(?:-?[^-])*-->|[<][?].*?[?][>]|<![A-Z]+\\s+[^>]*>|<!\\[CDATA\\[[\\s\\S]*?\\]\\]>)", 2);
    public static final Pattern k = Pattern.compile("^[!\"#$%&'()*+,./:;<=>?@\\[\\\\\\]^_`{|}~-]");
    public static final Pattern l = Pattern.compile("^&(?:#x[a-f0-9]{1,6}|#[0-9]{1,7}|[a-z][a-z0-9]{1,31});", 2);
    public static final Pattern m = Pattern.compile("`+");
    public static final Pattern n = Pattern.compile("^`+");
    public static final Pattern o = Pattern.compile("^<([a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*)>");
    public static final Pattern p = Pattern.compile("^<[a-zA-Z][a-zA-Z0-9.+-]{1,31}:[^<>\u0000- ]*>");
    public static final Pattern q = Pattern.compile("^ *(?:\n *)?");
    public static final Pattern r = Pattern.compile("^[\\p{Zs}\t\r\n\f]");
    public static final Pattern s = Pattern.compile("\\s+");
    public static final Pattern t = Pattern.compile(" *$");
    public final BitSet a;
    public final BitSet b;
    public final HashMap c;
    public final la d;
    public String e;
    public int f;
    public ai2 g;
    public tv0 h;

    public ic4(la laVar) {
        List list = (List) laVar.a;
        HashMap map = new HashMap();
        b(Arrays.asList(new l60('*'), new td8('_')), map);
        b(list, map);
        this.c = map;
        Set setKeySet = map.keySet();
        BitSet bitSet = new BitSet();
        Iterator it = setKeySet.iterator();
        while (it.hasNext()) {
            bitSet.set(((Character) it.next()).charValue());
        }
        this.b = bitSet;
        BitSet bitSet2 = new BitSet();
        bitSet2.or(bitSet);
        bitSet2.set(10);
        bitSet2.set(96);
        bitSet2.set(91);
        bitSet2.set(93);
        bitSet2.set(92);
        bitSet2.set(33);
        bitSet2.set(60);
        bitSet2.set(38);
        this.a = bitSet2;
        this.d = laVar;
    }

    public static void a(char c, bi2 bi2Var, HashMap map) {
        if (((bi2) map.put(Character.valueOf(c), bi2Var)) == null) {
            return;
        }
        throw new IllegalArgumentException("Delimiter processor conflict with delimiter char '" + c + "'");
    }

    public static void b(Iterable iterable, HashMap map) {
        vk7 vk7Var;
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            bi2 bi2Var = (bi2) it.next();
            char cE = bi2Var.e();
            char cB = bi2Var.b();
            if (cE == cB) {
                bi2 bi2Var2 = (bi2) map.get(Character.valueOf(cE));
                if (bi2Var2 == null || bi2Var2.e() != bi2Var2.b()) {
                    a(cE, bi2Var, map);
                } else {
                    if (bi2Var2 instanceof vk7) {
                        vk7Var = (vk7) bi2Var2;
                    } else {
                        vk7 vk7Var2 = new vk7(cE);
                        vk7Var2.f(bi2Var2);
                        vk7Var = vk7Var2;
                    }
                    vk7Var.f(bi2Var);
                    map.put(Character.valueOf(cE), vk7Var);
                }
            } else {
                a(cE, bi2Var, map);
                a(cB, bi2Var, map);
            }
        }
    }

    public static void d(r08 r08Var, r08 r08Var2, int i2) {
        if (r08Var == null || r08Var2 == null || r08Var == r08Var2) {
            return;
        }
        StringBuilder sb = new StringBuilder(i2);
        sb.append(r08Var.f);
        on5 on5Var = r08Var.e;
        on5 on5Var2 = r08Var2.e;
        while (on5Var != on5Var2) {
            sb.append(((r08) on5Var).f);
            on5 on5Var3 = on5Var.e;
            on5Var.f();
            on5Var = on5Var3;
        }
        r08Var.f = sb.toString();
    }

    public static void e(on5 on5Var, on5 on5Var2) {
        r08 r08Var = null;
        r08 r08Var2 = null;
        int length = 0;
        while (on5Var != null) {
            if (on5Var instanceof r08) {
                r08Var2 = (r08) on5Var;
                if (r08Var == null) {
                    r08Var = r08Var2;
                }
                length = r08Var2.f.length() + length;
            } else {
                d(r08Var, r08Var2, length);
                r08Var = null;
                r08Var2 = null;
                length = 0;
            }
            if (on5Var == on5Var2) {
                break;
            } else {
                on5Var = on5Var.e;
            }
        }
        d(r08Var, r08Var2, length);
    }

    public final String c(Pattern pattern) {
        if (this.f >= this.e.length()) {
            return null;
        }
        Matcher matcher = pattern.matcher(this.e);
        matcher.region(this.f, this.e.length());
        if (!matcher.find()) {
            return null;
        }
        this.f = matcher.end();
        return matcher.group();
    }

    /* JADX WARN: Code duplicated, block: B:111:0x01db  */
    /* JADX WARN: Code duplicated, block: B:119:0x01ef A[PHI: r6
      0x01ef: PHI (r6v28 char) = (r6v27 char), (r6v29 char), (r6v30 char) binds: [B:113:0x01e4, B:115:0x01e8, B:118:0x01ed] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:122:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:141:0x0242  */
    /* JADX WARN: Code duplicated, block: B:143:0x024c  */
    /* JADX WARN: Code duplicated, block: B:148:0x0268  */
    /* JADX WARN: Code duplicated, block: B:159:0x028a  */
    /* JADX WARN: Code duplicated, block: B:160:0x0292  */
    /* JADX WARN: Code duplicated, block: B:162:0x0296  */
    /* JADX WARN: Code duplicated, block: B:163:0x029f  */
    /* JADX WARN: Code duplicated, block: B:165:0x02a2  */
    /* JADX WARN: Code duplicated, block: B:167:0x02d2  */
    /* JADX WARN: Code duplicated, block: B:169:0x02d9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:170:0x02db  */
    /* JADX WARN: Code duplicated, block: B:171:0x02e5  */
    /* JADX WARN: Code duplicated, block: B:174:0x02ee A[LOOP:3: B:173:0x02ec->B:174:0x02ee, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:178:0x0301  */
    /* JADX WARN: Code duplicated, block: B:181:0x030f A[ADDED_TO_REGION, LOOP:4: B:181:0x030f->B:185:0x0318, LOOP_START, PHI: r2
      0x030f: PHI (r2v71 tv0) = (r2v70 tv0), (r2v72 tv0) binds: [B:180:0x030d, B:185:0x0318] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:182:0x0311  */
    /* JADX WARN: Code duplicated, block: B:184:0x0315  */
    /* JADX WARN: Code duplicated, block: B:186:0x031b  */
    /* JADX WARN: Code duplicated, block: B:204:0x03be  */
    /* JADX WARN: Code duplicated, block: B:231:0x0461  */
    /* JADX WARN: Code duplicated, block: B:233:0x0469  */
    /* JADX WARN: Code duplicated, block: B:260:0x050d  */
    /* JADX WARN: Code duplicated, block: B:265:0x052d A[LOOP:0: B:3:0x0013->B:265:0x052d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:268:0x053e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:269:0x053f  */
    /* JADX WARN: Code duplicated, block: B:271:0x0534 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:278:0x0318 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:73:0x00f1  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v26 */
    /* JADX WARN: Type inference failed for: r10v27 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r27v0, types: [on5] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v17, types: [on5, yj1] */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v27, types: [on5] */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v44, types: [r08] */
    /* JADX WARN: Type inference failed for: r4v45, types: [r08] */
    /* JADX WARN: Type inference failed for: r4v53 */
    /* JADX WARN: Type inference failed for: r4v55, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v60, types: [on5] */
    /* JADX WARN: Type inference failed for: r4v61 */
    /* JADX WARN: Type inference failed for: r4v62 */
    /* JADX WARN: Type inference failed for: r4v63 */
    /* JADX WARN: Type inference failed for: r4v64 */
    /* JADX WARN: Type inference failed for: r4v65 */
    /* JADX WARN: Type inference failed for: r4v66 */
    /* JADX WARN: Type inference failed for: r5v26, types: [hc4] */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v32 */
    /* JADX WARN: Type inference failed for: r8v17, types: [boolean] */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v26 */
    public final void f(String str, on5 on5Var) {
        int i2;
        on5 aj7Var;
        ?? r10;
        ?? r4;
        on5 r08Var;
        ?? r11;
        Object r08Var2;
        lv4 lv4Var;
        String strC;
        ?? yj1Var;
        int i3;
        String strA;
        String strA2;
        boolean z;
        on5 on5Var2;
        on5 on5Var3;
        on5 on5Var4;
        tv0 tv0Var;
        int i4;
        int i5;
        String strSubstring;
        nv4 nv4Var;
        int iQ;
        int iR;
        int i6;
        int i7;
        r08 r08Var3;
        ?? r5;
        ?? r8;
        ?? hc4Var;
        on5 on5Var5;
        on5 on5Var6;
        this.e = str.trim();
        int i8 = 0;
        this.f = 0;
        r08 r08Var4 = null;
        this.g = null;
        this.h = null;
        ?? r6 = 0;
        while (true) {
            char cG = g();
            if (cG == 0) {
                i2 = i8;
            } else {
                if (cG == '\n') {
                    this.f++;
                    if (r6 instanceof r08) {
                        r08 r08Var5 = (r08) r6;
                        if (r08Var5.f.endsWith(TokenAuthenticationScheme.SCHEME_DELIMITER)) {
                            String str2 = r08Var5.f;
                            Matcher matcher = t.matcher(str2);
                            int iEnd = matcher.find() ? matcher.end() - matcher.start() : 0;
                            i2 = 0;
                            if (iEnd > 0) {
                                r08Var5.f = xs1.g(iEnd, 0, str2);
                            }
                            aj7Var = iEnd >= 2 ? new u24() : new aj7();
                        } else {
                            i2 = 0;
                            aj7Var = new aj7();
                        }
                    } else {
                        i2 = 0;
                        aj7Var = new aj7();
                    }
                    r10 = aj7Var;
                } else if (cG == '!') {
                    int i9 = this.f + 1;
                    this.f = i9;
                    if (g() == '[') {
                        this.f++;
                        r08 r08Var6 = new r08("![");
                        tv0 tv0Var2 = this.h;
                        tv0 tv0Var3 = new tv0(r08Var6, i9, tv0Var2, this.g, true);
                        if (tv0Var2 != null) {
                            tv0Var2.g = true;
                        }
                        this.h = tv0Var3;
                        r11 = r08Var6;
                    } else {
                        r08Var = new r08("!");
                        r11 = r08Var;
                    }
                    i2 = 0;
                    r10 = r11;
                } else if (cG == '&') {
                    String strC2 = c(l);
                    if (strC2 != null) {
                        r08Var2 = new r08(g64.a(strC2));
                        r11 = r08Var2;
                    } else {
                        r11 = 0;
                    }
                    i2 = 0;
                    r10 = r11;
                } else if (cG != '<') {
                    if (cG != '`') {
                        switch (cG) {
                            case '[':
                                int i10 = this.f;
                                this.f = i10 + 1;
                                r08 r08Var7 = new r08("[");
                                tv0 tv0Var4 = this.h;
                                tv0 tv0Var5 = new tv0(r08Var7, i10, tv0Var4, this.g, false);
                                if (tv0Var4 != null) {
                                    tv0Var4.g = true;
                                }
                                this.h = tv0Var5;
                                r11 = r08Var7;
                                i2 = 0;
                                r10 = r11;
                                break;
                            case '\\':
                                this.f++;
                                if (g() == '\n') {
                                    r08Var = new u24();
                                    this.f++;
                                } else {
                                    if (this.f < this.e.length()) {
                                        String str3 = this.e;
                                        int i11 = this.f;
                                        if (k.matcher(str3.substring(i11, i11 + 1)).matches()) {
                                            String str4 = this.e;
                                            int i12 = this.f;
                                            r08 r08Var8 = new r08(str4.substring(i12, i12 + 1));
                                            this.f++;
                                            r11 = r08Var8;
                                        }
                                        i2 = 0;
                                        r10 = r11;
                                    }
                                    r08Var = new r08("\\");
                                }
                                r11 = r08Var;
                                i2 = 0;
                                r10 = r11;
                                break;
                            case ']':
                                int i13 = this.f + 1;
                                this.f = i13;
                                tv0 tv0Var6 = this.h;
                                if (tv0Var6 != null) {
                                    r08 r08Var9 = tv0Var6.a;
                                    boolean z2 = tv0Var6.c;
                                    if (!tv0Var6.f) {
                                        this.h = tv0Var6.d;
                                        yj1Var = new r08("]");
                                    } else {
                                        if (g() == '(') {
                                            this.f++;
                                            Pattern pattern = q;
                                            c(pattern);
                                            i3 = 1;
                                            int iP = ho6.P(this.f, this.e);
                                            if (iP == -1) {
                                                strA = null;
                                            } else {
                                                char cG2 = g();
                                                String str5 = this.e;
                                                int i14 = this.f;
                                                String strSubstring2 = cG2 == '<' ? str5.substring(i14 + 1, iP - 1) : str5.substring(i14, iP);
                                                this.f = iP;
                                                strA = fy2.a(strSubstring2);
                                            }
                                            if (strA != null) {
                                                c(pattern);
                                                String str6 = this.e;
                                                int i15 = this.f;
                                                if (s.matcher(str6.substring(i15 - 1, i15)).matches()) {
                                                    String str7 = this.e;
                                                    int i16 = this.f;
                                                    if (i16 >= str7.length()) {
                                                        i7 = -1;
                                                        i6 = -1;
                                                    } else {
                                                        char cCharAt = str7.charAt(i16);
                                                        char c = '\"';
                                                        if (cCharAt != '\"') {
                                                            c = '\'';
                                                            if (cCharAt == '\'') {
                                                                iR = ho6.R(str7, i16 + 1, c);
                                                                if (iR == -1 && iR < str7.length() && str7.charAt(iR) == c) {
                                                                    i6 = iR + 1;
                                                                    i7 = -1;
                                                                } else {
                                                                    i7 = -1;
                                                                    i6 = -1;
                                                                }
                                                            } else if (cCharAt != '(') {
                                                                i7 = -1;
                                                                i6 = -1;
                                                            } else {
                                                                c = ')';
                                                                iR = ho6.R(str7, i16 + 1, c);
                                                                if (iR == -1) {
                                                                    i7 = -1;
                                                                    i6 = -1;
                                                                } else {
                                                                    i6 = iR + 1;
                                                                    i7 = -1;
                                                                }
                                                            }
                                                        } else {
                                                            iR = ho6.R(str7, i16 + 1, c);
                                                            if (iR == -1) {
                                                                i7 = -1;
                                                                i6 = -1;
                                                            } else {
                                                                i6 = iR + 1;
                                                                i7 = -1;
                                                            }
                                                        }
                                                    }
                                                    if (i6 == i7) {
                                                        strA2 = null;
                                                    } else {
                                                        String strSubstring3 = this.e.substring(this.f + 1, i6 - 1);
                                                        this.f = i6;
                                                        strA2 = fy2.a(strSubstring3);
                                                    }
                                                    c(pattern);
                                                } else {
                                                    strA2 = null;
                                                }
                                                if (g() == ')') {
                                                    this.f++;
                                                    z = true;
                                                } else {
                                                    this.f = i13;
                                                }
                                                if (!z) {
                                                    i4 = this.f;
                                                    if (i4 < this.e.length() && this.e.charAt(this.f) == '[') {
                                                        int i17 = this.f + 1;
                                                        iQ = ho6.Q(i17, this.e);
                                                        int i18 = iQ - i17;
                                                        if (iQ != -1 && i18 <= 999 && iQ < this.e.length() && this.e.charAt(iQ) == ']') {
                                                            this.f = iQ + 1;
                                                        }
                                                    }
                                                    i5 = this.f - i4;
                                                    if (i5 > 2) {
                                                        strSubstring = this.e.substring(i4, i5 + i4);
                                                    } else if (tv0Var6.g) {
                                                        strSubstring = null;
                                                    } else {
                                                        strSubstring = this.e.substring(tv0Var6.b, i13);
                                                    }
                                                    if (strSubstring != null) {
                                                        Pattern pattern2 = fy2.a;
                                                        nv4Var = (nv4) ((Map) this.d.b).get(fy2.c.matcher(strSubstring.substring(i3, strSubstring.length() - 1).trim().toLowerCase(Locale.ROOT)).replaceAll(TokenAuthenticationScheme.SCHEME_DELIMITER));
                                                        if (nv4Var != null) {
                                                            strA = nv4Var.g;
                                                            strA2 = nv4Var.h;
                                                            z = true;
                                                        }
                                                    }
                                                }
                                                if (!z) {
                                                    this.f = i13;
                                                    this.h = this.h.d;
                                                    r08Var = new r08("]");
                                                    r11 = r08Var;
                                                    i2 = 0;
                                                    r10 = r11;
                                                } else {
                                                    if (z2) {
                                                        s94 s94Var = new s94();
                                                        s94Var.f = strA;
                                                        s94Var.g = strA2;
                                                        yj1Var = s94Var;
                                                    } else {
                                                        yj1Var = new lv4(strA, strA2);
                                                    }
                                                    on5Var2 = r08Var9.e;
                                                    while (on5Var2 != null) {
                                                        on5 on5Var7 = on5Var2.e;
                                                        yj1Var.b(on5Var2);
                                                        on5Var2 = on5Var7;
                                                    }
                                                    h(tv0Var6.e);
                                                    on5Var3 = yj1Var.b;
                                                    on5Var4 = yj1Var.c;
                                                    if (on5Var3 != on5Var4) {
                                                        e(on5Var3, on5Var4);
                                                    }
                                                    r08Var9.f();
                                                    tv0Var = this.h.d;
                                                    this.h = tv0Var;
                                                    if (!z2) {
                                                        while (tv0Var != null) {
                                                            if (!tv0Var.c) {
                                                                tv0Var.f = false;
                                                            }
                                                            tv0Var = tv0Var.d;
                                                        }
                                                    }
                                                }
                                            }
                                            z = false;
                                            if (!z) {
                                                i4 = this.f;
                                                if (i4 < this.e.length()) {
                                                    int i19 = this.f + 1;
                                                    iQ = ho6.Q(i19, this.e);
                                                    int i110 = iQ - i19;
                                                    if (iQ != -1) {
                                                        this.f = iQ + 1;
                                                    }
                                                }
                                                i5 = this.f - i4;
                                                if (i5 > 2) {
                                                    strSubstring = this.e.substring(i4, i5 + i4);
                                                } else if (tv0Var6.g) {
                                                    strSubstring = this.e.substring(tv0Var6.b, i13);
                                                } else {
                                                    strSubstring = null;
                                                }
                                                if (strSubstring != null) {
                                                    Pattern pattern3 = fy2.a;
                                                    nv4Var = (nv4) ((Map) this.d.b).get(fy2.c.matcher(strSubstring.substring(i3, strSubstring.length() - 1).trim().toLowerCase(Locale.ROOT)).replaceAll(TokenAuthenticationScheme.SCHEME_DELIMITER));
                                                    if (nv4Var != null) {
                                                        strA = nv4Var.g;
                                                        strA2 = nv4Var.h;
                                                        z = true;
                                                    }
                                                }
                                            }
                                            if (!z) {
                                                this.f = i13;
                                                this.h = this.h.d;
                                                r08Var = new r08("]");
                                                r11 = r08Var;
                                                i2 = 0;
                                                r10 = r11;
                                            } else {
                                                if (z2) {
                                                    s94 s94Var2 = new s94();
                                                    s94Var2.f = strA;
                                                    s94Var2.g = strA2;
                                                    yj1Var = s94Var2;
                                                } else {
                                                    yj1Var = new lv4(strA, strA2);
                                                }
                                                on5Var2 = r08Var9.e;
                                                while (on5Var2 != null) {
                                                    on5 on5Var8 = on5Var2.e;
                                                    yj1Var.b(on5Var2);
                                                    on5Var2 = on5Var8;
                                                }
                                                h(tv0Var6.e);
                                                on5Var3 = yj1Var.b;
                                                on5Var4 = yj1Var.c;
                                                if (on5Var3 != on5Var4) {
                                                    e(on5Var3, on5Var4);
                                                }
                                                r08Var9.f();
                                                tv0Var = this.h.d;
                                                this.h = tv0Var;
                                                if (!z2) {
                                                    while (tv0Var != null) {
                                                        if (!tv0Var.c) {
                                                            tv0Var.f = false;
                                                        }
                                                        tv0Var = tv0Var.d;
                                                    }
                                                }
                                            }
                                        } else {
                                            i3 = 1;
                                            strA = null;
                                        }
                                        strA2 = null;
                                        z = false;
                                        if (!z) {
                                            i4 = this.f;
                                            if (i4 < this.e.length()) {
                                                int i111 = this.f + 1;
                                                iQ = ho6.Q(i111, this.e);
                                                int i112 = iQ - i111;
                                                if (iQ != -1) {
                                                    this.f = iQ + 1;
                                                }
                                            }
                                            i5 = this.f - i4;
                                            if (i5 > 2) {
                                                strSubstring = this.e.substring(i4, i5 + i4);
                                            } else if (tv0Var6.g) {
                                                strSubstring = this.e.substring(tv0Var6.b, i13);
                                            } else {
                                                strSubstring = null;
                                            }
                                            if (strSubstring != null) {
                                                Pattern pattern4 = fy2.a;
                                                nv4Var = (nv4) ((Map) this.d.b).get(fy2.c.matcher(strSubstring.substring(i3, strSubstring.length() - 1).trim().toLowerCase(Locale.ROOT)).replaceAll(TokenAuthenticationScheme.SCHEME_DELIMITER));
                                                if (nv4Var != null) {
                                                    strA = nv4Var.g;
                                                    strA2 = nv4Var.h;
                                                    z = true;
                                                }
                                            }
                                        }
                                        if (!z) {
                                            this.f = i13;
                                            this.h = this.h.d;
                                            r08Var = new r08("]");
                                            r11 = r08Var;
                                            i2 = 0;
                                            r10 = r11;
                                        } else {
                                            if (z2) {
                                                s94 s94Var3 = new s94();
                                                s94Var3.f = strA;
                                                s94Var3.g = strA2;
                                                yj1Var = s94Var3;
                                            } else {
                                                yj1Var = new lv4(strA, strA2);
                                            }
                                            on5Var2 = r08Var9.e;
                                            while (on5Var2 != null) {
                                                on5 on5Var9 = on5Var2.e;
                                                yj1Var.b(on5Var2);
                                                on5Var2 = on5Var9;
                                            }
                                            h(tv0Var6.e);
                                            on5Var3 = yj1Var.b;
                                            on5Var4 = yj1Var.c;
                                            if (on5Var3 != on5Var4) {
                                                e(on5Var3, on5Var4);
                                            }
                                            r08Var9.f();
                                            tv0Var = this.h.d;
                                            this.h = tv0Var;
                                            if (!z2) {
                                                while (tv0Var != null) {
                                                    if (!tv0Var.c) {
                                                        tv0Var.f = false;
                                                    }
                                                    tv0Var = tv0Var.d;
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    yj1Var = new r08("]");
                                }
                                break;
                            default:
                                if (this.b.get(cG)) {
                                    bi2 bi2Var = (bi2) this.c.get(Character.valueOf(cG));
                                    int i20 = this.f;
                                    int i21 = i8;
                                    while (g() == cG) {
                                        i21++;
                                        this.f++;
                                    }
                                    if (i21 < bi2Var.c()) {
                                        this.f = i20;
                                        hc4Var = r08Var4;
                                    } else {
                                        String strSubstring4 = i20 == 0 ? "\n" : this.e.substring(i20 - 1, i20);
                                        char cG3 = g();
                                        String strValueOf = cG3 != 0 ? String.valueOf(cG3) : "\n";
                                        Pattern pattern5 = i;
                                        boolean zMatches = pattern5.matcher(strSubstring4).matches();
                                        Pattern pattern6 = r;
                                        boolean zMatches2 = pattern6.matcher(strSubstring4).matches();
                                        boolean zMatches3 = pattern5.matcher(strValueOf).matches();
                                        boolean zMatches4 = pattern6.matcher(strValueOf).matches();
                                        int i22 = (zMatches4 || !(!zMatches3 || zMatches2 || zMatches)) ? i8 : 1;
                                        int i23 = (zMatches2 || !(!zMatches || zMatches4 || zMatches3)) ? i8 : 1;
                                        if (cG == '_') {
                                            int i24 = (i22 == 0 || !(i23 == 0 || zMatches)) ? i8 : 1;
                                            if (i23 == 0 || !(i22 == 0 || zMatches3)) {
                                                r8 = i8;
                                                r5 = i24;
                                            } else {
                                                r8 = 1;
                                                r5 = i24;
                                            }
                                        } else {
                                            int i25 = (i22 == 0 || cG != bi2Var.e()) ? i8 : 1;
                                            int i26 = (i23 == 0 || cG != bi2Var.b()) ? i8 : 1;
                                            r5 = i25;
                                            r8 = i26;
                                        }
                                        this.f = i20;
                                        hc4Var = new hc4(i21, r5, r8);
                                    }
                                    if (hc4Var == 0) {
                                        r08Var3 = r08Var4;
                                    } else {
                                        int i27 = hc4Var.a;
                                        int i28 = this.f;
                                        int i29 = i28 + i27;
                                        this.f = i29;
                                        r08 r08Var10 = new r08(this.e.substring(i28, i29));
                                        boolean z3 = hc4Var.c;
                                        boolean z4 = hc4Var.b;
                                        ai2 ai2Var = this.g;
                                        ai2 ai2Var2 = new ai2(r08Var10, cG, z3, z4, ai2Var);
                                        this.g = ai2Var2;
                                        ai2Var2.g = i27;
                                        ai2Var2.h = i27;
                                        if (ai2Var != null) {
                                            ai2Var.f = ai2Var2;
                                        }
                                        r08Var3 = r08Var10;
                                    }
                                } else {
                                    int i30 = this.f;
                                    int length = this.e.length();
                                    while (true) {
                                        int i31 = this.f;
                                        if (i31 != length) {
                                            if (!this.a.get(this.e.charAt(i31))) {
                                                this.f++;
                                            }
                                        }
                                    }
                                    int i32 = this.f;
                                    if (i30 != i32) {
                                        r08Var3 = new r08(this.e.substring(i30, i32));
                                    } else {
                                        r08Var3 = r08Var4;
                                    }
                                }
                                i2 = i8;
                                r10 = r08Var3;
                                break;
                        }
                    } else {
                        String strC3 = c(n);
                        if (strC3 == null) {
                            r11 = 0;
                        } else {
                            int i33 = this.f;
                            while (true) {
                                String strC4 = c(m);
                                if (strC4 == null) {
                                    this.f = i33;
                                    r08Var2 = new r08(strC3);
                                    r11 = r08Var2;
                                } else if (strC4.equals(strC3)) {
                                    yj1Var = new yj1();
                                    String strReplace = this.e.substring(i33, this.f - strC3.length()).replace('\n', ' ');
                                    if (strReplace.length() >= 3 && strReplace.charAt(0) == ' ' && strReplace.charAt(strReplace.length() - 1) == ' ') {
                                        int length2 = strReplace.length();
                                        if (zm5.A(' ', 0, length2, strReplace) != length2) {
                                            strReplace = xs1.g(1, 1, strReplace);
                                        }
                                    }
                                    yj1Var.f = strReplace;
                                }
                            }
                        }
                        i2 = 0;
                        r10 = r11;
                    }
                    r11 = yj1Var;
                    i2 = 0;
                    r10 = r11;
                } else {
                    String strC5 = c(o);
                    if (strC5 != null) {
                        String strG = xs1.g(1, 1, strC5);
                        lv4Var = new lv4("mailto:".concat(strG), null);
                        lv4Var.b(new r08(strG));
                    } else {
                        String strC6 = c(p);
                        if (strC6 != null) {
                            String strG2 = xs1.g(1, 1, strC6);
                            lv4Var = new lv4(strG2, null);
                            lv4Var.b(new r08(strG2));
                        } else {
                            r11 = 0;
                        }
                        if (r11 == 0) {
                            strC = c(j);
                            if (strC != null) {
                                k64 k64Var = new k64();
                                k64Var.f = strC;
                                r08Var2 = k64Var;
                                r11 = r08Var2;
                            } else {
                                r11 = 0;
                            }
                        }
                        i2 = 0;
                        r10 = r11;
                    }
                    r11 = lv4Var;
                    if (r11 == 0) {
                        strC = c(j);
                        if (strC != null) {
                            k64 k64Var2 = new k64();
                            k64Var2.f = strC;
                            r08Var2 = k64Var2;
                            r11 = r08Var2;
                        } else {
                            r11 = 0;
                        }
                    }
                    i2 = 0;
                    r10 = r11;
                }
                if (r10 != 0) {
                    r4 = r10;
                } else {
                    this.f++;
                    r08Var4 = new r08(String.valueOf(cG));
                }
                if (r4 != 0) {
                    h(null);
                    on5Var5 = on5Var.b;
                    on5Var6 = on5Var.c;
                    if (on5Var5 == on5Var6) {
                        return;
                    }
                    e(on5Var5, on5Var6);
                    return;
                }
                on5Var.b(r4);
                i8 = i2;
                r08Var4 = null;
                r6 = r4;
            }
            r4 = r08Var4;
            if (r4 != 0) {
                h(null);
                on5Var5 = on5Var.b;
                on5Var6 = on5Var.c;
                if (on5Var5 == on5Var6) {
                    return;
                }
                e(on5Var5, on5Var6);
                return;
            }
            on5Var.b(r4);
            i8 = i2;
            r08Var4 = null;
            r6 = r4;
        }
    }

    public final char g() {
        if (this.f < this.e.length()) {
            return this.e.charAt(this.f);
        }
        return (char) 0;
    }

    public final void h(ai2 ai2Var) {
        boolean z;
        on5 on5Var;
        HashMap map = new HashMap();
        ai2 ai2Var2 = this.g;
        while (ai2Var2 != null) {
            ai2 ai2Var3 = ai2Var2.e;
            if (ai2Var3 == ai2Var) {
                break;
            } else {
                ai2Var2 = ai2Var3;
            }
        }
        while (ai2Var2 != null) {
            r08 r08Var = ai2Var2.a;
            char c = ai2Var2.b;
            bi2 bi2Var = (bi2) this.c.get(Character.valueOf(c));
            if (!ai2Var2.d || bi2Var == null) {
                ai2Var2 = ai2Var2.f;
            } else {
                char cE = bi2Var.e();
                ai2 ai2Var4 = ai2Var2.e;
                int iD = 0;
                boolean z2 = false;
                while (true) {
                    if (ai2Var4 == null || ai2Var4 == ai2Var || ai2Var4 == map.get(Character.valueOf(c))) {
                        z = z2;
                        z2 = false;
                        break;
                    }
                    if (ai2Var4.c && ai2Var4.b == cE) {
                        iD = bi2Var.d(ai2Var4, ai2Var2);
                        z2 = true;
                        if (iD > 0) {
                            z = true;
                            break;
                        }
                    }
                    ai2Var4 = ai2Var4.e;
                }
                if (z2) {
                    r08 r08Var2 = ai2Var4.a;
                    ai2Var4.g -= iD;
                    ai2Var2.g -= iD;
                    r08Var2.f = xs1.g(iD, 0, r08Var2.f);
                    r08Var.f = xs1.g(iD, 0, r08Var.f);
                    ai2 ai2Var5 = ai2Var2.e;
                    while (ai2Var5 != null && ai2Var5 != ai2Var4) {
                        ai2 ai2Var6 = ai2Var5.e;
                        i(ai2Var5);
                        ai2Var5 = ai2Var6;
                    }
                    if (r08Var2 != r08Var && (on5Var = r08Var2.e) != r08Var) {
                        e(on5Var, r08Var.d);
                    }
                    bi2Var.a(r08Var2, r08Var, iD);
                    if (ai2Var4.g == 0) {
                        ai2Var4.a.f();
                        i(ai2Var4);
                    }
                    if (ai2Var2.g == 0) {
                        ai2 ai2Var7 = ai2Var2.f;
                        r08Var.f();
                        i(ai2Var2);
                        ai2Var2 = ai2Var7;
                    }
                } else {
                    if (!z) {
                        map.put(Character.valueOf(c), ai2Var2.e);
                        if (!ai2Var2.c) {
                            i(ai2Var2);
                        }
                    }
                    ai2Var2 = ai2Var2.f;
                }
            }
        }
        while (true) {
            ai2 ai2Var8 = this.g;
            if (ai2Var8 == null || ai2Var8 == ai2Var) {
                return;
            } else {
                i(ai2Var8);
            }
        }
    }

    public final void i(ai2 ai2Var) {
        ai2 ai2Var2 = ai2Var.e;
        if (ai2Var2 != null) {
            ai2Var2.f = ai2Var.f;
        }
        ai2 ai2Var3 = ai2Var.f;
        if (ai2Var3 == null) {
            this.g = ai2Var2;
        } else {
            ai2Var3.e = ai2Var2;
        }
    }
}
