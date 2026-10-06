package defpackage;

import android.util.Base64;
import android.util.JsonReader;
import java.io.IOException;
import java.io.StringReader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f02 {
    public static final om5 a;

    static {
        kj4 kj4Var = new kj4();
        ca0 ca0Var = ca0.a;
        kj4Var.a(c02.class, ca0Var);
        kj4Var.a(xb0.class, ca0Var);
        ia0 ia0Var = ia0.a;
        kj4Var.a(b02.class, ia0Var);
        kj4Var.a(gc0.class, ia0Var);
        fa0 fa0Var = fa0.a;
        kj4Var.a(jz1.class, fa0Var);
        kj4Var.a(hc0.class, fa0Var);
        ga0 ga0Var = ga0.a;
        kj4Var.a(iz1.class, ga0Var);
        kj4Var.a(ic0.class, ga0Var);
        ya0 ya0Var = ya0.a;
        kj4Var.a(a02.class, ya0Var);
        kj4Var.a(gd0.class, ya0Var);
        xa0 xa0Var = xa0.a;
        kj4Var.a(zz1.class, xa0Var);
        kj4Var.a(fd0.class, xa0Var);
        ha0 ha0Var = ha0.a;
        kj4Var.a(kz1.class, ha0Var);
        kj4Var.a(kc0.class, ha0Var);
        sa0 sa0Var = sa0.a;
        kj4Var.a(yz1.class, sa0Var);
        kj4Var.a(mc0.class, sa0Var);
        ja0 ja0Var = ja0.a;
        kj4Var.a(sz1.class, ja0Var);
        kj4Var.a(nc0.class, ja0Var);
        la0 la0Var = la0.a;
        kj4Var.a(qz1.class, la0Var);
        kj4Var.a(oc0.class, la0Var);
        oa0 oa0Var = oa0.a;
        kj4Var.a(pz1.class, oa0Var);
        kj4Var.a(sc0.class, oa0Var);
        pa0 pa0Var = pa0.a;
        kj4Var.a(oz1.class, pa0Var);
        kj4Var.a(uc0.class, pa0Var);
        ma0 ma0Var = ma0.a;
        kj4Var.a(mz1.class, ma0Var);
        kj4Var.a(qc0.class, ma0Var);
        aa0 aa0Var = aa0.a;
        kj4Var.a(ez1.class, aa0Var);
        kj4Var.a(ac0.class, aa0Var);
        z90 z90Var = z90.a;
        kj4Var.a(dz1.class, z90Var);
        kj4Var.a(bc0.class, z90Var);
        na0 na0Var = na0.a;
        kj4Var.a(nz1.class, na0Var);
        kj4Var.a(rc0.class, na0Var);
        ka0 ka0Var = ka0.a;
        kj4Var.a(lz1.class, ka0Var);
        kj4Var.a(pc0.class, ka0Var);
        ba0 ba0Var = ba0.a;
        kj4Var.a(fz1.class, ba0Var);
        kj4Var.a(cc0.class, ba0Var);
        qa0 qa0Var = qa0.a;
        kj4Var.a(rz1.class, qa0Var);
        kj4Var.a(wc0.class, qa0Var);
        ra0 ra0Var = ra0.a;
        kj4Var.a(tz1.class, ra0Var);
        kj4Var.a(yc0.class, ra0Var);
        ta0 ta0Var = ta0.a;
        kj4Var.a(uz1.class, ta0Var);
        kj4Var.a(zc0.class, ta0Var);
        wa0 wa0Var = wa0.a;
        kj4Var.a(xz1.class, wa0Var);
        kj4Var.a(dd0.class, wa0Var);
        ua0 ua0Var = ua0.a;
        kj4Var.a(wz1.class, ua0Var);
        kj4Var.a(bd0.class, ua0Var);
        va0 va0Var = va0.a;
        kj4Var.a(vz1.class, va0Var);
        kj4Var.a(cd0.class, va0Var);
        da0 da0Var = da0.a;
        kj4Var.a(hz1.class, da0Var);
        kj4Var.a(dc0.class, da0Var);
        ea0 ea0Var = ea0.a;
        kj4Var.a(gz1.class, ea0Var);
        kj4Var.a(ec0.class, ea0Var);
        kj4Var.d = true;
        a = new om5(kj4Var);
    }

    public static uc0 a(JsonReader jsonReader) throws IOException {
        tc0 tc0Var = new tc0();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "offset":
                    tc0Var.d = jsonReader.nextLong();
                    tc0Var.f = (byte) (tc0Var.f | 2);
                    break;
                case "symbol":
                    String strNextString = jsonReader.nextString();
                    if (strNextString == null) {
                        f6.n("Null symbol");
                        return null;
                    }
                    tc0Var.b = strNextString;
                    break;
                    break;
                case "pc":
                    tc0Var.a = jsonReader.nextLong();
                    tc0Var.f = (byte) (tc0Var.f | 1);
                    break;
                case "file":
                    tc0Var.c = jsonReader.nextString();
                    break;
                case "importance":
                    tc0Var.e = jsonReader.nextInt();
                    tc0Var.f = (byte) (tc0Var.f | 4);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return tc0Var.a();
    }

    public static cc0 b(JsonReader jsonReader) throws IOException {
        jsonReader.beginObject();
        String strNextString = null;
        String strNextString2 = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            if (strNextName.equals("key")) {
                strNextString = jsonReader.nextString();
                if (strNextString == null) {
                    f6.n("Null key");
                    return null;
                }
            } else if (strNextName.equals("value")) {
                strNextString2 = jsonReader.nextString();
                if (strNextString2 == null) {
                    f6.n("Null value");
                    return null;
                }
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        if (strNextString != null && strNextString2 != null) {
            return new cc0(strNextString, strNextString2);
        }
        StringBuilder sb = new StringBuilder();
        if (strNextString == null) {
            sb.append(" key");
        }
        if (strNextString2 == null) {
            sb.append(" value");
        }
        l0.e(xs1.k("Missing required properties:", sb));
        return null;
    }

    public static ac0 c(JsonReader jsonReader) throws IOException {
        zb0 zb0Var = new zb0();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "buildIdMappingForArch":
                    zb0Var.i = d(jsonReader, new d6());
                    break;
                case "pid":
                    zb0Var.a = jsonReader.nextInt();
                    zb0Var.j = (byte) (zb0Var.j | 1);
                    break;
                case "pss":
                    zb0Var.e = jsonReader.nextLong();
                    zb0Var.j = (byte) (zb0Var.j | 8);
                    break;
                case "rss":
                    zb0Var.f = jsonReader.nextLong();
                    zb0Var.j = (byte) (zb0Var.j | 16);
                    break;
                case "timestamp":
                    zb0Var.g = jsonReader.nextLong();
                    zb0Var.j = (byte) (zb0Var.j | 32);
                    break;
                case "processName":
                    String strNextString = jsonReader.nextString();
                    if (strNextString == null) {
                        f6.n("Null processName");
                        return null;
                    }
                    zb0Var.b = strNextString;
                    break;
                    break;
                case "reasonCode":
                    zb0Var.c = jsonReader.nextInt();
                    zb0Var.j = (byte) (zb0Var.j | 2);
                    break;
                case "traceFile":
                    zb0Var.h = jsonReader.nextString();
                    break;
                case "importance":
                    zb0Var.d = jsonReader.nextInt();
                    zb0Var.j = (byte) (zb0Var.j | 4);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return zb0Var.a();
    }

    public static List d(JsonReader jsonReader, e02 e02Var) {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(e02Var.b(jsonReader));
        }
        jsonReader.endArray();
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:111:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:146:0x0225  */
    /* JADX WARN: Code duplicated, block: B:242:0x03b8  */
    /* JADX WARN: Code duplicated, block: B:62:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:7:0x001f  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r22v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r22v3 */
    /* JADX WARN: Type inference failed for: r23v0 */
    /* JADX WARN: Type inference failed for: r23v1, types: [qc0] */
    /* JADX WARN: Type inference failed for: r23v3 */
    /* JADX WARN: Type inference failed for: r23v4 */
    /* JADX WARN: Type inference failed for: r23v5 */
    /* JADX WARN: Type inference failed for: r23v6 */
    /* JADX WARN: Type inference failed for: r23v7 */
    /* JADX WARN: Type inference failed for: r24v0 */
    /* JADX WARN: Type inference failed for: r24v1, types: [ez1] */
    /* JADX WARN: Type inference failed for: r24v2, types: [ac0] */
    /* JADX WARN: Type inference failed for: r24v3 */
    /* JADX WARN: Type inference failed for: r25v0 */
    /* JADX WARN: Type inference failed for: r25v1, types: [rc0] */
    /* JADX WARN: Type inference failed for: r25v2 */
    /* JADX WARN: Type inference failed for: r25v3 */
    /* JADX WARN: Type inference failed for: r26v0 */
    /* JADX WARN: Type inference failed for: r26v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r26v3 */
    /* JADX WARN: Type inference failed for: r26v4 */
    /* JADX WARN: Type inference failed for: r26v5 */
    /* JADX WARN: Type inference failed for: r26v6 */
    /* JADX WARN: Type inference failed for: r26v7 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v3 */
    public static mc0 e(JsonReader jsonReader) throws IOException {
        byte b;
        lc0 lc0Var = new lc0();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "device":
                    b = 0;
                    break;
                case "rollouts":
                    b = 1;
                    break;
                case "app":
                    b = 2;
                    break;
                case "log":
                    b = 3;
                    break;
                case "type":
                    b = 4;
                    break;
                case "timestamp":
                    b = 5;
                    break;
                default:
                    b = -1;
                    break;
            }
            mc0 mc0Var = null;
            switch (b) {
                case 0:
                    xc0 xc0Var = new xc0();
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String strNextName2 = jsonReader.nextName();
                        strNextName2.getClass();
                        switch (strNextName2) {
                            case "batteryLevel":
                                xc0Var.a = Double.valueOf(jsonReader.nextDouble());
                                break;
                            case "batteryVelocity":
                                xc0Var.b = jsonReader.nextInt();
                                xc0Var.g = (byte) (xc0Var.g | 1);
                                break;
                            case "orientation":
                                xc0Var.d = jsonReader.nextInt();
                                xc0Var.g = (byte) (xc0Var.g | 4);
                                break;
                            case "diskUsed":
                                xc0Var.f = jsonReader.nextLong();
                                xc0Var.g = (byte) (xc0Var.g | 16);
                                break;
                            case "ramUsed":
                                xc0Var.e = jsonReader.nextLong();
                                xc0Var.g = (byte) (xc0Var.g | 8);
                                break;
                            case "proximityOn":
                                xc0Var.c = jsonReader.nextBoolean();
                                xc0Var.g = (byte) (xc0Var.g | 2);
                                break;
                            default:
                                jsonReader.skipValue();
                                break;
                        }
                    }
                    jsonReader.endObject();
                    lc0Var.d = xc0Var.a();
                    break;
                case 1:
                    jsonReader.beginObject();
                    List listD = null;
                    while (jsonReader.hasNext()) {
                        String strNextName3 = jsonReader.nextName();
                        strNextName3.getClass();
                        if (strNextName3.equals("assignments")) {
                            listD = d(jsonReader, new f6(7));
                            if (listD == null) {
                                f6.n("Null rolloutAssignments");
                                return null;
                            }
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    if (listD == null) {
                        l0.e("Missing required properties: rolloutAssignments");
                        return null;
                    }
                    lc0Var.f = new dd0(listD);
                    break;
                    break;
                case 2:
                    jsonReader.beginObject();
                    oc0 oc0Var = null;
                    List listUnmodifiableList = null;
                    List listUnmodifiableList2 = null;
                    Boolean boolValueOf = null;
                    wc0 wc0VarG = null;
                    List listUnmodifiableList3 = null;
                    boolean z = false;
                    int iNextInt = 0;
                    while (true) {
                        mc0 mc0Var2 = mc0Var;
                        if (!jsonReader.hasNext()) {
                            jsonReader.endObject();
                            if (z && oc0Var != null) {
                                lc0Var.c = new nc0(oc0Var, listUnmodifiableList, listUnmodifiableList2, boolValueOf, wc0VarG, listUnmodifiableList3, iNextInt);
                                break;
                            }
                            StringBuilder sb = new StringBuilder();
                            if (oc0Var == null) {
                                sb.append(" execution");
                            }
                            if (!z) {
                                sb.append(" uiOrientation");
                            }
                            l0.e(xs1.k("Missing required properties:", sb));
                            return mc0Var2;
                        }
                        String strNextName4 = jsonReader.nextName();
                        strNextName4.getClass();
                        int i = 6;
                        switch (strNextName4) {
                            case "appProcessDetails":
                                ArrayList arrayList = new ArrayList();
                                jsonReader.beginArray();
                                while (jsonReader.hasNext()) {
                                    arrayList.add(g(jsonReader));
                                }
                                jsonReader.endArray();
                                listUnmodifiableList3 = Collections.unmodifiableList(arrayList);
                                mc0Var = mc0Var2;
                                break;
                            case "background":
                                boolValueOf = Boolean.valueOf(jsonReader.nextBoolean());
                                mc0Var = mc0Var2;
                                break;
                            case "execution":
                                jsonReader.beginObject();
                                ?? D = mc0Var2;
                                ?? F = D;
                                ?? C = F;
                                ?? rc0Var = C;
                                ?? r26 = rc0Var;
                                while (jsonReader.hasNext()) {
                                    String strNextName5 = jsonReader.nextName();
                                    strNextName5.getClass();
                                    switch (strNextName5) {
                                        case "appExitInfo":
                                            C = c(jsonReader);
                                            break;
                                        case "threads":
                                            D = d(jsonReader, new l0(i));
                                            break;
                                        case "signal":
                                            jsonReader.beginObject();
                                            long jNextLong = 0;
                                            ?? NextString = mc0Var2;
                                            ?? NextString2 = NextString;
                                            byte b2 = 0;
                                            while (jsonReader.hasNext()) {
                                                String strNextName6 = jsonReader.nextName();
                                                strNextName6.getClass();
                                                switch (strNextName6) {
                                                    case "address":
                                                        b2 = (byte) (b2 | 1);
                                                        jNextLong = jsonReader.nextLong();
                                                        break;
                                                    case "code":
                                                        NextString2 = jsonReader.nextString();
                                                        if (NextString2 == 0) {
                                                            f6.n("Null code");
                                                            return mc0Var2;
                                                        }
                                                        break;
                                                        break;
                                                    case "name":
                                                        NextString = jsonReader.nextString();
                                                        if (NextString == 0) {
                                                            f6.n("Null name");
                                                            return mc0Var2;
                                                        }
                                                        break;
                                                        break;
                                                    default:
                                                        jsonReader.skipValue();
                                                        break;
                                                }
                                            }
                                            jsonReader.endObject();
                                            if (b2 == 1 && NextString != 0 && NextString2 != 0) {
                                                rc0Var = new rc0(NextString, NextString2, jNextLong);
                                                break;
                                            } else {
                                                StringBuilder sb2 = new StringBuilder();
                                                if (NextString == 0) {
                                                    sb2.append(" name");
                                                }
                                                if (NextString2 == 0) {
                                                    sb2.append(" code");
                                                }
                                                if ((b2 & 1) == 0) {
                                                    sb2.append(" address");
                                                }
                                                l0.e(xs1.k("Missing required properties:", sb2));
                                                return mc0Var2;
                                            }
                                            break;
                                        case "binaries":
                                            List listD2 = d(jsonReader, new m0());
                                            F = F;
                                            r26 = listD2;
                                            if (listD2 == null) {
                                                f6.n("Null binaries");
                                                return mc0Var2;
                                            }
                                            break;
                                        case "exception":
                                            F = f(jsonReader);
                                            r26 = r26;
                                            break;
                                        default:
                                            jsonReader.skipValue();
                                            F = F;
                                            r26 = r26;
                                            break;
                                    }
                                }
                                jsonReader.endObject();
                                if (rc0Var != 0 && r26 != 0) {
                                    oc0Var = new oc0(D, F, C, rc0Var, r26);
                                    mc0Var = mc0Var2;
                                    break;
                                } else {
                                    StringBuilder sb3 = new StringBuilder();
                                    if (rc0Var == 0) {
                                        sb3.append(" signal");
                                    }
                                    if (r26 == 0) {
                                        sb3.append(" binaries");
                                    }
                                    l0.e(xs1.k("Missing required properties:", sb3));
                                    return mc0Var2;
                                }
                                break;
                            case "internalKeys":
                                ArrayList arrayList2 = new ArrayList();
                                jsonReader.beginArray();
                                while (jsonReader.hasNext()) {
                                    arrayList2.add(b(jsonReader));
                                }
                                jsonReader.endArray();
                                listUnmodifiableList2 = Collections.unmodifiableList(arrayList2);
                                mc0Var = mc0Var2;
                                break;
                            case "customAttributes":
                                ArrayList arrayList3 = new ArrayList();
                                jsonReader.beginArray();
                                while (jsonReader.hasNext()) {
                                    arrayList3.add(b(jsonReader));
                                }
                                jsonReader.endArray();
                                listUnmodifiableList = Collections.unmodifiableList(arrayList3);
                                mc0Var = mc0Var2;
                                break;
                            case "uiOrientation":
                                iNextInt = jsonReader.nextInt();
                                z = true;
                                mc0Var = mc0Var2;
                                break;
                            case "currentProcessDetails":
                                wc0VarG = g(jsonReader);
                                mc0Var = mc0Var2;
                                break;
                            default:
                                jsonReader.skipValue();
                                mc0Var = mc0Var2;
                                break;
                        }
                    }
                    break;
                case 3:
                    jsonReader.beginObject();
                    String strNextString = null;
                    while (jsonReader.hasNext()) {
                        if (jsonReader.nextName().equals("content")) {
                            strNextString = jsonReader.nextString();
                            if (strNextString == null) {
                                f6.n("Null content");
                                return null;
                            }
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    if (strNextString == null) {
                        l0.e("Missing required properties: content");
                        return null;
                    }
                    lc0Var.e = new zc0(strNextString);
                    break;
                    break;
                case 4:
                    String strNextString2 = jsonReader.nextString();
                    if (strNextString2 == null) {
                        f6.n("Null type");
                        return null;
                    }
                    lc0Var.b = strNextString2;
                    break;
                    break;
                case 5:
                    lc0Var.a = jsonReader.nextLong();
                    lc0Var.g = (byte) (lc0Var.g | 1);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return lc0Var.a();
    }

    public static qc0 f(JsonReader jsonReader) throws IOException {
        jsonReader.beginObject();
        byte b = 0;
        int iNextInt = 0;
        String strNextString = null;
        String strNextString2 = null;
        List listD = null;
        qc0 qc0VarF = null;
        while (true) {
            if (!jsonReader.hasNext()) {
                jsonReader.endObject();
                if (b == 1 && strNextString != null && listD != null) {
                    return new qc0(strNextString, strNextString2, listD, qc0VarF, iNextInt);
                }
                StringBuilder sb = new StringBuilder();
                if (strNextString == null) {
                    sb.append(" type");
                }
                if (listD == null) {
                    sb.append(" frames");
                }
                if ((b & 1) == 0) {
                    sb.append(" overflowCount");
                }
                l0.e(xs1.k("Missing required properties:", sb));
                return null;
            }
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "frames":
                    listD = d(jsonReader, new q(7));
                    if (listD == null) {
                        f6.n("Null frames");
                        return null;
                    }
                    break;
                    break;
                case "reason":
                    strNextString2 = jsonReader.nextString();
                    break;
                case "type":
                    strNextString = jsonReader.nextString();
                    if (strNextString == null) {
                        f6.n("Null type");
                        return null;
                    }
                    break;
                    break;
                case "causedBy":
                    qc0VarF = f(jsonReader);
                    break;
                case "overflowCount":
                    iNextInt = jsonReader.nextInt();
                    b = (byte) (b | 1);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    public static wc0 g(JsonReader jsonReader) throws IOException {
        vc0 vc0Var = new vc0();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "pid":
                    vc0Var.b = jsonReader.nextInt();
                    vc0Var.e = (byte) (vc0Var.e | 1);
                    break;
                case "processName":
                    String strNextString = jsonReader.nextString();
                    if (strNextString == null) {
                        f6.n("Null processName");
                        return null;
                    }
                    vc0Var.a = strNextString;
                    break;
                    break;
                case "defaultProcess":
                    vc0Var.d = jsonReader.nextBoolean();
                    vc0Var.e = (byte) (vc0Var.e | 4);
                    break;
                case "importance":
                    vc0Var.c = jsonReader.nextInt();
                    vc0Var.e = (byte) (vc0Var.e | 2);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return vc0Var.a();
    }

    /* JADX WARN: Code duplicated, block: B:170:0x0256  */
    public static xb0 h(JsonReader jsonReader) throws IOException {
        byte b;
        Charset charset = c02.a;
        wb0 wb0Var = new wb0();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "ndkPayload":
                    jsonReader.beginObject();
                    List listD = null;
                    String strNextString = null;
                    while (jsonReader.hasNext()) {
                        String strNextName2 = jsonReader.nextName();
                        strNextName2.getClass();
                        if (strNextName2.equals("files")) {
                            listD = d(jsonReader, new e6());
                            if (listD == null) {
                                f6.n("Null files");
                                return null;
                            }
                        } else if (strNextName2.equals("orgId")) {
                            strNextString = jsonReader.nextString();
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    if (listD == null) {
                        l0.e("Missing required properties: files");
                        return null;
                    }
                    wb0Var.k = new dc0(strNextString, listD);
                    continue;
                    break;
                    break;
                case "sdkVersion":
                    String strNextString2 = jsonReader.nextString();
                    if (strNextString2 == null) {
                        f6.n("Null sdkVersion");
                        return null;
                    }
                    wb0Var.a = strNextString2;
                    break;
                    break;
                case "appQualitySessionId":
                    wb0Var.g = jsonReader.nextString();
                    break;
                case "appExitInfo":
                    wb0Var.l = c(jsonReader);
                    break;
                case "buildVersion":
                    String strNextString3 = jsonReader.nextString();
                    if (strNextString3 == null) {
                        f6.n("Null buildVersion");
                        return null;
                    }
                    wb0Var.h = strNextString3;
                    break;
                    break;
                case "firebaseAuthenticationToken":
                    wb0Var.f = jsonReader.nextString();
                    break;
                case "gmpAppId":
                    String strNextString4 = jsonReader.nextString();
                    if (strNextString4 == null) {
                        f6.n("Null gmpAppId");
                        return null;
                    }
                    wb0Var.b = strNextString4;
                    break;
                    break;
                case "installationUuid":
                    String strNextString5 = jsonReader.nextString();
                    if (strNextString5 == null) {
                        f6.n("Null installationUuid");
                        return null;
                    }
                    wb0Var.d = strNextString5;
                    break;
                    break;
                case "firebaseInstallationId":
                    wb0Var.e = jsonReader.nextString();
                    break;
                case "platform":
                    wb0Var.c = jsonReader.nextInt();
                    wb0Var.m = (byte) (wb0Var.m | 1);
                    break;
                case "displayVersion":
                    String strNextString6 = jsonReader.nextString();
                    if (strNextString6 == null) {
                        f6.n("Null displayVersion");
                        return null;
                    }
                    wb0Var.i = strNextString6;
                    break;
                    break;
                case "session":
                    fc0 fc0Var = new fc0();
                    fc0Var.f = false;
                    fc0Var.m = (byte) (fc0Var.m | 2);
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String strNextName3 = jsonReader.nextName();
                        strNextName3.getClass();
                        switch (strNextName3) {
                            case "startedAt":
                                fc0Var.d = jsonReader.nextLong();
                                fc0Var.m = (byte) (fc0Var.m | 1);
                                break;
                            case "appQualitySessionId":
                                fc0Var.c = jsonReader.nextString();
                                break;
                            case "identifier":
                                fc0Var.b = new String(Base64.decode(jsonReader.nextString(), 2), c02.a);
                                break;
                            case "endedAt":
                                fc0Var.e = Long.valueOf(jsonReader.nextLong());
                                break;
                            case "device":
                                jc0 jc0Var = new jc0();
                                jsonReader.beginObject();
                                while (jsonReader.hasNext()) {
                                    String strNextName4 = jsonReader.nextName();
                                    strNextName4.getClass();
                                    switch (strNextName4) {
                                        case "simulator":
                                            jc0Var.f = jsonReader.nextBoolean();
                                            jc0Var.j = (byte) (jc0Var.j | 16);
                                            break;
                                        case "manufacturer":
                                            String strNextString7 = jsonReader.nextString();
                                            if (strNextString7 == null) {
                                                f6.n("Null manufacturer");
                                                return null;
                                            }
                                            jc0Var.h = strNextString7;
                                            break;
                                            break;
                                        case "ram":
                                            jc0Var.d = jsonReader.nextLong();
                                            jc0Var.j = (byte) (jc0Var.j | 4);
                                            break;
                                        case "arch":
                                            jc0Var.a = jsonReader.nextInt();
                                            jc0Var.j = (byte) (jc0Var.j | 1);
                                            break;
                                        case "diskSpace":
                                            jc0Var.e = jsonReader.nextLong();
                                            jc0Var.j = (byte) (jc0Var.j | 8);
                                            break;
                                        case "cores":
                                            jc0Var.c = jsonReader.nextInt();
                                            jc0Var.j = (byte) (jc0Var.j | 2);
                                            break;
                                        case "model":
                                            String strNextString8 = jsonReader.nextString();
                                            if (strNextString8 == null) {
                                                f6.n("Null model");
                                                return null;
                                            }
                                            jc0Var.b = strNextString8;
                                            break;
                                            break;
                                        case "state":
                                            jc0Var.g = jsonReader.nextInt();
                                            jc0Var.j = (byte) (jc0Var.j | 32);
                                            break;
                                        case "modelClass":
                                            String strNextString9 = jsonReader.nextString();
                                            if (strNextString9 == null) {
                                                f6.n("Null modelClass");
                                                return null;
                                            }
                                            jc0Var.i = strNextString9;
                                            break;
                                            break;
                                        default:
                                            jsonReader.skipValue();
                                            break;
                                    }
                                }
                                jsonReader.endObject();
                                fc0Var.j = jc0Var.a();
                                break;
                            case "events":
                                ArrayList arrayList = new ArrayList();
                                jsonReader.beginArray();
                                while (jsonReader.hasNext()) {
                                    arrayList.add(e(jsonReader));
                                }
                                jsonReader.endArray();
                                fc0Var.k = Collections.unmodifiableList(arrayList);
                                break;
                            case "os":
                                ed0 ed0Var = new ed0();
                                jsonReader.beginObject();
                                while (jsonReader.hasNext()) {
                                    String strNextName5 = jsonReader.nextName();
                                    strNextName5.getClass();
                                    switch (strNextName5) {
                                        case "buildVersion":
                                            String strNextString10 = jsonReader.nextString();
                                            if (strNextString10 == null) {
                                                f6.n("Null buildVersion");
                                                return null;
                                            }
                                            ed0Var.c = strNextString10;
                                            break;
                                            break;
                                        case "jailbroken":
                                            ed0Var.d = jsonReader.nextBoolean();
                                            ed0Var.e = (byte) (ed0Var.e | 2);
                                            break;
                                        case "version":
                                            String strNextString11 = jsonReader.nextString();
                                            if (strNextString11 == null) {
                                                f6.n("Null version");
                                                return null;
                                            }
                                            ed0Var.b = strNextString11;
                                            break;
                                            break;
                                        case "platform":
                                            ed0Var.a = jsonReader.nextInt();
                                            ed0Var.e = (byte) (ed0Var.e | 1);
                                            break;
                                        default:
                                            jsonReader.skipValue();
                                            break;
                                    }
                                }
                                jsonReader.endObject();
                                fc0Var.i = ed0Var.a();
                                break;
                            case "app":
                                jsonReader.beginObject();
                                String strNextString12 = null;
                                String strNextString13 = null;
                                String strNextString14 = null;
                                String strNextString15 = null;
                                String strNextString16 = null;
                                String strNextString17 = null;
                                while (jsonReader.hasNext()) {
                                    String strNextName6 = jsonReader.nextName();
                                    strNextName6.getClass();
                                    switch (strNextName6.hashCode()) {
                                        case -1618432855:
                                            if (!strNextName6.equals("identifier")) {
                                                b = -1;
                                            } else {
                                                b = 0;
                                            }
                                            break;
                                        case -519438642:
                                            if (!strNextName6.equals("developmentPlatform")) {
                                                b = -1;
                                            } else {
                                                b = 1;
                                            }
                                            break;
                                        case 213652010:
                                            if (!strNextName6.equals("developmentPlatformVersion")) {
                                                b = -1;
                                            } else {
                                                b = 2;
                                            }
                                            break;
                                        case 351608024:
                                            b = !strNextName6.equals("version") ? (byte) -1 : (byte) 3;
                                            break;
                                        case 719853845:
                                            b = !strNextName6.equals("installationUuid") ? (byte) -1 : (byte) 4;
                                            break;
                                        case 1975623094:
                                            b = !strNextName6.equals("displayVersion") ? (byte) -1 : (byte) 5;
                                            break;
                                        default:
                                            b = -1;
                                            break;
                                    }
                                    switch (b) {
                                        case 0:
                                            strNextString17 = jsonReader.nextString();
                                            if (strNextString17 == null) {
                                                f6.n("Null identifier");
                                                return null;
                                            }
                                            break;
                                            break;
                                        case 1:
                                            strNextString15 = jsonReader.nextString();
                                            break;
                                        case 2:
                                            strNextString16 = jsonReader.nextString();
                                            break;
                                        case 3:
                                            strNextString12 = jsonReader.nextString();
                                            if (strNextString12 == null) {
                                                f6.n("Null version");
                                                return null;
                                            }
                                            break;
                                            break;
                                        case 4:
                                            strNextString14 = jsonReader.nextString();
                                            break;
                                        case 5:
                                            strNextString13 = jsonReader.nextString();
                                            break;
                                        default:
                                            jsonReader.skipValue();
                                            break;
                                    }
                                }
                                jsonReader.endObject();
                                if (strNextString17 != null && strNextString12 != null) {
                                    fc0Var.g = new hc0(strNextString17, strNextString12, strNextString13, strNextString14, strNextString15, strNextString16);
                                    break;
                                } else {
                                    StringBuilder sb = new StringBuilder();
                                    if (strNextString17 == null) {
                                        sb.append(" identifier");
                                    }
                                    if (strNextString12 == null) {
                                        sb.append(" version");
                                    }
                                    l0.e(xs1.k("Missing required properties:", sb));
                                    return null;
                                }
                                break;
                            case "user":
                                jsonReader.beginObject();
                                String strNextString18 = null;
                                while (jsonReader.hasNext()) {
                                    if (jsonReader.nextName().equals("identifier")) {
                                        strNextString18 = jsonReader.nextString();
                                        if (strNextString18 == null) {
                                            f6.n("Null identifier");
                                            return null;
                                        }
                                    } else {
                                        jsonReader.skipValue();
                                    }
                                }
                                jsonReader.endObject();
                                if (strNextString18 == null) {
                                    l0.e("Missing required properties: identifier");
                                    return null;
                                }
                                fc0Var.h = new gd0(strNextString18);
                                break;
                                break;
                            case "generator":
                                String strNextString19 = jsonReader.nextString();
                                if (strNextString19 == null) {
                                    f6.n("Null generator");
                                    return null;
                                }
                                fc0Var.a = strNextString19;
                                break;
                                break;
                            case "crashed":
                                fc0Var.f = jsonReader.nextBoolean();
                                fc0Var.m = (byte) (fc0Var.m | 2);
                                break;
                            case "generatorType":
                                fc0Var.l = jsonReader.nextInt();
                                fc0Var.m = (byte) (fc0Var.m | 4);
                                break;
                            default:
                                jsonReader.skipValue();
                                break;
                        }
                    }
                    jsonReader.endObject();
                    wb0Var.j = fc0Var.a();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return wb0Var.a();
    }

    public static xb0 i(String str) throws IOException {
        try {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            try {
                xb0 xb0VarH = h(jsonReader);
                jsonReader.close();
                return xb0VarH;
            } catch (Throwable th) {
                try {
                    jsonReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IllegalStateException e) {
            throw new IOException(e);
        }
    }
}
