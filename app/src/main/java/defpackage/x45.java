package defpackage;

import com.nimbusds.jose.jwk.JWKParameterNames;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x45 extends InputStream {
    public final wd7 a;
    public final byte[] b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int k;
    public byte[] n;

    public x45(String str) {
        kr7 kr7Var = new kr7(str);
        this.c = 0;
        this.d = 0;
        this.e = -1;
        this.f = 0;
        this.a = kr7Var.b("[ -b @@ ]") ? new td7(kr7Var, JWKParameterNames.RSA_OTHER_PRIMES__PRIME_FACTOR) : new wd7(kr7Var, JWKParameterNames.RSA_OTHER_PRIMES__PRIME_FACTOR);
        this.b = new byte[4194304];
    }

    public final synchronized int a(byte[] bArr, int i, int i2) {
        int i3 = 0;
        while (i3 < i) {
            try {
                int i4 = this.d;
                if (i4 < 0) {
                    int i5 = ~i4;
                    int iMin = Math.min(this.f - i5, i - i3);
                    if (bArr != null) {
                        System.arraycopy(this.n, i5, bArr, i2 + i3, iMin);
                    }
                    i3 += iMin;
                    int i6 = i5 + iMin;
                    if (i6 == this.f) {
                        this.d = 0;
                    } else {
                        this.d = ~i6;
                    }
                } else {
                    int i7 = this.c;
                    if (i4 >= i7) {
                        int i8 = this.e;
                        if (i8 >= 0) {
                            int i9 = i7 - i8;
                            int i10 = this.k;
                            if (i10 - this.f < i9) {
                                this.n = null;
                                this.f = 0;
                                this.e = -1;
                            } else if (this.n == null) {
                                this.n = new byte[i10];
                                this.f = 0;
                            }
                            byte[] bArr2 = this.n;
                            if (bArr2 != null) {
                                System.arraycopy(this.b, this.e, bArr2, this.f, i9);
                                this.f += i9;
                                this.e = 0;
                            }
                        }
                        this.d = 0;
                        wd7 wd7Var = this.a;
                        byte[] bArr3 = this.b;
                        wd7Var.getClass();
                        int i11 = wd7Var.read(bArr3, 0, bArr3.length);
                        this.c = i11;
                        if (i11 < 0) {
                            if (i3 == 0) {
                                i3 = -1;
                            }
                            return i3;
                        }
                    }
                    int iMin2 = Math.min(this.c - this.d, i - i3);
                    if (bArr != null) {
                        System.arraycopy(this.b, this.d, bArr, i2 + i3, iMin2);
                    }
                    i3 += iMin2;
                    this.d += iMin2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i3;
    }

    @Override // java.io.InputStream
    public final synchronized int available() {
        try {
            int i = this.c;
            if (i < 0) {
                return 0;
            }
            if (this.d >= i) {
                a(null, 1, 0);
                if (this.c < 0) {
                    return 0;
                }
                this.d--;
            }
            int i2 = this.d;
            if (i2 < 0) {
                return (this.f - (~i2)) + this.c;
            }
            return this.c - i2;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.io.InputStream
    public final synchronized void mark(int i) {
        try {
            int i2 = this.d;
            this.e = i2;
            this.f = 0;
            this.n = null;
            int i3 = this.c - i2;
            if (i <= i3) {
                this.k = 0;
            } else {
                byte[] bArr = this.b;
                this.k = (((i - i3) / bArr.length) * bArr.length) + i3;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        if (i < 0 || i2 < 0 || i + i2 > bArr.length) {
            l0.a();
            return 0;
        }
        if (this.c < 0) {
            return -1;
        }
        return a(bArr, i2, i);
    }

    @Override // java.io.InputStream
    public final synchronized void reset() {
        int i = this.e;
        if (i < 0) {
            throw new IOException("Resetting to invalid mark");
        }
        if (this.n != null) {
            i = -1;
        }
        this.d = i;
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        if (j < 0) {
            return 0L;
        }
        return Math.max(a(null, (int) j, 0), 0);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = new byte[1];
        if (read(bArr, 0, 1) != 1) {
            return -1;
        }
        return bArr[0] & 255;
    }
}
