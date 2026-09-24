package defpackage;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.ViewGroup;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f9 implements Parcelable.Creator {
    public final /* synthetic */ int a;

    public /* synthetic */ f9(int i) {
        this.a = i;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        boolean zU = false;
        boolean zU2 = false;
        int iV = 0;
        String strQ = null;
        String strQ2 = null;
        PendingIntent pendingIntent = null;
        switch (this.a) {
            case 0:
                parcel.getClass();
                return new g9(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
            case 1:
                uh3 uh3Var = new uh3(-2, -2);
                uh3Var.e = 0.0f;
                uh3Var.f = 1.0f;
                uh3Var.k = -1;
                uh3Var.n = -1.0f;
                uh3Var.r = 16777215;
                uh3Var.t = 16777215;
                uh3Var.e = parcel.readFloat();
                uh3Var.f = parcel.readFloat();
                uh3Var.k = parcel.readInt();
                uh3Var.n = parcel.readFloat();
                uh3Var.p = parcel.readInt();
                uh3Var.q = parcel.readInt();
                uh3Var.r = parcel.readInt();
                uh3Var.t = parcel.readInt();
                uh3Var.x = parcel.readByte() != 0;
                ((ViewGroup.MarginLayoutParams) uh3Var).bottomMargin = parcel.readInt();
                ((ViewGroup.MarginLayoutParams) uh3Var).leftMargin = parcel.readInt();
                ((ViewGroup.MarginLayoutParams) uh3Var).rightMargin = parcel.readInt();
                ((ViewGroup.MarginLayoutParams) uh3Var).topMargin = parcel.readInt();
                ((ViewGroup.MarginLayoutParams) uh3Var).height = parcel.readInt();
                ((ViewGroup.MarginLayoutParams) uh3Var).width = parcel.readInt();
                return uh3Var;
            case 2:
                em5 em5Var = new em5(parcel);
                em5Var.a = parcel.readInt();
                return em5Var;
            case 3:
                int iK0 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK0) {
                    int i = parcel.readInt();
                    if (((char) i) != 1) {
                        jb9.e0(parcel, i);
                    } else {
                        pendingIntent = (PendingIntent) jb9.p(parcel, i, PendingIntent.CREATOR);
                    }
                }
                jb9.x(parcel, iK0);
                return new ty5(pendingIntent);
            case 4:
                parcel.getClass();
                return new d17(parcel.readInt(), parcel.readInt(), parcel.readLong(), g17.CREATOR.createFromParcel(parcel), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), n17.CREATOR.createFromParcel(parcel));
            case 5:
                parcel.getClass();
                String string = parcel.readString();
                String string2 = parcel.readString();
                String string3 = parcel.readString();
                int i2 = parcel.readInt();
                long j = parcel.readLong();
                long j2 = parcel.readLong();
                boolean z = false;
                long j3 = parcel.readLong();
                if (parcel.readInt() != 0) {
                    z = true;
                }
                return new p17(string, string2, string3, i2, j, j2, j3, z, parcel.createStringArrayList());
            case 6:
                return new tb8(parcel);
            case 7:
                int iK1 = jb9.k0(parcel);
                boolean zU3 = false;
                int iV2 = 0;
                boolean zU4 = false;
                vp0 vp0Var = null;
                sp0 sp0Var = null;
                String strQ3 = null;
                up0 up0Var = null;
                tp0 tp0Var = null;
                while (parcel.dataPosition() < iK1) {
                    int i3 = parcel.readInt();
                    switch ((char) i3) {
                        case 1:
                            vp0Var = (vp0) jb9.p(parcel, i3, vp0.CREATOR);
                            break;
                        case 2:
                            sp0Var = (sp0) jb9.p(parcel, i3, sp0.CREATOR);
                            break;
                        case 3:
                            strQ3 = jb9.q(parcel, i3);
                            break;
                        case 4:
                            zU3 = jb9.U(parcel, i3);
                            break;
                        case 5:
                            iV2 = jb9.V(parcel, i3);
                            break;
                        case 6:
                            up0Var = (up0) jb9.p(parcel, i3, up0.CREATOR);
                            break;
                        case 7:
                            tp0Var = (tp0) jb9.p(parcel, i3, tp0.CREATOR);
                            break;
                        case '\b':
                            zU4 = jb9.U(parcel, i3);
                            break;
                        default:
                            jb9.e0(parcel, i3);
                            break;
                    }
                }
                jb9.x(parcel, iK1);
                return new wp0(vp0Var, sp0Var, strQ3, zU3, iV2, up0Var, tp0Var, zU4);
            case 8:
                int iK2 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK2) {
                    int i4 = parcel.readInt();
                    if (((char) i4) != 1) {
                        jb9.e0(parcel, i4);
                    } else {
                        zU = jb9.U(parcel, i4);
                    }
                }
                jb9.x(parcel, iK2);
                return new vp0(zU);
            case XmlPullParser.COMMENT /* 9 */:
                int iK3 = jb9.k0(parcel);
                int iV3 = 0;
                int iV4 = 0;
                PendingIntent pendingIntent2 = null;
                String strQ4 = null;
                Integer numW = null;
                while (parcel.dataPosition() < iK3) {
                    int i5 = parcel.readInt();
                    char c = (char) i5;
                    if (c == 1) {
                        iV3 = jb9.V(parcel, i5);
                    } else if (c == 2) {
                        iV4 = jb9.V(parcel, i5);
                    } else if (c == 3) {
                        pendingIntent2 = (PendingIntent) jb9.p(parcel, i5, PendingIntent.CREATOR);
                    } else if (c == 4) {
                        strQ4 = jb9.q(parcel, i5);
                    } else if (c != 5) {
                        jb9.e0(parcel, i5);
                    } else {
                        numW = jb9.W(parcel, i5);
                    }
                }
                jb9.x(parcel, iK3);
                return new hs1(iV3, iV4, pendingIntent2, strQ4, numW);
            case 10:
                int iK4 = jb9.k0(parcel);
                int iV5 = 0;
                boolean zU5 = false;
                boolean zU6 = false;
                int iV6 = 0;
                int iV7 = 0;
                while (parcel.dataPosition() < iK4) {
                    int i6 = parcel.readInt();
                    char c2 = (char) i6;
                    if (c2 == 1) {
                        iV5 = jb9.V(parcel, i6);
                    } else if (c2 == 2) {
                        zU5 = jb9.U(parcel, i6);
                    } else if (c2 == 3) {
                        zU6 = jb9.U(parcel, i6);
                    } else if (c2 == 4) {
                        iV6 = jb9.V(parcel, i6);
                    } else if (c2 != 5) {
                        jb9.e0(parcel, i6);
                    } else {
                        iV7 = jb9.V(parcel, i6);
                    }
                }
                jb9.x(parcel, iK4);
                return new kq6(iV5, zU5, zU6, iV6, iV7);
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                int iK5 = jb9.k0(parcel);
                String strQ5 = null;
                String strQ6 = null;
                Long lY = null;
                String strQ7 = null;
                Long lY2 = null;
                while (parcel.dataPosition() < iK5) {
                    int i7 = parcel.readInt();
                    char c3 = (char) i7;
                    if (c3 == 2) {
                        strQ5 = jb9.q(parcel, i7);
                    } else if (c3 == 3) {
                        strQ6 = jb9.q(parcel, i7);
                    } else if (c3 == 4) {
                        lY = jb9.Y(parcel, i7);
                    } else if (c3 == 5) {
                        strQ7 = jb9.q(parcel, i7);
                    } else if (c3 != 6) {
                        jb9.e0(parcel, i7);
                    } else {
                        lY2 = jb9.Y(parcel, i7);
                    }
                }
                jb9.x(parcel, iK5);
                return new b69(strQ5, strQ6, lY, strQ7, lY2);
            case 12:
                int iK6 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK6) {
                    int i8 = parcel.readInt();
                    if (((char) i8) != 1) {
                        jb9.e0(parcel, i8);
                    } else {
                        strQ2 = jb9.q(parcel, i8);
                    }
                }
                jb9.x(parcel, iK6);
                return new c26(strQ2);
            case 13:
                int iK7 = jb9.k0(parcel);
                String strQ8 = null;
                while (parcel.dataPosition() < iK7) {
                    int i9 = parcel.readInt();
                    char c4 = (char) i9;
                    if (c4 == 2) {
                        strQ = jb9.q(parcel, i9);
                    } else if (c4 != 3) {
                        jb9.e0(parcel, i9);
                    } else {
                        strQ8 = jb9.q(parcel, i9);
                    }
                }
                jb9.x(parcel, iK7);
                return new f58(strQ, strQ8);
            case 14:
                int iK8 = jb9.k0(parcel);
                int iV8 = 0;
                int iV9 = 0;
                boolean zU7 = true;
                while (parcel.dataPosition() < iK8) {
                    int i10 = parcel.readInt();
                    char c5 = (char) i10;
                    if (c5 == 1) {
                        iV = jb9.V(parcel, i10);
                    } else if (c5 == 2) {
                        iV8 = jb9.V(parcel, i10);
                    } else if (c5 == 3) {
                        iV9 = jb9.V(parcel, i10);
                    } else if (c5 != 4) {
                        jb9.e0(parcel, i10);
                    } else {
                        zU7 = jb9.U(parcel, i10);
                    }
                }
                jb9.x(parcel, iK8);
                return new qn1(iV, iV8, iV9, zU7);
            case 15:
                int iK9 = jb9.k0(parcel);
                while (parcel.dataPosition() < iK9) {
                    int i11 = parcel.readInt();
                    if (((char) i11) != 1) {
                        jb9.e0(parcel, i11);
                    } else {
                        zU2 = jb9.U(parcel, i11);
                    }
                }
                jb9.x(parcel, iK9);
                return new k80(zU2);
            case Argon2.V10 /* 16 */:
                int iK10 = jb9.k0(parcel);
                boolean zU8 = false;
                String strQ9 = null;
                String strQ10 = null;
                String strQ11 = null;
                String strQ12 = null;
                while (parcel.dataPosition() < iK10) {
                    int i12 = parcel.readInt();
                    char c6 = (char) i12;
                    if (c6 == 1) {
                        strQ9 = jb9.q(parcel, i12);
                    } else if (c6 == 2) {
                        strQ10 = jb9.q(parcel, i12);
                    } else if (c6 == 3) {
                        strQ11 = jb9.q(parcel, i12);
                    } else if (c6 == 4) {
                        strQ12 = jb9.q(parcel, i12);
                    } else if (c6 != 5) {
                        jb9.e0(parcel, i12);
                    } else {
                        zU8 = jb9.U(parcel, i12);
                    }
                }
                jb9.x(parcel, iK10);
                return new au2(strQ9, strQ10, strQ11, strQ12, zU8);
            default:
                int iK11 = jb9.k0(parcel);
                byte[] bArrN = null;
                byte[] bArrN2 = null;
                while (parcel.dataPosition() < iK11) {
                    int i13 = parcel.readInt();
                    char c7 = (char) i13;
                    if (c7 == 1) {
                        bArrN = jb9.n(parcel, i13);
                    } else if (c7 != 2) {
                        jb9.e0(parcel, i13);
                    } else {
                        bArrN2 = jb9.n(parcel, i13);
                    }
                }
                jb9.x(parcel, iK11);
                return new rh9(bArrN == null ? null : wk9.l(bArrN, bArrN.length), bArrN2 != null ? wk9.l(bArrN2, bArrN2.length) : null);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        switch (this.a) {
            case 0:
                return new g9[i];
            case 1:
                return new uh3[i];
            case 2:
                return new em5[i];
            case 3:
                return new ty5[i];
            case 4:
                return new d17[i];
            case 5:
                return new p17[i];
            case 6:
                return new tb8[i];
            case 7:
                return new wp0[i];
            case 8:
                return new vp0[i];
            case XmlPullParser.COMMENT /* 9 */:
                return new hs1[i];
            case 10:
                return new kq6[i];
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return new b69[i];
            case 12:
                return new c26[i];
            case 13:
                return new f58[i];
            case 14:
                return new qn1[i];
            case 15:
                return new k80[i];
            case Argon2.V10 /* 16 */:
                return new au2[i];
            default:
                return new rh9[i];
        }
    }
}
