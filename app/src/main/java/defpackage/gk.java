package defpackage;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.gms.fido.common.Transport;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gk implements Parcelable.Creator {
    public final /* synthetic */ int a;

    public /* synthetic */ gk(int i) {
        this.a = i;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iV = 0;
        int iV2 = 0;
        boolean zU = false;
        int iV3 = 0;
        boolean zU2 = false;
        Bundle bundleM = null;
        String strQ = null;
        String strQ2 = null;
        ArrayList arrayListT = null;
        String strQ3 = null;
        String strQ4 = null;
        String strQ5 = null;
        switch (this.a) {
            case 0:
                parcel.getClass();
                return new hk(parcel.readString(), parcel.readString(), parcel.readInt() != 0);
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
                return new wa4(bundleM);
            case 2:
                parcel.getClass();
                return new n17(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null);
            case 3:
                int iK1 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK1) {
                    int i2 = parcel.readInt();
                    char c = (char) i2;
                    if (c == 1) {
                        zU2 = jb9.U(parcel, i2);
                    } else if (c != 2) {
                        jb9.e0(parcel, i2);
                    } else {
                        strQ5 = jb9.q(parcel, i2);
                    }
                }
                jb9.x(parcel, iK1);
                return new tp0(strQ5, zU2);
            case 4:
                try {
                    return Transport.c(parcel.readString());
                } catch (sa8 e) {
                    y5.k(e);
                    return null;
                }
            case 5:
                int iK2 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK2) {
                    int i3 = parcel.readInt();
                    if (((char) i3) != 1) {
                        jb9.e0(parcel, i3);
                    } else {
                        strQ4 = jb9.q(parcel, i3);
                    }
                }
                jb9.x(parcel, iK2);
                return new s59(strQ4);
            case 6:
                int iK3 = jb9.k0(parcel);
                byte[] bArrN = null;
                byte[] bArrN2 = null;
                byte[] bArrN3 = null;
                while (parcel.dataPosition() < iK3) {
                    int i4 = parcel.readInt();
                    char c2 = (char) i4;
                    if (c2 == 1) {
                        bArrN = jb9.n(parcel, i4);
                    } else if (c2 == 2) {
                        bArrN2 = jb9.n(parcel, i4);
                    } else if (c2 == 3) {
                        bArrN3 = jb9.n(parcel, i4);
                    } else if (c2 != 4) {
                        jb9.e0(parcel, i4);
                    } else {
                        iV3 = jb9.V(parcel, i4);
                    }
                }
                jb9.x(parcel, iK3);
                return new h69(bArrN == null ? null : wk9.l(bArrN, bArrN.length), bArrN2 == null ? null : wk9.l(bArrN2, bArrN2.length), bArrN3 != null ? wk9.l(bArrN3, bArrN3.length) : null, iV3);
            case 7:
                int iK4 = jb9.k0(parcel);
                String strQ6 = null;
                String strQ7 = null;
                String strQ8 = null;
                long jX = 0;
                while (parcel.dataPosition() < iK4) {
                    int i5 = parcel.readInt();
                    char c3 = (char) i5;
                    if (c3 == 1) {
                        strQ6 = jb9.q(parcel, i5);
                    } else if (c3 == 2) {
                        strQ7 = jb9.q(parcel, i5);
                    } else if (c3 == 3) {
                        jX = jb9.X(parcel, i5);
                    } else if (c3 != 4) {
                        jb9.e0(parcel, i5);
                    } else {
                        strQ8 = jb9.q(parcel, i5);
                    }
                }
                jb9.x(parcel, iK4);
                return new yz5(strQ6, strQ7, jX, strQ8);
            case 8:
                int iK5 = jb9.k0(parcel);
                boolean zU3 = false;
                String strQ9 = null;
                while (parcel.dataPosition() < iK5) {
                    int i6 = parcel.readInt();
                    char c4 = (char) i6;
                    if (c4 == 2) {
                        strQ3 = jb9.q(parcel, i6);
                    } else if (c4 == 3) {
                        strQ9 = jb9.q(parcel, i6);
                    } else if (c4 == 4) {
                        zU = jb9.U(parcel, i6);
                    } else if (c4 != 5) {
                        jb9.e0(parcel, i6);
                    } else {
                        zU3 = jb9.U(parcel, i6);
                    }
                }
                jb9.x(parcel, iK5);
                return new hh8(strQ3, strQ9, zU, zU3);
            case XmlPullParser.COMMENT /* 9 */:
                int iK6 = jb9.k0(parcel);
                ArrayList arrayListT2 = null;
                while (parcel.dataPosition() < iK6) {
                    int i7 = parcel.readInt();
                    char c5 = (char) i7;
                    if (c5 == 1) {
                        arrayListT = jb9.t(parcel, i7, yz5.CREATOR);
                    } else if (c5 != 2) {
                        jb9.e0(parcel, i7);
                    } else {
                        arrayListT2 = jb9.t(parcel, i7, v88.CREATOR);
                    }
                }
                jb9.x(parcel, iK6);
                return new u99(arrayListT, arrayListT2);
            case 10:
                int iK7 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK7) {
                    int i8 = parcel.readInt();
                    char c6 = (char) i8;
                    if (c6 == 1) {
                        iV2 = jb9.V(parcel, i8);
                    } else if (c6 != 2) {
                        jb9.e0(parcel, i8);
                    } else {
                        strQ2 = jb9.q(parcel, i8);
                    }
                }
                jb9.x(parcel, iK7);
                return new Scope(iV2, strQ2);
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                int iK8 = jb9.k0(parcel);
                PendingIntent pendingIntent = null;
                hs1 hs1Var = null;
                while (parcel.dataPosition() < iK8) {
                    int i9 = parcel.readInt();
                    char c7 = (char) i9;
                    if (c7 == 1) {
                        iV = jb9.V(parcel, i9);
                    } else if (c7 == 2) {
                        strQ = jb9.q(parcel, i9);
                    } else if (c7 == 3) {
                        pendingIntent = (PendingIntent) jb9.p(parcel, i9, PendingIntent.CREATOR);
                    } else if (c7 != 4) {
                        jb9.e0(parcel, i9);
                    } else {
                        hs1Var = (hs1) jb9.p(parcel, i9, hs1.CREATOR);
                    }
                }
                jb9.x(parcel, iK8);
                return new Status(iV, strQ, pendingIntent, hs1Var);
            default:
                int iK9 = jb9.k0(parcel);
                boolean zU4 = false;
                boolean zU5 = false;
                int iV4 = 0;
                kq6 kq6Var = null;
                int[] iArr = null;
                int[] iArr2 = null;
                while (parcel.dataPosition() < iK9) {
                    int i10 = parcel.readInt();
                    switch ((char) i10) {
                        case 1:
                            kq6Var = (kq6) jb9.p(parcel, i10, kq6.CREATOR);
                            break;
                        case 2:
                            zU4 = jb9.U(parcel, i10);
                            break;
                        case 3:
                            zU5 = jb9.U(parcel, i10);
                            break;
                        case 4:
                            int iZ = jb9.Z(parcel, i10);
                            int iDataPosition = parcel.dataPosition();
                            if (iZ != 0) {
                                int[] iArrCreateIntArray = parcel.createIntArray();
                                parcel.setDataPosition(iDataPosition + iZ);
                                iArr = iArrCreateIntArray;
                            } else {
                                iArr = null;
                            }
                            break;
                        case 5:
                            iV4 = jb9.V(parcel, i10);
                            break;
                        case 6:
                            int iZ2 = jb9.Z(parcel, i10);
                            int iDataPosition2 = parcel.dataPosition();
                            if (iZ2 != 0) {
                                int[] iArrCreateIntArray2 = parcel.createIntArray();
                                parcel.setDataPosition(iDataPosition2 + iZ2);
                                iArr2 = iArrCreateIntArray2;
                            } else {
                                iArr2 = null;
                            }
                            break;
                        default:
                            jb9.e0(parcel, i10);
                            break;
                    }
                }
                jb9.x(parcel, iK9);
                return new is1(kq6Var, zU4, zU5, iArr, iV4, iArr2);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        switch (this.a) {
            case 0:
                return new hk[i];
            case 1:
                return new wa4[i];
            case 2:
                return new n17[i];
            case 3:
                return new tp0[i];
            case 4:
                return new Transport[i];
            case 5:
                return new s59[i];
            case 6:
                return new h69[i];
            case 7:
                return new yz5[i];
            case 8:
                return new hh8[i];
            case XmlPullParser.COMMENT /* 9 */:
                return new u99[i];
            case 10:
                return new Scope[i];
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return new Status[i];
            default:
                return new is1[i];
        }
    }
}
