package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class np7 {
    public final ni4 a;
    public final ow8 b;
    public final vr1 c;
    public int d;
    public final dj4 e;
    public final sj4 f;

    public np7(ni4 ni4Var, ow8 ow8Var, vr1 vr1Var, p77 p77Var) {
        p77Var.getClass();
        this.a = ni4Var;
        this.b = ow8Var;
        this.c = vr1Var;
        this.d = -1;
        dj4 dj4Var = ni4Var.a;
        this.e = dj4Var;
        this.f = dj4Var.a ? null : new sj4(p77Var);
    }

    public final np7 a(p77 p77Var) {
        byte b;
        p77Var.getClass();
        ni4 ni4Var = this.a;
        ow8 ow8VarB = wx3.B(ni4Var, p77Var);
        vr1 vr1Var = this.c;
        jl4 jl4Var = (jl4) vr1Var.c;
        int i = jl4Var.c + 1;
        jl4Var.c = i;
        Object[] objArr = jl4Var.b;
        if (i == objArr.length) {
            int i2 = i * 2;
            jl4Var.b = Arrays.copyOf(objArr, i2);
            jl4Var.d = Arrays.copyOf((int[]) jl4Var.d, i2);
        }
        jl4Var.b[i] = p77Var;
        vr1Var.f(ow8VarB.a);
        String str = (String) vr1Var.f;
        int i3 = vr1Var.b;
        while (true) {
            int iT = vr1Var.t(i3);
            b = 10;
            if (iT == -1) {
                vr1Var.b = iT;
                break;
            }
            char cCharAt = str.charAt(iT);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != ' ') {
                vr1Var.b = iT;
                b = z85.b(cCharAt);
                break;
            }
            i3 = iT + 1;
        }
        if (b == 4) {
            vr1.k(vr1Var, "Unexpected leading comma", 0, 6);
            throw null;
        }
        int iOrdinal = ow8VarB.ordinal();
        if (iOrdinal == 1 || iOrdinal == 2 || iOrdinal == 3) {
            return new np7(ni4Var, ow8VarB, vr1Var, p77Var);
        }
        return (this.b == ow8VarB && ni4Var.a.a) ? this : new np7(ni4Var, ow8VarB, vr1Var, p77Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int b(p77 p77Var) {
        ni4 ni4Var = this.a;
        dj4 dj4Var = ni4Var.a;
        p77Var.getClass();
        ow8 ow8Var = this.b;
        int iOrdinal = ow8Var.ordinal();
        int i = 0;
        zV = false;
        boolean zV = false;
        int iN = -1;
        vr1 vr1Var = this.c;
        if (iOrdinal == 0) {
            boolean zV2 = vr1Var.v();
            boolean zB = vr1Var.b();
            sj4 sj4Var = this.f;
            if (zB) {
                this.e.getClass();
                String strE = vr1Var.e();
                vr1Var.f(':');
                iN = vm4.n(p77Var, ni4Var, strE);
                if (iN == -3) {
                    vr1Var.j(nq7.l0(6, ((String) vr1Var.f).subSequence(0, vr1Var.b).toString(), strE), u48.j('\'', "Encountered an unknown key '", strE), "Use 'ignoreUnknownKeys = true' in 'Json {}' builder to ignore unknown keys.");
                    throw null;
                }
                if (sj4Var != null) {
                    st2 st2Var = sj4Var.a;
                    if (iN < 64) {
                        st2Var.c |= 1 << iN;
                    } else {
                        int i2 = (iN >>> 6) - 1;
                        long[] jArr = st2Var.d;
                        jArr[i2] = jArr[i2] | (1 << (iN & 63));
                    }
                }
            } else if (!zV2) {
                if (sj4Var != null) {
                    st2 st2Var2 = sj4Var.a;
                    rj4 rj4Var = st2Var2.b;
                    p77 p77Var2 = st2Var2.a;
                    int iF = p77Var2.f();
                    while (true) {
                        long j = st2Var2.c;
                        long j2 = -1;
                        if (j == -1) {
                            if (iF <= 64) {
                                break;
                            }
                            long[] jArr2 = st2Var2.d;
                            int length = jArr2.length;
                            loop1: while (i < length) {
                                int i3 = i + 1;
                                int i4 = i3 * 64;
                                long j3 = jArr2[i];
                                while (true) {
                                    if (j3 != j2) {
                                        int iNumberOfTrailingZeros = Long.numberOfTrailingZeros(~j3);
                                        j3 |= 1 << iNumberOfTrailingZeros;
                                        int i5 = iNumberOfTrailingZeros + i4;
                                        if (((Boolean) rj4Var.invoke(p77Var2, Integer.valueOf(i5))).booleanValue()) {
                                            jArr2[i] = j3;
                                            iN = i5;
                                            break;
                                        }
                                        j2 = -1;
                                    } else {
                                        jArr2[i] = j3;
                                        i = i3;
                                        j2 = -1;
                                    }
                                }
                            }
                            break;
                        }
                        int iNumberOfTrailingZeros2 = Long.numberOfTrailingZeros(~j);
                        st2Var2.c |= 1 << iNumberOfTrailingZeros2;
                        if (((Boolean) rj4Var.invoke(p77Var2, Integer.valueOf(iNumberOfTrailingZeros2))).booleanValue()) {
                            iN = iNumberOfTrailingZeros2;
                            break;
                        }
                    }
                }
            } else {
                dj4Var.getClass();
                bb9.x(vr1Var, "object");
                throw null;
            }
        } else if (iOrdinal != 2) {
            boolean zV3 = vr1Var.v();
            if (vr1Var.b()) {
                int i6 = this.d;
                if (i6 != -1 && !zV3) {
                    vr1.k(vr1Var, "Expected end of the array or comma", 0, 6);
                    throw null;
                }
                iN = i6 + 1;
                this.d = iN;
            } else if (zV3) {
                dj4Var.getClass();
                bb9.x(vr1Var, "array");
                throw null;
            }
        } else {
            int i7 = this.d;
            Object[] objArr = i7 % 2 != 0;
            if (objArr != true) {
                vr1Var.f(':');
            } else if (i7 != -1) {
                zV = vr1Var.v();
            }
            if (vr1Var.b()) {
                if (objArr != false) {
                    int i8 = this.d;
                    int i9 = vr1Var.b;
                    if (i8 == -1) {
                        if (zV) {
                            vr1.k(vr1Var, "Unexpected leading comma", i9, 4);
                            throw null;
                        }
                    } else if (!zV) {
                        vr1.k(vr1Var, "Expected comma after the key-value pair", i9, 4);
                        throw null;
                    }
                }
                iN = this.d + 1;
                this.d = iN;
            } else if (zV) {
                dj4Var.getClass();
                bb9.x(vr1Var, "object");
                throw null;
            }
        }
        if (ow8Var != ow8.MAP) {
            jl4 jl4Var = (jl4) vr1Var.c;
            ((int[]) jl4Var.d)[jl4Var.c] = iN;
        }
        return iN;
    }

    public final int c() {
        vr1 vr1Var = this.c;
        long jG = vr1Var.g();
        int i = (int) jG;
        if (jG == i) {
            return i;
        }
        vr1.k(vr1Var, "Failed to parse int for input '" + jG + '\'', 0, 6);
        throw null;
    }

    public final int d(p77 p77Var, int i) {
        p77Var.getClass();
        return c();
    }

    public final long e() {
        return this.c.g();
    }

    public final long f(p77 p77Var, int i) {
        p77Var.getClass();
        return e();
    }

    public final boolean g() {
        boolean z;
        sj4 sj4Var = this.f;
        if (!(sj4Var != null ? sj4Var.b : false)) {
            vr1 vr1Var = this.c;
            int iT = vr1Var.t(vr1Var.u());
            String str = (String) vr1Var.f;
            int length = str.length() - iT;
            if (length >= 4 && iT != -1) {
                int i = 0;
                while (true) {
                    if (i >= 4) {
                        if (length <= 4 || z85.b(str.charAt(iT + 4)) != 0) {
                            vr1Var.b = iT + 4;
                            z = true;
                            break;
                        }
                    } else if ("null".charAt(i) == str.charAt(iT + i)) {
                        i++;
                    }
                    z = false;
                    break;
                }
            } else {
                z = false;
                break;
            }
            if (!z) {
                return true;
            }
        }
        return false;
    }

    public final Object h(p77 p77Var, int i, do4 do4Var, Object obj) {
        p77Var.getClass();
        do4Var.getClass();
        if (do4Var.d().c() || g()) {
            return j(do4Var);
        }
        return null;
    }

    public final Object i(p77 p77Var, int i, do4 do4Var, Object obj) {
        jl4 jl4Var = (jl4) this.c.c;
        p77Var.getClass();
        do4Var.getClass();
        boolean z = this.b == ow8.MAP && (i & 1) == 0;
        if (z) {
            int[] iArr = (int[]) jl4Var.d;
            int i2 = jl4Var.c;
            if (iArr[i2] == -2) {
                jl4Var.b[i2] = ge.e;
            }
        }
        Object objJ = j(do4Var);
        if (z) {
            int[] iArr2 = (int[]) jl4Var.d;
            int i3 = jl4Var.c;
            if (iArr2[i3] != -2) {
                int i4 = i3 + 1;
                jl4Var.c = i4;
                Object[] objArr = jl4Var.b;
                if (i4 == objArr.length) {
                    int i5 = i4 * 2;
                    jl4Var.b = Arrays.copyOf(objArr, i5);
                    jl4Var.d = Arrays.copyOf((int[]) jl4Var.d, i5);
                }
            }
            Object[] objArr2 = jl4Var.b;
            int i6 = jl4Var.c;
            objArr2[i6] = objJ;
            ((int[]) jl4Var.d)[i6] = -2;
        }
        return objJ;
    }

    public final Object j(do4 do4Var) {
        do4Var.getClass();
        try {
            return do4Var.a(this);
        } catch (ug5 e) {
            String message = e.getMessage();
            message.getClass();
            if (nq7.Z(message, "at path", false)) {
                throw e;
            }
            throw new ug5(e.a, e.getMessage() + " at path: " + ((jl4) this.c.c).a(), e);
        }
    }

    public final String k() {
        this.e.getClass();
        return this.c.h();
    }

    public final String l(p77 p77Var, int i) {
        p77Var.getClass();
        return k();
    }

    public final void m(p77 p77Var) {
        p77Var.getClass();
        dj4 dj4Var = this.a.a;
        dj4Var.getClass();
        vr1 vr1Var = this.c;
        if (vr1Var.v()) {
            dj4Var.getClass();
            bb9.x(vr1Var, "");
            throw null;
        }
        vr1Var.f(this.b.b);
        jl4 jl4Var = (jl4) vr1Var.c;
        int i = jl4Var.c;
        int[] iArr = (int[]) jl4Var.d;
        if (iArr[i] == -2) {
            iArr[i] = -1;
            jl4Var.c = i - 1;
        }
        int i2 = jl4Var.c;
        if (i2 != -1) {
            jl4Var.c = i2 - 1;
        }
    }
}
