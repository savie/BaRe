package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.b;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yj0 implements Parcelable.Creator {
    public final /* synthetic */ int a;

    public /* synthetic */ yj0(int i) {
        this.a = i;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iV = 0;
        Bundle bundleM = null;
        String strQ = null;
        String strQ2 = null;
        ArrayList arrayListT = null;
        switch (this.a) {
            case 0:
                return new b(parcel);
            case 1:
                int iK0 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK0) {
                    int i = parcel.readInt();
                    if (((char) i) != 1) {
                        jb9.e0(parcel, i);
                    } else {
                        bundleM = jb9.m(parcel, i);
                    }
                }
                jb9.x(parcel, iK0);
                return new v32(bundleM);
            case 2:
                parcel.getClass();
                return new LabelParams(parcel.readString(), parcel.readString(), parcel.readString());
            case 3:
                parcel.getClass();
                return new j17(parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.createStringArrayList(), parcel.createStringArrayList(), parcel.readString());
            case 4:
                parcel.getClass();
                return new zn7((q63) parcel.readSerializable(), parcel.readInt() != 0, parcel.readInt() != 0);
            case 5:
                int iK1 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK1) {
                    int i2 = parcel.readInt();
                    char c = (char) i2;
                    if (c == 1) {
                        iV = jb9.V(parcel, i2);
                    } else if (c != 2) {
                        jb9.e0(parcel, i2);
                    } else {
                        arrayListT = jb9.t(parcel, i2, tf5.CREATOR);
                    }
                }
                jb9.x(parcel, iK1);
                return new sz7(iV, arrayListT);
            case 6:
                int iK2 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK2) {
                    jb9.e0(parcel, parcel.readInt());
                }
                jb9.x(parcel, iK2);
                return new i69();
            case 7:
                int iK3 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK3) {
                    int i3 = parcel.readInt();
                    if (((char) i3) != 1) {
                        jb9.e0(parcel, i3);
                    } else {
                        strQ2 = jb9.q(parcel, i3);
                    }
                }
                jb9.x(parcel, iK3);
                return new qx3(strQ2);
            case 8:
                int iK4 = jb9.k0(parcel);
                boolean zU = false;
                String strQ3 = null;
                String strQ4 = null;
                String strQ5 = null;
                String strQ6 = null;
                while (parcel.dataPosition() < iK4) {
                    int i4 = parcel.readInt();
                    char c2 = (char) i4;
                    if (c2 == 1) {
                        strQ3 = jb9.q(parcel, i4);
                    } else if (c2 == 2) {
                        strQ4 = jb9.q(parcel, i4);
                    } else if (c2 == 4) {
                        strQ5 = jb9.q(parcel, i4);
                    } else if (c2 == 5) {
                        zU = jb9.U(parcel, i4);
                    } else if (c2 != 6) {
                        jb9.e0(parcel, i4);
                    } else {
                        strQ6 = jb9.q(parcel, i4);
                    }
                }
                jb9.x(parcel, iK4);
                return new xz5(strQ3, strQ4, strQ5, strQ6, zU);
            case XmlPullParser.COMMENT /* 9 */:
                int iK5 = jb9.k0(parcel);
                String strQ7 = null;
                while (parcel.dataPosition() < iK5) {
                    int i5 = parcel.readInt();
                    char c3 = (char) i5;
                    if (c3 == 1) {
                        strQ = jb9.q(parcel, i5);
                    } else if (c3 != 2) {
                        jb9.e0(parcel, i5);
                    } else {
                        strQ7 = jb9.q(parcel, i5);
                    }
                }
                jb9.x(parcel, iK5);
                return new sb8(strQ, strQ7);
            case 10:
                int iK6 = jb9.k0(parcel);
                long jX = -1;
                int iV2 = 0;
                boolean zU2 = false;
                String strQ8 = null;
                while (parcel.dataPosition() < iK6) {
                    int i6 = parcel.readInt();
                    char c4 = (char) i6;
                    if (c4 == 1) {
                        strQ8 = jb9.q(parcel, i6);
                    } else if (c4 == 2) {
                        iV2 = jb9.V(parcel, i6);
                    } else if (c4 == 3) {
                        jX = jb9.X(parcel, i6);
                    } else if (c4 != 4) {
                        jb9.e0(parcel, i6);
                    } else {
                        zU2 = jb9.U(parcel, i6);
                    }
                }
                jb9.x(parcel, iK6);
                return new y53(strQ8, iV2, jX, zU2);
            default:
                int iK7 = jb9.k0(parcel);
                byte[] bArrN = null;
                byte[] bArrN2 = null;
                byte[] bArrN3 = null;
                byte[] bArrN4 = null;
                byte[] bArrN5 = null;
                while (parcel.dataPosition() < iK7) {
                    int i7 = parcel.readInt();
                    char c5 = (char) i7;
                    if (c5 == 2) {
                        bArrN = jb9.n(parcel, i7);
                    } else if (c5 == 3) {
                        bArrN2 = jb9.n(parcel, i7);
                    } else if (c5 == 4) {
                        bArrN3 = jb9.n(parcel, i7);
                    } else if (c5 == 5) {
                        bArrN4 = jb9.n(parcel, i7);
                    } else if (c5 != 6) {
                        jb9.e0(parcel, i7);
                    } else {
                        bArrN5 = jb9.n(parcel, i7);
                    }
                }
                jb9.x(parcel, iK7);
                return new m80(bArrN, bArrN2, bArrN3, bArrN4, bArrN5);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        switch (this.a) {
            case 0:
                return new b[i];
            case 1:
                return new v32[i];
            case 2:
                return new LabelParams[i];
            case 3:
                return new j17[i];
            case 4:
                return new zn7[i];
            case 5:
                return new sz7[i];
            case 6:
                return new i69[i];
            case 7:
                return new qx3[i];
            case 8:
                return new xz5[i];
            case XmlPullParser.COMMENT /* 9 */:
                return new sb8[i];
            case 10:
                return new y53[i];
            default:
                return new m80[i];
        }
    }
}
