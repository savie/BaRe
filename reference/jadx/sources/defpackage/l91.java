package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l91 implements Parcelable.Creator {
    public final /* synthetic */ int a;

    public /* synthetic */ l91(int i) {
        this.a = i;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        boolean zU = false;
        int iV = 0;
        o22 o22Var = null;
        String strQ = null;
        switch (this.a) {
            case 0:
                int iK0 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK0) {
                    int i = parcel.readInt();
                    if (((char) i) != 1) {
                        jb9.e0(parcel, i);
                    } else {
                        zU = jb9.U(parcel, i);
                    }
                }
                jb9.x(parcel, iK0);
                return new k91(zU);
            case 1:
                int iK1 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK1) {
                    int i2 = parcel.readInt();
                    if (((char) i2) != 1) {
                        jb9.e0(parcel, i2);
                    } else {
                        o22Var = (o22) jb9.p(parcel, i2, o22.CREATOR);
                    }
                }
                jb9.x(parcel, iK1);
                return new aw3(o22Var);
            case 2:
                int iK2 = jb9.k0(parcel);
                boolean zU2 = false;
                int iV2 = 0;
                String strQ2 = null;
                String strQ3 = null;
                String strQ4 = null;
                String strQ5 = null;
                ArrayList arrayListT = null;
                while (parcel.dataPosition() < iK2) {
                    int i3 = parcel.readInt();
                    switch ((char) i3) {
                        case 1:
                            strQ2 = jb9.q(parcel, i3);
                            break;
                        case 2:
                            strQ3 = jb9.q(parcel, i3);
                            break;
                        case 3:
                            strQ4 = jb9.q(parcel, i3);
                            break;
                        case 4:
                            strQ5 = jb9.q(parcel, i3);
                            break;
                        case 5:
                            zU2 = jb9.U(parcel, i3);
                            break;
                        case 6:
                            iV2 = jb9.V(parcel, i3);
                            break;
                        case 7:
                            arrayListT = jb9.t(parcel, i3, e39.CREATOR);
                            break;
                        default:
                            jb9.e0(parcel, i3);
                            break;
                    }
                }
                jb9.x(parcel, iK2);
                return new ax3(strQ2, strQ3, strQ4, strQ5, zU2, iV2, arrayListT);
            case 3:
                String string = parcel.readString();
                if (string == null) {
                    string = "";
                }
                try {
                    return el6.c(string);
                } catch (dl6 e) {
                    y5.k(e);
                    return null;
                }
            case 4:
                int iK3 = jb9.k0(parcel);
                String strQ6 = null;
                String strQ7 = null;
                String strQ8 = null;
                j69 j69Var = null;
                String strQ9 = null;
                String strQ10 = null;
                String strQ11 = null;
                while (parcel.dataPosition() < iK3) {
                    int i4 = parcel.readInt();
                    switch ((char) i4) {
                        case 1:
                            strQ6 = jb9.q(parcel, i4);
                            break;
                        case 2:
                            strQ7 = jb9.q(parcel, i4);
                            break;
                        case 3:
                            strQ8 = jb9.q(parcel, i4);
                            break;
                        case 4:
                            j69Var = (j69) jb9.p(parcel, i4, j69.CREATOR);
                            break;
                        case 5:
                            strQ9 = jb9.q(parcel, i4);
                            break;
                        case 6:
                            strQ10 = jb9.q(parcel, i4);
                            break;
                        case 7:
                            strQ11 = jb9.q(parcel, i4);
                            break;
                        default:
                            jb9.e0(parcel, i4);
                            break;
                    }
                }
                jb9.x(parcel, iK3);
                return new ua9(strQ6, strQ7, strQ8, j69Var, strQ9, strQ10, strQ11);
            default:
                int iK4 = jb9.k0(parcel);
                int iV3 = 0;
                while (parcel.dataPosition() < iK4) {
                    int i5 = parcel.readInt();
                    char c = (char) i5;
                    if (c == 2) {
                        iV = jb9.V(parcel, i5);
                    } else if (c == 3) {
                        strQ = jb9.q(parcel, i5);
                    } else if (c != 4) {
                        jb9.e0(parcel, i5);
                    } else {
                        iV3 = jb9.V(parcel, i5);
                    }
                }
                jb9.x(parcel, iK4);
                return new o80(iV, iV3, strQ);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        switch (this.a) {
            case 0:
                return new k91[i];
            case 1:
                return new aw3[i];
            case 2:
                return new ax3[i];
            case 3:
                return new el6[i];
            case 4:
                return new ua9[i];
            default:
                return new o80[i];
        }
    }
}
