package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xk0 implements Parcelable {
    public static final Parcelable.Creator<xk0> CREATOR = new m10(2);
    public CharSequence G;
    public CharSequence H;
    public int I;
    public int J;
    public Integer K;
    public Integer M;
    public Integer N;
    public Integer O;
    public Integer P;
    public Integer Q;
    public Integer R;
    public Integer S;
    public Integer T;
    public Integer U;
    public Boolean V;
    public Integer W;
    public int a;
    public Integer b;
    public Integer c;
    public Integer d;
    public Integer e;
    public Integer f;
    public Integer k;
    public Integer n;
    public String q;
    public Locale y;
    public int p = 255;
    public int r = -2;
    public int t = -2;
    public int x = -2;
    public Boolean L = Boolean.TRUE;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a);
        parcel.writeSerializable(this.b);
        parcel.writeSerializable(this.c);
        parcel.writeSerializable(this.d);
        parcel.writeSerializable(this.e);
        parcel.writeSerializable(this.f);
        parcel.writeSerializable(this.k);
        parcel.writeSerializable(this.n);
        parcel.writeInt(this.p);
        parcel.writeString(this.q);
        parcel.writeInt(this.r);
        parcel.writeInt(this.t);
        parcel.writeInt(this.x);
        CharSequence charSequence = this.G;
        parcel.writeString(charSequence != null ? charSequence.toString() : null);
        CharSequence charSequence2 = this.H;
        parcel.writeString(charSequence2 != null ? charSequence2.toString() : null);
        parcel.writeInt(this.I);
        parcel.writeSerializable(this.K);
        parcel.writeSerializable(this.M);
        parcel.writeSerializable(this.N);
        parcel.writeSerializable(this.O);
        parcel.writeSerializable(this.P);
        parcel.writeSerializable(this.Q);
        parcel.writeSerializable(this.R);
        parcel.writeSerializable(this.U);
        parcel.writeSerializable(this.S);
        parcel.writeSerializable(this.T);
        parcel.writeSerializable(this.L);
        parcel.writeSerializable(this.y);
        parcel.writeSerializable(this.V);
        parcel.writeSerializable(this.W);
    }
}
