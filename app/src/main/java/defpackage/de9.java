package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class de9 extends b19 {
    public az3 b;
    public final int c;

    public de9(az3 az3Var, int i) {
        super("com.google.android.gms.common.internal.IGmsCallbacks", 5);
        this.b = az3Var;
        this.c = i;
    }

    @Override // defpackage.b19
    public final boolean o(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            int i2 = parcel.readInt();
            IBinder strongBinder = parcel.readStrongBinder();
            Bundle bundle = (Bundle) za9.a(parcel, Bundle.CREATOR);
            za9.b(parcel);
            ly8.i(this.b, "onPostInitComplete can be called only once per call to getRemoteService");
            az3 az3Var = this.b;
            int i3 = this.c;
            az3Var.getClass();
            ph9 ph9Var = new ph9(az3Var, i2, strongBinder, bundle);
            j99 j99Var = az3Var.e;
            j99Var.sendMessage(j99Var.obtainMessage(1, i3, -1, ph9Var));
            this.b = null;
        } else if (i == 2) {
            parcel.readInt();
            za9.b(parcel);
            Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
        } else {
            if (i != 3) {
                return false;
            }
            int i4 = parcel.readInt();
            IBinder strongBinder2 = parcel.readStrongBinder();
            jo9 jo9Var = (jo9) za9.a(parcel, jo9.CREATOR);
            za9.b(parcel);
            az3 az3Var2 = this.b;
            ly8.i(az3Var2, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
            ly8.h(jo9Var);
            az3Var2.u = jo9Var;
            if (az3Var2.t()) {
                is1 is1Var = jo9Var.d;
                jq6 jq6VarI = jq6.i();
                kq6 kq6Var = is1Var == null ? null : is1Var.a;
                synchronized (jq6VarI) {
                    try {
                        if (kq6Var == null) {
                            kq6Var = jq6.d;
                        } else {
                            kq6 kq6Var2 = (kq6) jq6VarI.b;
                            if (kq6Var2 == null || kq6Var2.a < kq6Var.a) {
                            }
                        }
                        jq6VarI.b = kq6Var;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            Bundle bundle2 = jo9Var.a;
            ly8.i(this.b, "onPostInitComplete can be called only once per call to getRemoteService");
            az3 az3Var3 = this.b;
            int i5 = this.c;
            az3Var3.getClass();
            ph9 ph9Var2 = new ph9(az3Var3, i4, strongBinder2, bundle2);
            j99 j99Var2 = az3Var3.e;
            j99Var2.sendMessage(j99Var2.obtainMessage(1, i5, -1, ph9Var2));
            this.b = null;
        }
        parcel2.writeNoException();
        return true;
    }
}
