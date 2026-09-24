package defpackage;

import com.nimbusds.jose.jwk.JWKParameterNames;
import java.nio.ByteBuffer;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class sa5 {
    public final ea5 a;
    public final SecureRandom b = new SecureRandom();

    public sa5(ea5 ea5Var) {
        this.a = ea5Var;
        char[] cArr = new char[10];
        for (int i = 0; i < 10; i++) {
            cArr[i] = (char) (this.b.nextInt(26) + 97);
        }
        new String(cArr);
    }

    public static String d(fl4 fl4Var, String str) {
        String strO;
        qj4 qj4VarX = fl4Var.x(str);
        if (qj4VarX != null) {
            if (qj4VarX instanceof el4) {
                qj4VarX = null;
            }
            if (qj4VarX != null && (strO = qj4VarX.o()) != null && !nq7.j0(strO)) {
                return strO;
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:65:0x00f9  */
    public static pa5 e(ra5 ra5Var, gh ghVar, LinkedHashMap linkedHashMap) throws Throwable {
        byte[] bArrB;
        byte[] bArrA;
        byte[] bArr;
        String strA;
        String str;
        int[] iArr;
        int[] iArr2;
        int[] iArr3 = new int[0];
        int[] iArr4 = new int[0];
        int i = ra5Var.d;
        String str2 = ra5Var.a;
        String str3 = ra5Var.e;
        byte[] bArr2 = null;
        if (i == 0 || i == 1) {
            if (str3 != null && !nq7.j0(str3)) {
                String str4 = ra5Var.f;
                if (str4 == null) {
                    str4 = "";
                }
                List listW0 = nq7.w0(nq7.D0(str4, '/'), new char[]{':'}, 2);
                if (listW0.size() != 2) {
                    iArr4 = null;
                } else {
                    String str5 = (String) listW0.get(0);
                    byte[] bArrC = x13.c((String) listW0.get(1));
                    try {
                        if (pe4.d(str5, ra5Var.c) || pe4.d(str5, (String) ghVar.c)) {
                            bArrA = (byte[]) ghVar.b;
                            bArr = null;
                        } else {
                            int[] iArr5 = (int[]) linkedHashMap.get(str5);
                            bArrA = iArr5 != null ? x13.a(iArr5) : null;
                            bArr = bArrA;
                        }
                        if (bArrA == null) {
                            Arrays.fill(bArrC, (byte) 0);
                            if (bArr != null) {
                                Arrays.fill(bArr, (byte) 0);
                            }
                            iArr4 = null;
                        } else {
                            try {
                                bArrB = y13.b(bArrA, bArrC);
                                try {
                                    int[] iArrE = x13.e(bArrB);
                                    Arrays.fill(bArrC, (byte) 0);
                                    if (bArr != null) {
                                        Arrays.fill(bArr, (byte) 0);
                                    }
                                    Arrays.fill(bArrB, (byte) 0);
                                    iArr4 = iArrE;
                                } catch (Throwable th) {
                                    th = th;
                                    bArr2 = bArr;
                                    Arrays.fill(bArrC, (byte) 0);
                                    if (bArr2 != null) {
                                        Arrays.fill(bArr2, (byte) 0);
                                    }
                                    if (bArrB != null) {
                                        Arrays.fill(bArrB, (byte) 0);
                                    }
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                bArrB = null;
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        bArrB = null;
                    }
                }
                if (iArr4 != null) {
                    int i2 = ra5Var.d;
                    if (i2 != 0) {
                        iArr3 = i2 != 1 ? null : iArr4;
                    } else {
                        iArr3 = iArr4.length < 8 ? null : new int[]{iArr4[0] ^ iArr4[4], iArr4[1] ^ iArr4[5], iArr4[2] ^ iArr4[6], iArr4[3] ^ iArr4[7]};
                    }
                    if (iArr3 != null) {
                        linkedHashMap.put(str2, iArr3);
                        strA = qa5.a(iArr3, str3);
                    }
                }
            }
            return null;
        }
        if (i == 2) {
            strA = "Cloud Drive";
        } else {
            if (i != 3) {
                if (i != 4) {
                    iArr = iArr3;
                    iArr2 = iArr4;
                    str = null;
                } else {
                    strA = "Trash";
                }
                if (str != null) {
                    return new pa5(str2, ra5Var.b, str, ra5Var.h, ra5Var.g, ra5Var.d, iArr, iArr2);
                }
                return null;
            }
            strA = "InBox";
        }
        str = strA;
        iArr = iArr3;
        iArr2 = iArr4;
        if (str != null) {
            return new pa5(str2, ra5Var.b, str, ra5Var.h, ra5Var.g, ra5Var.d, iArr, iArr2);
        }
        return null;
    }

    public static ra5 f(fl4 fl4Var) {
        String strD = d(fl4Var, "h");
        if (strD == null) {
            l0.e("MEGA node response is missing 'h'");
            return null;
        }
        String strD2 = d(fl4Var, JWKParameterNames.RSA_FIRST_PRIME_FACTOR);
        String strD3 = d(fl4Var, "u");
        qj4 qj4VarX = fl4Var.x(JWKParameterNames.RSA_OTHER_PRIMES__FACTOR_CRT_COEFFICIENT);
        int iF = qj4VarX != null ? qj4VarX.f() : 0;
        String strD4 = d(fl4Var, "a");
        String strD5 = d(fl4Var, "fa");
        String strD6 = d(fl4Var, JWKParameterNames.OCT_KEY_VALUE);
        qj4 qj4VarX2 = fl4Var.x("ts");
        long jL = qj4VarX2 != null ? qj4VarX2.l() : 0L;
        qj4 qj4VarX3 = fl4Var.x("s");
        return new ra5(strD, strD2, strD3, iF, strD4, strD5, strD6, jL, qj4VarX3 != null ? qj4VarX3.l() : 0L);
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
    public final void a(gh ghVar, pa5 pa5Var, String str) {
        str.getClass();
        int[] iArr = new int[4];
        for (int i = 0; i < 4; i++) {
            iArr[i] = this.b.nextInt();
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
        byteBufferAllocate.getClass();
        for (int i2 = 0; i2 < 4; i2++) {
            byteBufferAllocate.putInt(iArr[i2]);
        }
        byte[] bArrArray = byteBufferAllocate.array();
        bArrArray.getClass();
        try {
            fl4 fl4Var = new fl4();
            fl4Var.u("a", JWKParameterNames.RSA_FIRST_PRIME_FACTOR);
            fl4Var.t("v", 4);
            fl4Var.t("sm", 1);
            fl4Var.u(JWKParameterNames.RSA_OTHER_PRIMES__FACTOR_CRT_COEFFICIENT, pa5Var.a);
            xi4 xi4Var = new xi4();
            fl4 fl4Var2 = new fl4();
            fl4Var2.u("h", "xxxxxxxx");
            fl4Var2.t(JWKParameterNames.RSA_OTHER_PRIMES__FACTOR_CRT_COEFFICIENT, 1);
            byte[] bArr = qa5.a;
            fl4 fl4Var3 = new fl4();
            fl4Var3.u(JWKParameterNames.RSA_MODULUS, str);
            fl4Var2.u("a", qa5.b(iArr, fl4Var3));
            String strEncodeToString = Base64.getUrlEncoder().withoutPadding().encodeToString(y13.c((byte[]) ghVar.b, bArrArray));
            strEncodeToString.getClass();
            fl4Var2.u(JWKParameterNames.OCT_KEY_VALUE, strEncodeToString);
            xi4Var.p(fl4Var2);
            fl4Var.p(JWKParameterNames.RSA_MODULUS, xi4Var);
            w13.b(this.a.b(fl4Var, (String) ghVar.a, da5.IDEMPOTENT_MUTATION));
        } finally {
            Arrays.fill(iArr, 0);
            Arrays.fill(bArrArray, (byte) 0);
        }
    }

    public final void b(gh ghVar, pa5 pa5Var) {
        int iF;
        pa5Var.getClass();
        fl4 fl4Var = new fl4();
        fl4Var.u("a", "d");
        fl4Var.u(JWKParameterNames.RSA_MODULUS, pa5Var.a);
        qj4 qj4VarU = w13.u(this.a.b(fl4Var, (String) ghVar.a, da5.IDEMPOTENT_MUTATION));
        if (qj4VarU instanceof kl4) {
            if ((qj4VarU.k().a instanceof Number) && (iF = qj4VarU.f()) != 0) {
                throw new ca5(iF);
            }
            return;
        }
        qj4 qj4VarX = qj4VarU.i().x(JWKParameterNames.RSA_OTHER_PRIMES__PRIME_FACTOR);
        if (qj4VarX == null) {
            return;
        }
        int iF2 = 0;
        if ((qj4VarX instanceof xi4) && qj4VarX.g().a.size() > 0) {
            iF2 = ((qj4) qj4VarX.g().a.get(0)).f();
        } else if ((qj4VarX instanceof kl4) && (qj4VarX.k().a instanceof Number)) {
            iF2 = qj4VarX.f();
        }
        if (iF2 != 0) {
            throw new ca5(iF2);
        }
    }

    public final vq c(gh ghVar) {
        Object bn6Var;
        Object bn6Var2;
        fl4 fl4Var = new fl4();
        fl4Var.u("a", "f");
        fl4Var.t("c", 1);
        fl4Var.t(JWKParameterNames.RSA_OTHER_PRIMES__PRIME_FACTOR, 1);
        qj4 qj4VarX = this.a.b(fl4Var, (String) ghVar.a, da5.READ_SAFE).i().x("f");
        if (qj4VarX == null) {
            l0.e("MEGA file-tree response is missing nodes");
            return null;
        }
        xi4 xi4VarG = qj4VarX.g();
        ArrayList arrayList = new ArrayList();
        Iterator it = xi4VarG.a.iterator();
        while (it.hasNext()) {
            try {
                bn6Var2 = f(((qj4) it.next()).i());
            } catch (Throwable th) {
                bn6Var2 = new bn6(th);
            }
            if (bn6Var2 instanceof bn6) {
                bn6Var2 = null;
            }
            ra5 ra5Var = (ra5) bn6Var2;
            if (ra5Var != null) {
                arrayList.add(ra5Var);
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            try {
                bn6Var = e((ra5) it2.next(), ghVar, linkedHashMap);
            } catch (Throwable th2) {
                bn6Var = new bn6(th2);
            }
            if (bn6Var instanceof bn6) {
                bn6Var = null;
            }
            pa5 pa5Var = (pa5) bn6Var;
            if (pa5Var != null) {
                arrayList2.add(pa5Var);
            }
        }
        return new vq(arrayList2);
    }
}
