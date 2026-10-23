package defpackage;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.b;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import org.swiftapps.swiftbackup.appconfigs.data.Config;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigsData;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class m8 implements Parcelable.Creator {
    public final /* synthetic */ int a;

    public /* synthetic */ m8(int i) {
        this.a = i;
    }

    public static void a(zw3 zw3Var, Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        int i2 = zw3Var.a;
        yc9.D0(parcel, 1, 4);
        parcel.writeInt(i2);
        int i3 = zw3Var.b;
        yc9.D0(parcel, 2, 4);
        parcel.writeInt(i3);
        int i4 = zw3Var.c;
        yc9.D0(parcel, 3, 4);
        parcel.writeInt(i4);
        yc9.w0(parcel, 4, zw3Var.d);
        IBinder iBinder = zw3Var.e;
        if (iBinder != null) {
            int iF1 = yc9.F0(parcel, 5);
            parcel.writeStrongBinder(iBinder);
            yc9.G0(parcel, iF1);
        }
        yc9.y0(parcel, 6, zw3Var.f, i);
        yc9.n0(parcel, 7, zw3Var.k);
        yc9.v0(parcel, 8, zw3Var.n, i);
        yc9.y0(parcel, 10, zw3Var.p, i);
        yc9.y0(parcel, 11, zw3Var.q, i);
        boolean z = zw3Var.r;
        yc9.D0(parcel, 12, 4);
        parcel.writeInt(z ? 1 : 0);
        int i5 = zw3Var.t;
        yc9.D0(parcel, 13, 4);
        parcel.writeInt(i5);
        boolean z2 = zw3Var.x;
        yc9.D0(parcel, 14, 4);
        parcel.writeInt(z2 ? 1 : 0);
        yc9.w0(parcel, 15, zw3Var.y);
        yc9.G0(parcel, iF0);
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        LinkedHashMap linkedHashMap = null;
        Bundle bundleM = null;
        String strQ = null;
        lf7 lf7Var = null;
        PendingIntent pendingIntent = null;
        boolean zU = false;
        int iV = 0;
        boolean zU2 = false;
        int iV2 = 0;
        switch (this.a) {
            case 0:
                n8 n8Var = new n8();
                n8Var.a = parcel.readInt();
                return n8Var;
            case 1:
                gp gpVar = new gp(parcel);
                gpVar.a = parcel.readByte() != 0;
                return gpVar;
            case 2:
                parcel.getClass();
                return new k30(parcel.readString(), Config.CREATOR.createFromParcel(parcel), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0, parcel.readInt(), parcel.readInt());
            case 3:
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
                return new b91(zU);
            case 4:
                parcel.getClass();
                if (parcel.readInt() != 0) {
                    int i2 = parcel.readInt();
                    linkedHashMap = new LinkedHashMap(i2);
                    for (int i3 = 0; i3 != i2; i3++) {
                        linkedHashMap.put(parcel.readString(), Config.CREATOR.createFromParcel(parcel));
                    }
                }
                return new ConfigsData(linkedHashMap);
            case 5:
                vr3 vr3Var = new vr3();
                vr3Var.e = null;
                vr3Var.f = new ArrayList();
                vr3Var.k = new ArrayList();
                vr3Var.a = parcel.createStringArrayList();
                vr3Var.b = parcel.createStringArrayList();
                vr3Var.c = (b[]) parcel.createTypedArray(b.CREATOR);
                vr3Var.d = parcel.readInt();
                vr3Var.e = parcel.readString();
                vr3Var.f = parcel.createStringArrayList();
                vr3Var.k = parcel.createTypedArrayList(zj0.CREATOR);
                vr3Var.n = parcel.createTypedArrayList(rr3.CREATOR);
                return vr3Var;
            case 6:
                parcel.getClass();
                Parcelable parcelable = parcel.readParcelable(IntentSender.class.getClassLoader());
                parcelable.getClass();
                return new rd4((IntentSender) parcelable, (Intent) parcel.readParcelable(Intent.class.getClassLoader()), parcel.readInt(), parcel.readInt());
            case 7:
                xu4 xu4Var = new xu4();
                xu4Var.a = parcel.readInt();
                xu4Var.b = parcel.readInt();
                xu4Var.c = parcel.readInt() == 1;
                return xu4Var;
            case 8:
                d25 d25Var = new d25(parcel);
                d25Var.a = parcel.readString();
                d25Var.c = parcel.readFloat();
                d25Var.d = parcel.readInt() == 1;
                d25Var.e = parcel.readString();
                d25Var.f = parcel.readInt();
                d25Var.k = parcel.readInt();
                return d25Var;
            case XmlPullParser.COMMENT /* 9 */:
                parcel.getClass();
                return new MultipleBackupStrategy(parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null);
            case 10:
                int iK1 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK1) {
                    int i4 = parcel.readInt();
                    if (((char) i4) != 1) {
                        jb9.e0(parcel, i4);
                    } else {
                        pendingIntent = (PendingIntent) jb9.p(parcel, i4, PendingIntent.CREATOR);
                    }
                }
                jb9.x(parcel, iK1);
                return new uy5(pendingIntent);
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return new d46(parcel);
            case 12:
                int iK2 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK2) {
                    jb9.e0(parcel, parcel.readInt());
                }
                jb9.x(parcel, iK2);
                return new ci6();
            case 13:
                parcel.getClass();
                return new e17(parcel.readLong(), parcel.readLong(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readInt());
            case 14:
                parcel.getClass();
                int i5 = parcel.readInt();
                ArrayList arrayList = new ArrayList(i5);
                for (int i6 = 0; i6 != i5; i6++) {
                    arrayList.add(p17.CREATOR.createFromParcel(parcel));
                }
                return new q17(arrayList, parcel.readInt());
            case 15:
                return new eu7(parcel);
            case Argon2.V10 /* 16 */:
                return new j38(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
            case 17:
                int iK3 = jb9.k0(parcel);
                String strQ2 = null;
                while (parcel.dataPosition() < iK3) {
                    int i7 = parcel.readInt();
                    char c = (char) i7;
                    if (c == 1) {
                        lf7Var = (lf7) jb9.p(parcel, i7, lf7.CREATOR);
                    } else if (c == 2) {
                        strQ2 = jb9.q(parcel, i7);
                    } else if (c != 3) {
                        jb9.e0(parcel, i7);
                    } else {
                        iV2 = jb9.V(parcel, i7);
                    }
                }
                jb9.x(parcel, iK3);
                return new kx6(lf7Var, strQ2, iV2);
            case 18:
                int iK4 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK4) {
                    int i8 = parcel.readInt();
                    if (((char) i8) != 1) {
                        jb9.e0(parcel, i8);
                    } else {
                        zU2 = jb9.U(parcel, i8);
                    }
                }
                jb9.x(parcel, iK4);
                return new x1a(zU2);
            case Argon2.V13 /* 19 */:
                int iK5 = jb9.k0(parcel);
                String strQ3 = null;
                String strQ4 = null;
                while (parcel.dataPosition() < iK5) {
                    int i9 = parcel.readInt();
                    char c2 = (char) i9;
                    if (c2 == 2) {
                        strQ = jb9.q(parcel, i9);
                    } else if (c2 == 3) {
                        strQ3 = jb9.q(parcel, i9);
                    } else if (c2 != 4) {
                        jb9.e0(parcel, i9);
                    } else {
                        strQ4 = jb9.q(parcel, i9);
                    }
                }
                jb9.x(parcel, iK5);
                return new ua6(strQ, strQ3, strQ4);
            case 20:
                int iK6 = jb9.k0(parcel);
                short s = 0;
                short s2 = 0;
                while (parcel.dataPosition() < iK6) {
                    int i10 = parcel.readInt();
                    char c3 = (char) i10;
                    if (c3 == 1) {
                        iV = jb9.V(parcel, i10);
                    } else if (c3 == 2) {
                        jb9.n0(parcel, i10, 4);
                        s = (short) parcel.readInt();
                    } else if (c3 != 3) {
                        jb9.e0(parcel, i10);
                    } else {
                        jb9.n0(parcel, i10, 4);
                        s2 = (short) parcel.readInt();
                    }
                }
                jb9.x(parcel, iK6);
                return new pi8(iV, s, s2);
            case 21:
                int iK7 = jb9.k0(parcel);
                is1 is1Var = null;
                int iV3 = 0;
                y53[] y53VarArr = null;
                while (parcel.dataPosition() < iK7) {
                    int i11 = parcel.readInt();
                    char c4 = (char) i11;
                    if (c4 == 1) {
                        bundleM = jb9.m(parcel, i11);
                    } else if (c4 == 2) {
                        y53VarArr = (y53[]) jb9.s(parcel, i11, y53.CREATOR);
                    } else if (c4 == 3) {
                        iV3 = jb9.V(parcel, i11);
                    } else if (c4 != 4) {
                        jb9.e0(parcel, i11);
                    } else {
                        is1Var = (is1) jb9.p(parcel, i11, is1.CREATOR);
                    }
                }
                jb9.x(parcel, iK7);
                jo9 jo9Var = new jo9();
                jo9Var.a = bundleM;
                jo9Var.b = y53VarArr;
                jo9Var.c = iV3;
                jo9Var.d = is1Var;
                return jo9Var;
            case 22:
                int iK8 = jb9.k0(parcel);
                Bundle bundle = new Bundle();
                Scope[] scopeArr = zw3.G;
                y53[] y53VarArr2 = zw3.H;
                y53[] y53VarArr3 = y53VarArr2;
                String strQ5 = null;
                IBinder iBinder = null;
                Account account = null;
                String strQ6 = null;
                int iV4 = 0;
                int iV5 = 0;
                int iV6 = 0;
                boolean zU3 = false;
                int iV7 = 0;
                boolean zU4 = false;
                while (parcel.dataPosition() < iK8) {
                    int i12 = parcel.readInt();
                    switch ((char) i12) {
                        case 1:
                            iV4 = jb9.V(parcel, i12);
                            break;
                        case 2:
                            iV5 = jb9.V(parcel, i12);
                            break;
                        case 3:
                            iV6 = jb9.V(parcel, i12);
                            break;
                        case 4:
                            strQ5 = jb9.q(parcel, i12);
                            break;
                        case 5:
                            int iZ = jb9.Z(parcel, i12);
                            int iDataPosition = parcel.dataPosition();
                            if (iZ == 0) {
                                iBinder = null;
                            } else {
                                IBinder strongBinder = parcel.readStrongBinder();
                                parcel.setDataPosition(iDataPosition + iZ);
                                iBinder = strongBinder;
                            }
                            break;
                        case 6:
                            scopeArr = (Scope[]) jb9.s(parcel, i12, Scope.CREATOR);
                            break;
                        case 7:
                            bundle = jb9.m(parcel, i12);
                            break;
                        case '\b':
                            account = (Account) jb9.p(parcel, i12, Account.CREATOR);
                            break;
                        case XmlPullParser.COMMENT /* 9 */:
                        default:
                            jb9.e0(parcel, i12);
                            break;
                        case '\n':
                            y53VarArr2 = (y53[]) jb9.s(parcel, i12, y53.CREATOR);
                            break;
                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                            y53VarArr3 = (y53[]) jb9.s(parcel, i12, y53.CREATOR);
                            break;
                        case '\f':
                            zU3 = jb9.U(parcel, i12);
                            break;
                        case '\r':
                            iV7 = jb9.V(parcel, i12);
                            break;
                        case 14:
                            zU4 = jb9.U(parcel, i12);
                            break;
                        case 15:
                            strQ6 = jb9.q(parcel, i12);
                            break;
                    }
                }
                jb9.x(parcel, iK8);
                return new zw3(iV4, iV5, iV6, strQ5, iBinder, scopeArr, bundle, account, y53VarArr2, y53VarArr3, zU3, iV7, zU4, strQ6);
            default:
                try {
                    return az0.c(parcel.readInt());
                } catch (zy0 e) {
                    y5.k(e);
                    return null;
                }
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        switch (this.a) {
            case 0:
                return new n8[i];
            case 1:
                return new gp[i];
            case 2:
                return new k30[i];
            case 3:
                return new b91[i];
            case 4:
                return new ConfigsData[i];
            case 5:
                return new vr3[i];
            case 6:
                return new rd4[i];
            case 7:
                return new xu4[i];
            case 8:
                return new d25[i];
            case XmlPullParser.COMMENT /* 9 */:
                return new MultipleBackupStrategy[i];
            case 10:
                return new uy5[i];
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return new d46[i];
            case 12:
                return new ci6[i];
            case 13:
                return new e17[i];
            case 14:
                return new q17[i];
            case 15:
                return new eu7[i];
            case Argon2.V10 /* 16 */:
                return new j38[i];
            case 17:
                return new kx6[i];
            case 18:
                return new x1a[i];
            case Argon2.V13 /* 19 */:
                return new ua6[i];
            case 20:
                return new pi8[i];
            case 21:
                return new jo9[i];
            case 22:
                return new zw3[i];
            default:
                return new az0[i];
        }
    }
}
