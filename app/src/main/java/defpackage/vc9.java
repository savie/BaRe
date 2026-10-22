package defpackage;

import android.os.Parcel;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public /* synthetic */ class vc9 implements d36, fr9 {
    public final /* synthetic */ int a;
    public int b;
    public Object c;

    public vc9(byte b, int i) {
        this.a = i;
        switch (i) {
            case 3:
                this.c = new char[16];
                break;
        }
    }

    @Override // defpackage.fr9
    public byte[] a(int i, byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        gf9 gf9Var = (gf9) this.c;
        if (bArr2.length < i) {
            m0.h("ciphertext too short");
            return null;
        }
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr2, i, bArr2.length);
        byte[] bArrCopyOf = Arrays.copyOf(bArr, gf9Var.a);
        int i2 = gf9Var.a;
        byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr, i2, gf9Var.b + i2);
        ai5 ai5Var = new ai5(8);
        ai5Var.c = null;
        ai5Var.d = null;
        ai5Var.e = null;
        ai5Var.b = gf9Var;
        ai5Var.c = new km8(d2a.a(bArrCopyOf));
        ai5Var.d = new km8(d2a.a(bArrCopyOfRange2));
        return q1a.c(ai5Var.B()).a(bArrCopyOfRange, x13.d);
    }

    public void b(String str) {
        e(str.length() + this.b);
        str.getChars(0, str.length(), (char[]) this.c, this.b);
        this.b = str.length() + this.b;
    }

    @Override // defpackage.d36
    public boolean c(Object obj) {
        Object[] objArr = (Object[]) this.c;
        obj.getClass();
        int i = this.b;
        for (int i2 = 0; i2 < i; i2++) {
            if (objArr[i2] == obj) {
                l0.e("Already in the pool!");
                return false;
            }
        }
        int i3 = this.b;
        if (i3 >= objArr.length) {
            return false;
        }
        objArr[i3] = obj;
        this.b = i3 + 1;
        return true;
    }

    @Override // defpackage.d36
    public Object d() {
        Object[] objArr = (Object[]) this.c;
        int i = this.b;
        if (i <= 0) {
            return null;
        }
        int i2 = i - 1;
        Object obj = objArr[i2];
        obj.getClass();
        objArr[i2] = null;
        this.b--;
        return obj;
    }

    public void e(int i) {
        char[] cArr = (char[]) this.c;
        if (cArr.length < i) {
            char[] cArr2 = new char[Math.max(i, cArr.length * 2)];
            System.arraycopy((char[]) this.c, 0, cArr2, 0, this.b);
            this.c = cArr2;
        }
    }

    public String f(ct9 ct9Var) {
        String str;
        ud9 ud9Var = (ud9) this.c;
        int i = this.b;
        try {
            if (ud9Var.E == null) {
                throw null;
            }
            e99 e99Var = ud9Var.E;
            String packageName = ud9Var.C.getPackageName();
            if (i == 2) {
                str = "LAUNCH_BILLING_FLOW";
            } else if (i == 3) {
                str = "ACKNOWLEDGE_PURCHASE";
            } else if (i == 4) {
                str = "CONSUME_ASYNC";
            } else if (i != 5) {
                str = i != 6 ? "QUERY_PRODUCT_DETAILS_ASYNC" : "START_CONNECTION";
            } else {
                str = "IS_FEATURE_SUPPORTED";
            }
            kd9 kd9Var = new kd9(ct9Var);
            a99 a99Var = (a99) e99Var;
            Parcel parcelL = a99Var.l();
            parcelL.writeString(packageName);
            parcelL.writeString(str);
            int i2 = z89.a;
            parcelL.writeStrongBinder(kd9Var);
            try {
                a99Var.b.transact(1, parcelL, null, 1);
                return "billingOverrideService.getBillingOverride";
            } finally {
                parcelL.recycle();
            }
        } catch (Exception e) {
            ud9Var.G(95, 28, le9.r);
            ta9.i("BillingClientTesting", "An error occurred while retrieving billing override.", e);
            ct9Var.a(0);
            return "billingOverrideService.getBillingOverride";
        }
    }

    public String toString() {
        switch (this.a) {
            case 3:
                return new String((char[]) this.c, 0, this.b);
            default:
                return super.toString();
        }
    }

    @Override // defpackage.fr9
    public int zza() {
        return this.b;
    }

    public vc9(gf9 gf9Var) {
        this.a = 4;
        this.c = gf9Var;
        this.b = gf9Var.a + gf9Var.b;
    }

    public /* synthetic */ vc9(ud9 ud9Var, int i) {
        this.a = 0;
        this.c = ud9Var;
        this.b = i;
    }

    public vc9(int i) {
        this.a = 2;
        if (i > 0) {
            this.c = new Object[i];
        } else {
            c6.f("The max pool size must be > 0");
            throw null;
        }
    }
}
