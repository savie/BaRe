package defpackage;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.versionedparcelable.ParcelImpl;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.model.app.LocalMetadata;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fm implements Parcelable.Creator {
    public final /* synthetic */ int a;

    public /* synthetic */ fm(int i) {
        this.a = i;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        boolean zU = false;
        int iV = 0;
        String strQ = null;
        ArrayList arrayListT = null;
        String strQ2 = null;
        p49 p49Var = null;
        PendingIntent pendingIntent = null;
        String strQ3 = null;
        switch (this.a) {
            case 0:
                parcel.getClass();
                return new gm(hk.CREATOR.createFromParcel(parcel), LocalMetadata.CREATOR.createFromParcel(parcel));
            case 1:
                int iK0 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK0) {
                    jb9.e0(parcel, parcel.readInt());
                }
                jb9.x(parcel, iK0);
                return new e91();
            case 2:
                return new ParcelImpl(parcel);
            case 3:
                int iK1 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK1) {
                    jb9.e0(parcel, parcel.readInt());
                }
                jb9.x(parcel, iK1);
                return new gi6();
            case 4:
                parcel.getClass();
                return new g17(parcel.readString(), parcel.readInt());
            case 5:
                int iK2 = jb9.k0(parcel);
                String strQ4 = null;
                Bundle bundleM = null;
                while (parcel.dataPosition() < iK2) {
                    int i = parcel.readInt();
                    char c = (char) i;
                    if (c == 1) {
                        strQ = jb9.q(parcel, i);
                    } else if (c == 2) {
                        strQ4 = jb9.q(parcel, i);
                    } else if (c != 3) {
                        jb9.e0(parcel, i);
                    } else {
                        bundleM = jb9.m(parcel, i);
                    }
                }
                jb9.x(parcel, iK2);
                return new of7(strQ, strQ4, bundleM);
            case 6:
                yk7 yk7Var = new yk7();
                yk7Var.a = parcel.readInt();
                yk7Var.b = parcel.readInt();
                yk7Var.d = parcel.readInt() == 1;
                int i2 = parcel.readInt();
                if (i2 > 0) {
                    int[] iArr = new int[i2];
                    yk7Var.c = iArr;
                    parcel.readIntArray(iArr);
                }
                return yk7Var;
            case 7:
                int iK3 = jb9.k0(parcel);
                Bundle bundleM2 = null;
                int iV2 = 0;
                while (parcel.dataPosition() < iK3) {
                    int i3 = parcel.readInt();
                    char c2 = (char) i3;
                    if (c2 == 1) {
                        iV = jb9.V(parcel, i3);
                    } else if (c2 == 2) {
                        iV2 = jb9.V(parcel, i3);
                    } else if (c2 != 3) {
                        jb9.e0(parcel, i3);
                    } else {
                        bundleM2 = jb9.m(parcel, i3);
                    }
                }
                jb9.x(parcel, iK3);
                return new y04(iV, iV2, bundleM2);
            case 8:
                int iK4 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK4) {
                    int i4 = parcel.readInt();
                    char c3 = (char) i4;
                    if (c3 == 1) {
                        strQ3 = jb9.q(parcel, i4);
                    } else if (c3 != 2) {
                        jb9.e0(parcel, i4);
                    } else {
                        zU = jb9.U(parcel, i4);
                    }
                }
                jb9.x(parcel, iK4);
                return new e39(strQ3, zU);
            case XmlPullParser.COMMENT /* 9 */:
                int iK5 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK5) {
                    int i5 = parcel.readInt();
                    if (((char) i5) != 1) {
                        jb9.e0(parcel, i5);
                    } else {
                        pendingIntent = (PendingIntent) jb9.p(parcel, i5, PendingIntent.CREATOR);
                    }
                }
                jb9.x(parcel, iK5);
                return new lx6(pendingIntent);
            case 10:
                int iK6 = jb9.k0(parcel);
                yx9 yx9Var = null;
                ua9 ua9Var = null;
                while (parcel.dataPosition() < iK6) {
                    int i6 = parcel.readInt();
                    char c4 = (char) i6;
                    if (c4 == 1) {
                        p49Var = (p49) jb9.p(parcel, i6, p49.CREATOR);
                    } else if (c4 == 2) {
                        yx9Var = (yx9) jb9.p(parcel, i6, yx9.CREATOR);
                    } else if (c4 != 3) {
                        jb9.e0(parcel, i6);
                    } else {
                        ua9Var = (ua9) jb9.p(parcel, i6, ua9.CREATOR);
                    }
                }
                jb9.x(parcel, iK6);
                f0a f0aVar = new f0a();
                f0aVar.a = p49Var;
                f0aVar.b = yx9Var;
                f0aVar.c = ua9Var;
                return f0aVar;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                int iK7 = jb9.k0(parcel);
                while (true) {
                    byte[][] bArr = null;
                    while (true) {
                        if (parcel.dataPosition() >= iK7) {
                            jb9.x(parcel, iK7);
                            return new a79(bArr);
                        }
                        int i7 = parcel.readInt();
                        if (((char) i7) != 1) {
                            jb9.e0(parcel, i7);
                        } else {
                            int iZ = jb9.Z(parcel, i7);
                            int iDataPosition = parcel.dataPosition();
                            if (iZ == 0) {
                            }
                            int i8 = parcel.readInt();
                            byte[][] bArr2 = new byte[i8][];
                            for (int i9 = 0; i9 < i8; i9++) {
                                bArr2[i9] = parcel.createByteArray();
                            }
                            parcel.setDataPosition(iDataPosition + iZ);
                            bArr = bArr2;
                        }
                        break;
                    }
                }
                break;
            case 12:
                int iK8 = jb9.k0(parcel);
                String strQ5 = null;
                String strQ6 = null;
                i69 i69Var = null;
                long jX = 0;
                while (parcel.dataPosition() < iK8) {
                    int i10 = parcel.readInt();
                    char c5 = (char) i10;
                    if (c5 == 1) {
                        strQ5 = jb9.q(parcel, i10);
                    } else if (c5 == 2) {
                        strQ6 = jb9.q(parcel, i10);
                    } else if (c5 == 3) {
                        jX = jb9.X(parcel, i10);
                    } else if (c5 != 4) {
                        jb9.e0(parcel, i10);
                    } else {
                        i69Var = (i69) jb9.p(parcel, i10, i69.CREATOR);
                    }
                }
                jb9.x(parcel, iK8);
                return new v88(strQ5, strQ6, jX, i69Var);
            case 13:
                int iK9 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK9) {
                    int i11 = parcel.readInt();
                    if (((char) i11) != 1) {
                        jb9.e0(parcel, i11);
                    } else {
                        strQ2 = jb9.q(parcel, i11);
                    }
                }
                jb9.x(parcel, iK9);
                return new u23(strQ2);
            case 14:
                int iK10 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK10) {
                    int i12 = parcel.readInt();
                    if (((char) i12) != 1) {
                        jb9.e0(parcel, i12);
                    } else {
                        arrayListT = jb9.t(parcel, i12, st9.CREATOR);
                    }
                }
                jb9.x(parcel, iK10);
                return new uu9(arrayListT);
            default:
                try {
                    return xx2.c(parcel.readInt());
                } catch (wx2 e) {
                    throw new IllegalArgumentException(e);
                }
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        switch (this.a) {
            case 0:
                return new gm[i];
            case 1:
                return new e91[i];
            case 2:
                return new ParcelImpl[i];
            case 3:
                return new gi6[i];
            case 4:
                return new g17[i];
            case 5:
                return new of7[i];
            case 6:
                return new yk7[i];
            case 7:
                return new y04[i];
            case 8:
                return new e39[i];
            case XmlPullParser.COMMENT /* 9 */:
                return new lx6[i];
            case 10:
                return new f0a[i];
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return new a79[i];
            case 12:
                return new v88[i];
            case 13:
                return new u23[i];
            case 14:
                return new uu9[i];
            default:
                return new xx2[i];
        }
    }
}
