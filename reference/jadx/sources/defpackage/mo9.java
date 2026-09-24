package defpackage;

import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class mo9 extends b19 implements IInterface {
    public final int b;

    public mo9(byte[] bArr) {
        super("com.google.android.gms.common.internal.ICertData", 5);
        ly8.c(bArr.length == 25);
        this.b = Arrays.hashCode(bArr);
    }

    public static byte[] r(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            e6.e(e);
            return null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof mo9) {
            try {
                mo9 mo9Var = (mo9) obj;
                if (mo9Var.b == this.b) {
                    return Arrays.equals(q(), (byte[]) new wr5(mo9Var.q()).b);
                }
            } catch (RemoteException e) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
                return false;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.b;
    }

    @Override // defpackage.b19
    public final boolean o(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            parcel2.writeNoException();
            parcel2.writeInt(this.b);
            return true;
        }
        wr5 wr5Var = new wr5(q());
        parcel2.writeNoException();
        int i2 = za9.a;
        parcel2.writeStrongBinder(wr5Var);
        return true;
    }

    public abstract byte[] q();
}
