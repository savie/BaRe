package com.google.android.gms.identitycredentials;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import com.google.android.gms.common.internal.ReflectedParcelable;
import defpackage.i5;
import defpackage.m10;
import defpackage.yc9;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class GetCredentialRequest extends i5 implements ReflectedParcelable {
    public static final Parcelable.Creator<GetCredentialRequest> CREATOR = new m10(6);
    public final List a;
    public final Bundle b;
    public final String c;
    public final ResultReceiver d;

    public GetCredentialRequest(ArrayList arrayList, Bundle bundle, String str, ResultReceiver resultReceiver) {
        arrayList.getClass();
        bundle.getClass();
        resultReceiver.getClass();
        this.a = arrayList;
        this.b = bundle;
        this.c = str;
        this.d = resultReceiver;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        int iF0 = yc9.F0(parcel, 20293);
        yc9.z0(parcel, 1, this.a);
        yc9.n0(parcel, 2, this.b);
        yc9.w0(parcel, 3, this.c);
        yc9.v0(parcel, 4, this.d, i);
        yc9.G0(parcel, iF0);
    }
}
