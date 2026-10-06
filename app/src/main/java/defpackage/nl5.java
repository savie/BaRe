package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nl5 extends e3 {
    public static final Parcelable.Creator<nl5> CREATOR = new ml5(0);
    public Bundle c;

    public nl5(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.c = parcel.readBundle(classLoader == null ? nl5.class.getClassLoader() : classLoader);
    }

    @Override // defpackage.e3, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeBundle(this.c);
    }
}
