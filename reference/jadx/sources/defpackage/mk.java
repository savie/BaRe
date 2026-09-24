package defpackage;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.settings.appbackuplimits.AppBackupLimitItem;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mk implements Parcelable.Creator {
    public final /* synthetic */ int a;

    public /* synthetic */ mk(int i) {
        this.a = i;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        boolean zU = false;
        boolean zU2 = false;
        int iV = 0;
        String strQ = null;
        ArrayList arrayListT = null;
        byte[] bArrN = null;
        hs1 hs1Var = null;
        t84 t84Var = null;
        switch (this.a) {
            case 0:
                parcel.getClass();
                return new AppBackupLimitItem(parcel.readString(), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readInt() != 0 ? Long.valueOf(parcel.readLong()) : null);
            case 1:
                parcel.getClass();
                return new d41(parcel.readString(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readString());
            case 2:
                gl5 gl5Var = new gl5();
                gl5Var.a = parcel.readInt();
                gl5Var.b = (yw5) parcel.readParcelable(gl5.class.getClassLoader());
                return gl5Var;
            case 3:
                parcel.getClass();
                return new c17(parcel.readInt(), parcel.readInt(), parcel.readLong(), parcel.readString());
            case 4:
                parcel.getClass();
                return new o17(parcel.readLong(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readLong(), parcel.readLong(), parcel.readString(), parcel.readLong(), parcel.readLong(), parcel.readLong(), parcel.readLong(), parcel.readLong(), parcel.readLong(), parcel.readLong(), parcel.readLong());
            case 5:
                se7 se7Var = new se7();
                IBinder strongBinder = parcel.readStrongBinder();
                int i = s84.a;
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("moe.shizuku.server.IRemoteProcess");
                    if (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof t84)) {
                        r84 r84Var = new r84();
                        r84Var.a = strongBinder;
                        t84Var = r84Var;
                    } else {
                        t84Var = (t84) iInterfaceQueryLocalInterface;
                    }
                }
                se7Var.a = t84Var;
                return se7Var;
            case 6:
                parcel.getClass();
                return new yn8((q63) parcel.readSerializable(), parcel.readLong(), parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0);
            case 7:
                int iK0 = jb9.k0(parcel);
                long jX = 0;
                int iV2 = 0;
                String strQ2 = null;
                String strQ3 = null;
                String strQ4 = null;
                String strQ5 = null;
                Uri uri = null;
                String strQ6 = null;
                String strQ7 = null;
                ArrayList arrayListT2 = null;
                String strQ8 = null;
                String strQ9 = null;
                while (parcel.dataPosition() < iK0) {
                    int i2 = parcel.readInt();
                    switch ((char) i2) {
                        case 1:
                            iV2 = jb9.V(parcel, i2);
                            break;
                        case 2:
                            strQ2 = jb9.q(parcel, i2);
                            break;
                        case 3:
                            strQ3 = jb9.q(parcel, i2);
                            break;
                        case 4:
                            strQ4 = jb9.q(parcel, i2);
                            break;
                        case 5:
                            strQ5 = jb9.q(parcel, i2);
                            break;
                        case 6:
                            uri = (Uri) jb9.p(parcel, i2, Uri.CREATOR);
                            break;
                        case 7:
                            strQ6 = jb9.q(parcel, i2);
                            break;
                        case '\b':
                            jX = jb9.X(parcel, i2);
                            break;
                        case XmlPullParser.COMMENT /* 9 */:
                            strQ7 = jb9.q(parcel, i2);
                            break;
                        case '\n':
                            arrayListT2 = jb9.t(parcel, i2, Scope.CREATOR);
                            break;
                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                            strQ8 = jb9.q(parcel, i2);
                            break;
                        case '\f':
                            strQ9 = jb9.q(parcel, i2);
                            break;
                        default:
                            jb9.e0(parcel, i2);
                            break;
                    }
                }
                jb9.x(parcel, iK0);
                return new GoogleSignInAccount(iV2, strQ2, strQ3, strQ4, strQ5, uri, strQ6, jX, strQ7, arrayListT2, strQ8, strQ9);
            case 8:
                int iK1 = jb9.k0(parcel);
                o29 o29Var = null;
                while (parcel.dataPosition() < iK1) {
                    int i3 = parcel.readInt();
                    char c = (char) i3;
                    if (c == 1) {
                        iV = jb9.V(parcel, i3);
                    } else if (c == 2) {
                        hs1Var = (hs1) jb9.p(parcel, i3, hs1.CREATOR);
                    } else if (c != 3) {
                        jb9.e0(parcel, i3);
                    } else {
                        o29Var = (o29) jb9.p(parcel, i3, o29.CREATOR);
                    }
                }
                jb9.x(parcel, iK1);
                return new f29(iV, hs1Var, o29Var);
            case XmlPullParser.COMMENT /* 9 */:
                int iK2 = jb9.k0(parcel);
                int iV3 = 0;
                boolean zU3 = false;
                boolean zU4 = false;
                IBinder strongBinder2 = null;
                hs1 hs1Var2 = null;
                while (parcel.dataPosition() < iK2) {
                    int i4 = parcel.readInt();
                    char c2 = (char) i4;
                    if (c2 == 1) {
                        iV3 = jb9.V(parcel, i4);
                    } else if (c2 == 2) {
                        int iZ = jb9.Z(parcel, i4);
                        int iDataPosition = parcel.dataPosition();
                        if (iZ == 0) {
                            strongBinder2 = null;
                        } else {
                            strongBinder2 = parcel.readStrongBinder();
                            parcel.setDataPosition(iDataPosition + iZ);
                        }
                    } else if (c2 == 3) {
                        hs1Var2 = (hs1) jb9.p(parcel, i4, hs1.CREATOR);
                    } else if (c2 == 4) {
                        zU3 = jb9.U(parcel, i4);
                    } else if (c2 != 5) {
                        jb9.e0(parcel, i4);
                    } else {
                        zU4 = jb9.U(parcel, i4);
                    }
                }
                jb9.x(parcel, iK2);
                return new o29(iV3, strongBinder2, hs1Var2, zU3, zU4);
            case 10:
                int iK3 = jb9.k0(parcel);
                String strQ10 = null;
                while (parcel.dataPosition() < iK3) {
                    int i5 = parcel.readInt();
                    char c3 = (char) i5;
                    if (c3 == 1) {
                        zU2 = jb9.U(parcel, i5);
                    } else if (c3 == 2) {
                        bArrN = jb9.n(parcel, i5);
                    } else if (c3 != 3) {
                        jb9.e0(parcel, i5);
                    } else {
                        strQ10 = jb9.q(parcel, i5);
                    }
                }
                jb9.x(parcel, iK3);
                return new up0(zU2, bArrN, strQ10);
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                try {
                    return r70.c(parcel.readString());
                } catch (q70 e) {
                    y5.k(e);
                    return null;
                }
            case 12:
                int iK4 = jb9.k0(parcel);
                byte[] bArrN2 = null;
                Double dValueOf = null;
                String strQ11 = null;
                ArrayList arrayListT3 = null;
                Integer numW = null;
                f58 f58Var = null;
                String strQ12 = null;
                i80 i80Var = null;
                Long lY = null;
                String strQ13 = null;
                ResultReceiver resultReceiver = null;
                while (parcel.dataPosition() < iK4) {
                    int i6 = parcel.readInt();
                    switch ((char) i6) {
                        case 2:
                            bArrN2 = jb9.n(parcel, i6);
                            break;
                        case 3:
                            int iZ2 = jb9.Z(parcel, i6);
                            if (iZ2 != 0) {
                                jb9.o0(parcel, iZ2, 8);
                                dValueOf = Double.valueOf(parcel.readDouble());
                            } else {
                                dValueOf = null;
                            }
                            break;
                        case 4:
                            strQ11 = jb9.q(parcel, i6);
                            break;
                        case 5:
                            arrayListT3 = jb9.t(parcel, i6, ra6.CREATOR);
                            break;
                        case 6:
                            numW = jb9.W(parcel, i6);
                            break;
                        case 7:
                            f58Var = (f58) jb9.p(parcel, i6, f58.CREATOR);
                            break;
                        case '\b':
                            strQ12 = jb9.q(parcel, i6);
                            break;
                        case XmlPullParser.COMMENT /* 9 */:
                            i80Var = (i80) jb9.p(parcel, i6, i80.CREATOR);
                            break;
                        case '\n':
                            lY = jb9.Y(parcel, i6);
                            break;
                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                            strQ13 = jb9.q(parcel, i6);
                            break;
                        case '\f':
                            resultReceiver = (ResultReceiver) jb9.p(parcel, i6, ResultReceiver.CREATOR);
                            break;
                        default:
                            jb9.e0(parcel, i6);
                            break;
                    }
                }
                jb9.x(parcel, iK4);
                return new ta6(bArrN2, dValueOf, strQ11, arrayListT3, numW, f58Var, strQ12, i80Var, lY, strQ13, resultReceiver);
            case 13:
                try {
                    return d58.c(parcel.readString());
                } catch (e58 e2) {
                    y5.k(e2);
                    return null;
                }
            case 14:
                int iK5 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK5) {
                    int i7 = parcel.readInt();
                    if (((char) i7) != 1) {
                        jb9.e0(parcel, i7);
                    } else {
                        arrayListT = jb9.t(parcel, i7, pi8.CREATOR);
                    }
                }
                jb9.x(parcel, iK5);
                return new oi8(arrayListT);
            case 15:
                int iK6 = jb9.k0(parcel);
                oi8 oi8Var = null;
                rh9 rh9Var = null;
                k80 k80Var = null;
                fl9 fl9Var = null;
                String strQ14 = null;
                while (parcel.dataPosition() < iK6) {
                    int i8 = parcel.readInt();
                    char c4 = (char) i8;
                    if (c4 == 1) {
                        oi8Var = (oi8) jb9.p(parcel, i8, oi8.CREATOR);
                    } else if (c4 == 2) {
                        rh9Var = (rh9) jb9.p(parcel, i8, rh9.CREATOR);
                    } else if (c4 == 3) {
                        k80Var = (k80) jb9.p(parcel, i8, k80.CREATOR);
                    } else if (c4 == 4) {
                        fl9Var = (fl9) jb9.p(parcel, i8, fl9.CREATOR);
                    } else if (c4 != 5) {
                        jb9.e0(parcel, i8);
                    } else {
                        strQ14 = jb9.q(parcel, i8);
                    }
                }
                jb9.x(parcel, iK6);
                return new j80(oi8Var, rh9Var, k80Var, fl9Var, strQ14);
            case Argon2.V10 /* 16 */:
                int iK7 = jb9.k0(parcel);
                d63 d63Var = null;
                uu9 uu9Var = null;
                ih8 ih8Var = null;
                x1a x1aVar = null;
                y39 y39Var = null;
                q49 q49Var = null;
                vw9 vw9Var = null;
                s59 s59Var = null;
                d14 d14Var = null;
                a79 a79Var = null;
                c99 c99Var = null;
                h69 h69Var = null;
                while (parcel.dataPosition() < iK7) {
                    int i9 = parcel.readInt();
                    switch ((char) i9) {
                        case 2:
                            d63Var = (d63) jb9.p(parcel, i9, d63.CREATOR);
                            break;
                        case 3:
                            uu9Var = (uu9) jb9.p(parcel, i9, uu9.CREATOR);
                            break;
                        case 4:
                            ih8Var = (ih8) jb9.p(parcel, i9, ih8.CREATOR);
                            break;
                        case 5:
                            x1aVar = (x1a) jb9.p(parcel, i9, x1a.CREATOR);
                            break;
                        case 6:
                            y39Var = (y39) jb9.p(parcel, i9, y39.CREATOR);
                            break;
                        case 7:
                            q49Var = (q49) jb9.p(parcel, i9, q49.CREATOR);
                            break;
                        case '\b':
                            vw9Var = (vw9) jb9.p(parcel, i9, vw9.CREATOR);
                            break;
                        case XmlPullParser.COMMENT /* 9 */:
                            s59Var = (s59) jb9.p(parcel, i9, s59.CREATOR);
                            break;
                        case '\n':
                            d14Var = (d14) jb9.p(parcel, i9, d14.CREATOR);
                            break;
                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                            a79Var = (a79) jb9.p(parcel, i9, a79.CREATOR);
                            break;
                        case '\f':
                            c99Var = (c99) jb9.p(parcel, i9, c99.CREATOR);
                            break;
                        case '\r':
                            h69Var = (h69) jb9.p(parcel, i9, h69.CREATOR);
                            break;
                        default:
                            jb9.e0(parcel, i9);
                            break;
                    }
                }
                jb9.x(parcel, iK7);
                return new i80(d63Var, uu9Var, ih8Var, x1aVar, y39Var, q49Var, vw9Var, s59Var, d14Var, a79Var, c99Var, h69Var);
            case 17:
                int iK8 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK8) {
                    int i10 = parcel.readInt();
                    if (((char) i10) != 1) {
                        jb9.e0(parcel, i10);
                    } else {
                        jb9.U(parcel, i10);
                    }
                }
                jb9.x(parcel, iK8);
                return new vw9();
            default:
                int iK9 = jb9.k0(parcel);
                String strQ15 = null;
                while (parcel.dataPosition() < iK9) {
                    int i11 = parcel.readInt();
                    char c5 = (char) i11;
                    if (c5 == 1) {
                        strQ = jb9.q(parcel, i11);
                    } else if (c5 == 2) {
                        strQ15 = jb9.q(parcel, i11);
                    } else if (c5 != 3) {
                        jb9.e0(parcel, i11);
                    } else {
                        zU = jb9.U(parcel, i11);
                    }
                }
                jb9.x(parcel, iK9);
                return new yx9(strQ, strQ15, zU);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        switch (this.a) {
            case 0:
                return new AppBackupLimitItem[i];
            case 1:
                return new d41[i];
            case 2:
                return new gl5[i];
            case 3:
                return new c17[i];
            case 4:
                return new o17[i];
            case 5:
                return new se7[i];
            case 6:
                return new yn8[i];
            case 7:
                return new GoogleSignInAccount[i];
            case 8:
                return new f29[i];
            case XmlPullParser.COMMENT /* 9 */:
                return new o29[i];
            case 10:
                return new up0[i];
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return new r70[i];
            case 12:
                return new ta6[i];
            case 13:
                return new d58[i];
            case 14:
                return new oi8[i];
            case 15:
                return new j80[i];
            case Argon2.V10 /* 16 */:
                return new i80[i];
            case 17:
                return new vw9[i];
            default:
                return new yx9[i];
        }
    }
}
