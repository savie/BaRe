package defpackage;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.appconfigs.data.Config;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class eq1 implements Parcelable.Creator {
    public final /* synthetic */ int a;

    public /* synthetic */ eq1(int i) {
        this.a = i;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        ArrayList arrayList;
        String strQ = null;
        PendingIntent pendingIntent = null;
        Bundle bundleM = null;
        PendingIntent pendingIntent2 = null;
        switch (this.a) {
            case 0:
                parcel.getClass();
                int i = parcel.readInt();
                String string = parcel.readString();
                String string2 = parcel.readString();
                if (parcel.readInt() == 0) {
                    arrayList = null;
                } else {
                    int i2 = parcel.readInt();
                    ArrayList arrayList2 = new ArrayList(i2);
                    for (int i3 = 0; i3 != i2; i3++) {
                        arrayList2.add(ConfigSettings.CREATOR.createFromParcel(parcel));
                    }
                    arrayList = arrayList2;
                }
                return new Config(i, string, string2, arrayList, parcel.readInt() != 0 ? Long.valueOf(parcel.readLong()) : null);
            case 1:
                int iK0 = jb9.k0(parcel);
                j12 j12Var = null;
                while (parcel.dataPosition() < iK0) {
                    int i4 = parcel.readInt();
                    char c = (char) i4;
                    if (c == 1) {
                        pendingIntent2 = (PendingIntent) jb9.p(parcel, i4, PendingIntent.CREATOR);
                    } else if (c != 2) {
                        jb9.e0(parcel, i4);
                    } else {
                        j12Var = (j12) jb9.p(parcel, i4, j12.CREATOR);
                    }
                }
                jb9.x(parcel, iK0);
                return new d12(pendingIntent2, j12Var);
            case 2:
                int iK1 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK1) {
                    int i5 = parcel.readInt();
                    if (((char) i5) != 1) {
                        jb9.e0(parcel, i5);
                    } else {
                        bundleM = jb9.m(parcel, i5);
                    }
                }
                jb9.x(parcel, iK1);
                return new g22(bundleM);
            case 3:
                int iK2 = jb9.k0(parcel);
                String strQ2 = "";
                String strQ3 = strQ2;
                String strQ4 = strQ3;
                Bundle bundleM2 = null;
                Bundle bundleM3 = null;
                String strQ5 = null;
                while (parcel.dataPosition() < iK2) {
                    int i6 = parcel.readInt();
                    switch ((char) i6) {
                        case 1:
                            strQ2 = jb9.q(parcel, i6);
                            break;
                        case 2:
                            bundleM2 = jb9.m(parcel, i6);
                            break;
                        case 3:
                            bundleM3 = jb9.m(parcel, i6);
                            break;
                        case 4:
                            strQ5 = jb9.q(parcel, i6);
                            break;
                        case 5:
                            strQ3 = jb9.q(parcel, i6);
                            break;
                        case 6:
                            strQ4 = jb9.q(parcel, i6);
                            break;
                        default:
                            jb9.e0(parcel, i6);
                            break;
                    }
                }
                jb9.x(parcel, iK2);
                return new v22(strQ2, bundleM2, bundleM3, strQ5, strQ3, strQ4);
            case 4:
                wh3 wh3Var = new wh3();
                wh3Var.a = parcel.readInt();
                wh3Var.b = parcel.readInt();
                return wh3Var;
            case 5:
                return new ly4(parcel);
            case 6:
                int iK3 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK3) {
                    jb9.e0(parcel, parcel.readInt());
                }
                jb9.x(parcel, iK3);
                return new di6();
            case 7:
                parcel.getClass();
                String string3 = parcel.readString();
                String string4 = parcel.readString();
                int i7 = parcel.readInt();
                long j = parcel.readLong();
                String string5 = parcel.readString();
                d17 d17VarCreateFromParcel = d17.CREATOR.createFromParcel(parcel);
                e17 e17VarCreateFromParcel = e17.CREATOR.createFromParcel(parcel);
                c17 c17VarCreateFromParcel = c17.CREATOR.createFromParcel(parcel);
                int i8 = parcel.readInt();
                ArrayList arrayList3 = new ArrayList(i8);
                for (int i9 = 0; i9 != i8; i9++) {
                    arrayList3.add(k17.CREATOR.createFromParcel(parcel));
                }
                return new f17(string3, string4, i7, j, string5, d17VarCreateFromParcel, e17VarCreateFromParcel, c17VarCreateFromParcel, arrayList3, parcel.readInt());
            case 8:
                parcel.getClass();
                return new s17(parcel.readString(), parcel.readString(), parcel.readInt(), parcel.createStringArrayList(), parcel.readLong());
            case XmlPullParser.COMMENT /* 9 */:
                int iK4 = jb9.k0(parcel);
                int iV = -1;
                long jX = 0;
                long jX2 = 0;
                int iV2 = 0;
                int iV3 = 0;
                int iV4 = 0;
                int iV5 = 0;
                String strQ6 = null;
                String strQ7 = null;
                while (parcel.dataPosition() < iK4) {
                    int i10 = parcel.readInt();
                    switch ((char) i10) {
                        case 1:
                            iV2 = jb9.V(parcel, i10);
                            break;
                        case 2:
                            iV3 = jb9.V(parcel, i10);
                            break;
                        case 3:
                            iV4 = jb9.V(parcel, i10);
                            break;
                        case 4:
                            jX = jb9.X(parcel, i10);
                            break;
                        case 5:
                            jX2 = jb9.X(parcel, i10);
                            break;
                        case 6:
                            strQ6 = jb9.q(parcel, i10);
                            break;
                        case 7:
                            strQ7 = jb9.q(parcel, i10);
                            break;
                        case '\b':
                            iV5 = jb9.V(parcel, i10);
                            break;
                        case XmlPullParser.COMMENT /* 9 */:
                            iV = jb9.V(parcel, i10);
                            break;
                        default:
                            jb9.e0(parcel, i10);
                            break;
                    }
                }
                jb9.x(parcel, iK4);
                return new tf5(iV2, iV3, iV4, jX, jX2, strQ6, strQ7, iV5, iV);
            case 10:
                int iK5 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK5) {
                    int i11 = parcel.readInt();
                    if (((char) i11) != 1) {
                        jb9.e0(parcel, i11);
                    } else {
                        pendingIntent = (PendingIntent) jb9.p(parcel, i11, PendingIntent.CREATOR);
                    }
                }
                jb9.x(parcel, iK5);
                return new xp0(pendingIntent);
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                int iK6 = jb9.k0(parcel);
                String strQ8 = null;
                while (parcel.dataPosition() < iK6) {
                    int i12 = parcel.readInt();
                    char c2 = (char) i12;
                    if (c2 == 1) {
                        strQ = jb9.q(parcel, i12);
                    } else if (c2 != 2) {
                        jb9.e0(parcel, i12);
                    } else {
                        strQ8 = jb9.q(parcel, i12);
                    }
                }
                jb9.x(parcel, iK6);
                return new qz3(strQ, strQ8);
            case 12:
                try {
                    return wa6.c(parcel.readString());
                } catch (va6 e) {
                    y5.k(e);
                    return null;
                }
            case 13:
                int iK7 = jb9.k0(parcel);
                byte[] bArrN = null;
                byte[] bArrN2 = null;
                byte[] bArrN3 = null;
                String[] strArr = null;
                while (parcel.dataPosition() < iK7) {
                    int i13 = parcel.readInt();
                    char c3 = (char) i13;
                    if (c3 == 2) {
                        bArrN = jb9.n(parcel, i13);
                    } else if (c3 == 3) {
                        bArrN2 = jb9.n(parcel, i13);
                    } else if (c3 == 4) {
                        bArrN3 = jb9.n(parcel, i13);
                    } else if (c3 != 5) {
                        jb9.e0(parcel, i13);
                    } else {
                        int iZ = jb9.Z(parcel, i13);
                        int iDataPosition = parcel.dataPosition();
                        if (iZ == 0) {
                            strArr = null;
                        } else {
                            String[] strArrCreateStringArray = parcel.createStringArray();
                            parcel.setDataPosition(iDataPosition + iZ);
                            strArr = strArrCreateStringArray;
                        }
                    }
                }
                jb9.x(parcel, iK7);
                return new n80(bArrN, bArrN2, bArrN3, strArr);
            default:
                int iK8 = jb9.k0(parcel);
                String strQ9 = null;
                Boolean boolValueOf = null;
                String strQ10 = null;
                String strQ11 = null;
                while (parcel.dataPosition() < iK8) {
                    int i14 = parcel.readInt();
                    char c4 = (char) i14;
                    if (c4 == 2) {
                        strQ9 = jb9.q(parcel, i14);
                    } else if (c4 == 3) {
                        int iZ2 = jb9.Z(parcel, i14);
                        if (iZ2 == 0) {
                            boolValueOf = null;
                        } else {
                            jb9.o0(parcel, iZ2, 4);
                            boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
                        }
                    } else if (c4 == 4) {
                        strQ10 = jb9.q(parcel, i14);
                    } else if (c4 != 5) {
                        jb9.e0(parcel, i14);
                    } else {
                        strQ11 = jb9.q(parcel, i14);
                    }
                }
                jb9.x(parcel, iK8);
                return new p80(strQ9, boolValueOf, strQ10, strQ11);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        switch (this.a) {
            case 0:
                return new Config[i];
            case 1:
                return new d12[i];
            case 2:
                return new g22[i];
            case 3:
                return new v22[i];
            case 4:
                return new wh3[i];
            case 5:
                return new ly4[i];
            case 6:
                return new di6[i];
            case 7:
                return new f17[i];
            case 8:
                return new s17[i];
            case XmlPullParser.COMMENT /* 9 */:
                return new tf5[i];
            case 10:
                return new xp0[i];
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return new qz3[i];
            case 12:
                return new wa6[i];
            case 13:
                return new n80[i];
            default:
                return new p80[i];
        }
    }
}
