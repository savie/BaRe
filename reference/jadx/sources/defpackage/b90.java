package defpackage;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.c0;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelledApp;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b90 implements Parcelable.Creator {
    public final /* synthetic */ int a;

    public /* synthetic */ b90(int i) {
        this.a = i;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iV = 0;
        String strQ = null;
        String strQ2 = null;
        String strQ3 = null;
        byte[] bArrN = null;
        Bundle bundleM = null;
        switch (this.a) {
            case 0:
                return new f90(parcel);
            case 1:
                int iK0 = jb9.k0(parcel);
                Bundle bundleM2 = null;
                while (parcel.dataPosition() < iK0) {
                    int i = parcel.readInt();
                    char c = (char) i;
                    if (c == 1) {
                        strQ = jb9.q(parcel, i);
                    } else if (c != 2) {
                        jb9.e0(parcel, i);
                    } else {
                        bundleM2 = jb9.m(parcel, i);
                    }
                }
                jb9.x(parcel, iK0);
                return new j12(bundleM2, strQ);
            case 2:
                parcel.getClass();
                return new lk3(parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0, parcel.readInt(), parcel.readInt());
            case 3:
                parcel.getClass();
                return new FolderItem(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readLong());
            case 4:
                return new c0(parcel);
            case 5:
                int iK1 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK1) {
                    int i2 = parcel.readInt();
                    if (((char) i2) != 1) {
                        jb9.e0(parcel, i2);
                    } else {
                        bundleM = jb9.m(parcel, i2);
                    }
                }
                jb9.x(parcel, iK1);
                return new yw3(bundleM);
            case 6:
                parcel.getClass();
                return new LabelledApp(parcel.readString(), parcel.readString(), parcel.createStringArrayList());
            case 7:
                parcel.getClass();
                String string = parcel.readString();
                int i3 = parcel.readInt();
                ArrayList arrayList = new ArrayList(i3);
                for (int i4 = 0; i4 != i3; i4++) {
                    arrayList.add(j17.CREATOR.createFromParcel(parcel));
                }
                return new i17(string, arrayList, parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.createCharArray(), parcel.readString(), parcel.readLong(), parcel.readInt() != 0);
            case 8:
                zk7 zk7Var = new zk7();
                zk7Var.a = parcel.readInt();
                zk7Var.b = parcel.readInt();
                int i5 = parcel.readInt();
                zk7Var.c = i5;
                if (i5 > 0) {
                    int[] iArr = new int[i5];
                    zk7Var.d = iArr;
                    parcel.readIntArray(iArr);
                }
                int i6 = parcel.readInt();
                zk7Var.e = i6;
                if (i6 > 0) {
                    int[] iArr2 = new int[i6];
                    zk7Var.f = iArr2;
                    parcel.readIntArray(iArr2);
                }
                zk7Var.n = parcel.readInt() == 1;
                zk7Var.p = parcel.readInt() == 1;
                zk7Var.q = parcel.readInt() == 1;
                zk7Var.k = parcel.readArrayList(yk7.class.getClassLoader());
                return zk7Var;
            case XmlPullParser.COMMENT /* 9 */:
                int iK2 = jb9.k0(parcel);
                String strQ4 = null;
                String strQ5 = null;
                String strQ6 = null;
                String strQ7 = null;
                Uri uri = null;
                String strQ8 = null;
                String strQ9 = null;
                String strQ10 = null;
                na6 na6Var = null;
                while (parcel.dataPosition() < iK2) {
                    int i7 = parcel.readInt();
                    switch ((char) i7) {
                        case 1:
                            strQ4 = jb9.q(parcel, i7);
                            break;
                        case 2:
                            strQ5 = jb9.q(parcel, i7);
                            break;
                        case 3:
                            strQ6 = jb9.q(parcel, i7);
                            break;
                        case 4:
                            strQ7 = jb9.q(parcel, i7);
                            break;
                        case 5:
                            uri = (Uri) jb9.p(parcel, i7, Uri.CREATOR);
                            break;
                        case 6:
                            strQ8 = jb9.q(parcel, i7);
                            break;
                        case 7:
                            strQ9 = jb9.q(parcel, i7);
                            break;
                        case '\b':
                            strQ10 = jb9.q(parcel, i7);
                            break;
                        case XmlPullParser.COMMENT /* 9 */:
                            na6Var = (na6) jb9.p(parcel, i7, na6.CREATOR);
                            break;
                        default:
                            jb9.e0(parcel, i7);
                            break;
                    }
                }
                jb9.x(parcel, iK2);
                return new jf7(strQ4, strQ5, strQ6, strQ7, uri, strQ8, strQ9, strQ10, na6Var);
            case 10:
                int iK3 = jb9.k0(parcel);
                long jX = 0;
                while (parcel.dataPosition() < iK3) {
                    int i8 = parcel.readInt();
                    if (((char) i8) != 1) {
                        jb9.e0(parcel, i8);
                    } else {
                        jX = jb9.X(parcel, i8);
                    }
                }
                jb9.x(parcel, iK3);
                return new y39(jX);
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                int iK4 = jb9.k0(parcel);
                String strQ11 = null;
                String strQ12 = null;
                byte[] bArrN2 = null;
                n80 n80Var = null;
                m80 m80Var = null;
                o80 o80Var = null;
                j80 j80Var = null;
                String strQ13 = null;
                while (parcel.dataPosition() < iK4) {
                    int i9 = parcel.readInt();
                    switch ((char) i9) {
                        case 1:
                            strQ11 = jb9.q(parcel, i9);
                            break;
                        case 2:
                            strQ12 = jb9.q(parcel, i9);
                            break;
                        case 3:
                            bArrN2 = jb9.n(parcel, i9);
                            break;
                        case 4:
                            n80Var = (n80) jb9.p(parcel, i9, n80.CREATOR);
                            break;
                        case 5:
                            m80Var = (m80) jb9.p(parcel, i9, m80.CREATOR);
                            break;
                        case 6:
                            o80Var = (o80) jb9.p(parcel, i9, o80.CREATOR);
                            break;
                        case 7:
                            j80Var = (j80) jb9.p(parcel, i9, j80.CREATOR);
                            break;
                        case '\b':
                            strQ13 = jb9.q(parcel, i9);
                            break;
                        case XmlPullParser.COMMENT /* 9 */:
                            jb9.q(parcel, i9);
                            break;
                        default:
                            jb9.e0(parcel, i9);
                            break;
                    }
                }
                jb9.x(parcel, iK4);
                return new na6(strQ11, strQ12, bArrN2, n80Var, m80Var, o80Var, j80Var, strQ13);
            case 12:
                int iK5 = jb9.k0(parcel);
                String strQ14 = null;
                String strQ15 = null;
                String strQ16 = null;
                while (parcel.dataPosition() < iK5) {
                    int i10 = parcel.readInt();
                    char c2 = (char) i10;
                    if (c2 == 2) {
                        bArrN = jb9.n(parcel, i10);
                    } else if (c2 == 3) {
                        strQ14 = jb9.q(parcel, i10);
                    } else if (c2 == 4) {
                        strQ15 = jb9.q(parcel, i10);
                    } else if (c2 != 5) {
                        jb9.e0(parcel, i10);
                    } else {
                        strQ16 = jb9.q(parcel, i10);
                    }
                }
                jb9.x(parcel, iK5);
                return new xa6(bArrN, strQ14, strQ15, strQ16);
            case 13:
                try {
                    return t70.c(parcel.readString());
                } catch (s70 e) {
                    y5.k(e);
                    return null;
                }
            case 14:
                int iK6 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK6) {
                    int i11 = parcel.readInt();
                    char c3 = (char) i11;
                    if (c3 == 1) {
                        iV = jb9.V(parcel, i11);
                    } else if (c3 != 2) {
                        jb9.e0(parcel, i11);
                    } else {
                        strQ3 = jb9.q(parcel, i11);
                    }
                }
                jb9.x(parcel, iK6);
                return new ka9(iV, strQ3);
            default:
                int iK7 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK7) {
                    int i12 = parcel.readInt();
                    if (((char) i12) != 2) {
                        jb9.e0(parcel, i12);
                    } else {
                        strQ2 = jb9.q(parcel, i12);
                    }
                }
                jb9.x(parcel, iK7);
                return new d63(strQ2);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        switch (this.a) {
            case 0:
                return new f90[i];
            case 1:
                return new j12[i];
            case 2:
                return new lk3[i];
            case 3:
                return new FolderItem[i];
            case 4:
                return new c0[i];
            case 5:
                return new yw3[i];
            case 6:
                return new LabelledApp[i];
            case 7:
                return new i17[i];
            case 8:
                return new zk7[i];
            case XmlPullParser.COMMENT /* 9 */:
                return new jf7[i];
            case 10:
                return new y39[i];
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return new na6[i];
            case 12:
                return new xa6[i];
            case 13:
                return new t70[i];
            case 14:
                return new ka9[i];
            default:
                return new d63[i];
        }
    }
}
