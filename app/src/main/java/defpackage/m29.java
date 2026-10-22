package defpackage;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class m29 extends i5 {
    public static final Parcelable.Creator<m29> CREATOR = new mn0(7);
    public final int a;
    public final Account b;
    public final int c;
    public final GoogleSignInAccount d;

    public m29(int i, Account account, int i2, GoogleSignInAccount googleSignInAccount) {
        this.a = i;
        this.b = account;
        this.c = i2;
        this.d = googleSignInAccount;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.D0(parcel, 1, 4);
        parcel.writeInt(this.a);
        yc9.v0(parcel, 2, this.b, i);
        yc9.D0(parcel, 3, 4);
        parcel.writeInt(this.c);
        yc9.v0(parcel, 4, this.d, i);
        yc9.G0(parcel, iF0);
    }
}
