package defpackage;

import android.accounts.Account;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Scope;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zw3 extends i5 {
    public static final Parcelable.Creator<zw3> CREATOR = new m8(22);
    public static final Scope[] G = new Scope[0];
    public static final y53[] H = new y53[0];
    public final int a;
    public final int b;
    public final int c;
    public String d;
    public IBinder e;
    public Scope[] f;
    public Bundle k;
    public Account n;
    public y53[] p;
    public y53[] q;
    public final boolean r;
    public final int t;
    public boolean x;
    public final String y;

    public zw3(int i, int i2, int i3, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, y53[] y53VarArr, y53[] y53VarArr2, boolean z, int i4, boolean z2, String str2) {
        scopeArr = scopeArr == null ? G : scopeArr;
        bundle = bundle == null ? new Bundle() : bundle;
        y53[] y53VarArr3 = H;
        y53VarArr = y53VarArr == null ? y53VarArr3 : y53VarArr;
        y53VarArr2 = y53VarArr2 == null ? y53VarArr3 : y53VarArr2;
        this.a = i;
        this.b = i2;
        this.c = i3;
        if ("com.google.android.gms".equals(str)) {
            this.d = "com.google.android.gms";
        } else {
            this.d = str;
        }
        if (i < 2) {
            Account accountA = null;
            if (iBinder != null) {
                int i5 = x6.b;
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
                IInterface uv9Var = iInterfaceQueryLocalInterface instanceof n74 ? (n74) iInterfaceQueryLocalInterface : new uv9(iBinder);
                long jClearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    try {
                        accountA = ((uv9) uv9Var).a();
                    } catch (RemoteException unused) {
                        Log.w("AccountAccessor", "Remote account accessor probably died");
                    }
                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                    throw th;
                }
            }
            this.n = accountA;
        } else {
            this.e = iBinder;
            this.n = account;
        }
        this.f = scopeArr;
        this.k = bundle;
        this.p = y53VarArr;
        this.q = y53VarArr2;
        this.r = z;
        this.t = i4;
        this.x = z2;
        this.y = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        m8.a(this, parcel, i);
    }
}
