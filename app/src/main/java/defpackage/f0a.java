package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f0a implements gx6 {
    public static final Parcelable.Creator<f0a> CREATOR = new fm(10);
    public p49 a;
    public yx9 b;
    public ua9 c;

    public f0a(p49 p49Var) {
        this.a = p49Var;
        ArrayList arrayList = p49Var.e;
        this.b = null;
        for (int i = 0; i < arrayList.size(); i++) {
            if (!TextUtils.isEmpty(((w1a) arrayList.get(i)).p)) {
                this.b = new yx9(((w1a) arrayList.get(i)).b, ((w1a) arrayList.get(i)).p, p49Var.q);
            }
        }
        if (this.b == null) {
            this.b = new yx9(p49Var.q);
        }
        this.c = p49Var.r;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.v0(parcel, 1, this.a, i);
        yc9.v0(parcel, 2, this.b, i);
        yc9.v0(parcel, 3, this.c, i);
        yc9.G0(parcel, iF0);
    }
}
