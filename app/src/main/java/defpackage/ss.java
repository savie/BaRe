package defpackage;

import android.content.Intent;
import android.net.Uri;
import android.os.Parcelable;
import android.view.animation.PathInterpolator;
import androidx.fragment.app.u;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.home.search.HomeSearchActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.CallsBackupRestoreActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.MessagesDashActivity;
import org.swiftapps.swiftbackup.premium.PremiumActivity;
import org.swiftapps.swiftbackup.tasks.PreconditionsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ss implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ ss(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x005e  */
    /* JADX WARN: Code duplicated, block: B:18:0x0064  */
    /* JADX WARN: Code duplicated, block: B:20:0x006c  */
    /* JADX WARN: Code duplicated, block: B:21:0x0080  */
    /* JADX WARN: Code duplicated, block: B:23:0x0086  */
    /* JADX WARN: Code duplicated, block: B:26:0x008e  */
    /* JADX WARN: Code duplicated, block: B:31:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:33:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:35:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:36:0x00b3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:37:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:38:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:40:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:43:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:44:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:46:0x00e3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:47:0x00e5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:48:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:49:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:50:0x0101  */
    /* JADX WARN: Code duplicated, block: B:51:0x0107  */
    /* JADX WARN: Code duplicated, block: B:53:0x010d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:54:0x010f  */
    /* JADX WARN: Code duplicated, block: B:56:0x0112  */
    /* JADX WARN: Code duplicated, block: B:57:0x011b  */
    /* JADX WARN: Code duplicated, block: B:58:0x0128  */
    /* JADX WARN: Code duplicated, block: B:59:0x012e  */
    /* JADX WARN: Code duplicated, block: B:60:0x0130  */
    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        u activity;
        sa1 sa1Var;
        boolean z;
        boolean z2;
        int i;
        int i2 = this.a;
        int i3 = 0;
        int i4 = 1;
        jv1 jv1Var = null;
        be8 be8Var = be8.a;
        Object obj3 = this.b;
        switch (i2) {
            case 0:
                ws wsVar = (ws) obj3;
                il0 il0Var = wsVar.l;
                oy oyVar = (oy) obj;
                ji jiVar = (ji) obj2;
                oyVar.getClass();
                jiVar.getClass();
                switch (ts.a[oyVar.ordinal()]) {
                    case 1:
                        g00 g00Var = g00.a;
                        g00.B(il0Var, jiVar);
                        break;
                    case 2:
                        zn4 zn4Var = zn4.a;
                        zn4.b(null, new us(jiVar, wsVar, jv1Var, i3));
                        break;
                    case 3:
                        String packageName = jiVar.getPackageName();
                        il0Var.getClass();
                        packageName.getClass();
                        Intent intent = new Intent("android.intent.action.DELETE");
                        intent.setData(Uri.parse("package:".concat(packageName)));
                        io4.j("Util", null, true, new d11(14, il0Var, intent), 10);
                        break;
                    case 4:
                        zn4 zn4Var2 = zn4.a;
                        zn4.b(null, new vs(jiVar, jv1Var, i3));
                        break;
                    case 5:
                        ai8.l(il0Var, jiVar.getPackageName());
                        break;
                    case 6:
                        Const.J(il0Var, R.string.clear_data, new ii(jiVar, i4));
                        break;
                    case 7:
                        g00 g00Var2 = g00.a;
                        g00.D(il0Var, jiVar);
                        break;
                    case 8:
                        new nh(il0Var).n(new xh(jiVar));
                        break;
                    default:
                        q.j();
                        return null;
                }
                return be8Var;
            case 1:
                s54 s54Var = (s54) obj;
                ((Integer) obj2).getClass();
                PathInterpolator pathInterpolator = HomeSearchActivity.X;
                s54Var.getClass();
                ((HomeSearchActivity) obj3).Z(s54Var);
                return be8Var;
            case 2:
                vd5 vd5Var = (vd5) obj;
                ((Integer) obj2).getClass();
                int i5 = MessagesDashActivity.T;
                vd5Var.getClass();
                ((MessagesDashActivity) obj3).V(vd5Var);
                return be8Var;
            case 3:
                nd6 nd6Var = (nd6) obj3;
                zc6 zc6Var = (zc6) obj;
                ((Integer) obj2).getClass();
                zc6Var.getClass();
                sa1 sa1Var2 = (sa1) nd6Var.getActivity();
                if (sa1Var2 != null) {
                    Parcelable.Creator<zc6> creator = zc6.CREATOR;
                    String str = zc6Var.a;
                    int i6 = 3;
                    if (yc6.i(str)) {
                        dz5 dz5Var = dz5.a;
                        if (!dz5.g()) {
                            int i7 = PreconditionsActivity.P;
                            Intent intentPutExtra = new Intent(sa1Var2, (Class<?>) PreconditionsActivity.class).putExtra("request_code", 3);
                            intentPutExtra.getClass();
                            sa1Var2.startActivityForResult(intentPutExtra, 3);
                        } else if (yc6.j(str)) {
                            dz5 dz5Var2 = dz5.a;
                            if (dz5.m()) {
                                activity = nd6Var.getActivity();
                                if ((activity != null || !activity.isDestroyed()) && (sa1Var = (sa1) nd6Var.getActivity()) != null) {
                                    z = zc6Var.e;
                                    z2 = zc6Var.q;
                                    if (yc6.h(str)) {
                                        if (zc6Var.f) {
                                            mp6 mp6Var = mp6.a;
                                            if (!mp6.f()) {
                                                Const.O();
                                            } else if (z2) {
                                                sa1.R(sa1Var, null, new gn3(1, nd6Var, zc6Var, sa1Var), 1);
                                            } else if (zc6Var.c() || V.INSTANCE.getA()) {
                                                sa1Var.G().g(zc6Var);
                                            } else {
                                                int i8 = PremiumActivity.V;
                                                rs9.u(sa1Var);
                                            }
                                        } else if (z2) {
                                            sa1.R(sa1Var, null, new gn3(1, nd6Var, zc6Var, sa1Var), 1);
                                        } else if (zc6Var.c()) {
                                            sa1Var.G().g(zc6Var);
                                        } else {
                                            sa1Var.G().g(zc6Var);
                                        }
                                    } else if (yc6.j(str)) {
                                        if (!z) {
                                            ai8.q(sa1Var, MessagesBackupRestoreActivity.class);
                                        } else if (z2) {
                                            sa1.R(sa1Var, null, new yi5(nd6Var, 4), 1);
                                        } else {
                                            od6 od6VarI = nd6Var.i();
                                            zn4 zn4Var3 = zn4.a;
                                            zn4.b(null, new mj(od6VarI, jv1Var, i6));
                                        }
                                    } else if (yc6.i(str)) {
                                        if (z) {
                                            i = 5;
                                            if (z2) {
                                                sa1.R(sa1Var, null, new to5(nd6Var, i), 1);
                                            } else {
                                                zn4.c(new yi5(nd6Var.i(), 5));
                                            }
                                        } else {
                                            ai8.q(sa1Var, CallsBackupRestoreActivity.class);
                                        }
                                    } else {
                                        if (str != null || !uq7.O(str, "FOLDERS", false)) {
                                            g84.h(dj7.k(nd6Var.a, ".performQuickAction not handling ", str));
                                            return null;
                                        }
                                        sa1 sa1Var3 = (sa1) nd6Var.getActivity();
                                        if (sa1Var3 != null) {
                                            if (z && z2) {
                                                i3 = 1;
                                            }
                                            kg kgVar = new kg(13, zc6Var, nd6Var);
                                            if (i3 != 0) {
                                                sa1.R(sa1Var3, null, new l30(11, nd6Var, kgVar), 1);
                                            } else {
                                                kgVar.invoke();
                                            }
                                        }
                                    }
                                }
                            } else {
                                int i9 = PreconditionsActivity.P;
                                Intent intentPutExtra2 = new Intent(sa1Var2, (Class<?>) PreconditionsActivity.class).putExtra("request_code", 2);
                                intentPutExtra2.getClass();
                                sa1Var2.startActivityForResult(intentPutExtra2, 2);
                            }
                        } else {
                            activity = nd6Var.getActivity();
                            if (activity != null) {
                                z = zc6Var.e;
                                z2 = zc6Var.q;
                                if (yc6.h(str)) {
                                    if (zc6Var.f) {
                                        mp6 mp6Var2 = mp6.a;
                                        if (!mp6.f()) {
                                            Const.O();
                                        } else if (z2) {
                                            sa1.R(sa1Var, null, new gn3(1, nd6Var, zc6Var, sa1Var), 1);
                                        } else if (zc6Var.c()) {
                                            sa1Var.G().g(zc6Var);
                                        } else {
                                            sa1Var.G().g(zc6Var);
                                        }
                                    } else if (z2) {
                                        sa1.R(sa1Var, null, new gn3(1, nd6Var, zc6Var, sa1Var), 1);
                                    } else if (zc6Var.c()) {
                                        sa1Var.G().g(zc6Var);
                                    } else {
                                        sa1Var.G().g(zc6Var);
                                    }
                                } else if (yc6.j(str)) {
                                    if (!z) {
                                        ai8.q(sa1Var, MessagesBackupRestoreActivity.class);
                                    } else if (z2) {
                                        sa1.R(sa1Var, null, new yi5(nd6Var, 4), 1);
                                    } else {
                                        od6 od6VarI2 = nd6Var.i();
                                        zn4 zn4Var4 = zn4.a;
                                        zn4.b(null, new mj(od6VarI2, jv1Var, i6));
                                    }
                                } else {
                                    if (yc6.i(str)) {
                                        if (str != null) {
                                        }
                                        g84.h(dj7.k(nd6Var.a, ".performQuickAction not handling ", str));
                                        return null;
                                    }
                                    if (z) {
                                        i = 5;
                                        if (z2) {
                                            sa1.R(sa1Var, null, new to5(nd6Var, i), 1);
                                        } else {
                                            zn4.c(new yi5(nd6Var.i(), 5));
                                        }
                                    } else {
                                        ai8.q(sa1Var, CallsBackupRestoreActivity.class);
                                    }
                                }
                            } else {
                                z = zc6Var.e;
                                z2 = zc6Var.q;
                                if (yc6.h(str)) {
                                    if (zc6Var.f) {
                                        mp6 mp6Var3 = mp6.a;
                                        if (!mp6.f()) {
                                            Const.O();
                                        } else if (z2) {
                                            sa1.R(sa1Var, null, new gn3(1, nd6Var, zc6Var, sa1Var), 1);
                                        } else if (zc6Var.c()) {
                                            sa1Var.G().g(zc6Var);
                                        } else {
                                            sa1Var.G().g(zc6Var);
                                        }
                                    } else if (z2) {
                                        sa1.R(sa1Var, null, new gn3(1, nd6Var, zc6Var, sa1Var), 1);
                                    } else if (zc6Var.c()) {
                                        sa1Var.G().g(zc6Var);
                                    } else {
                                        sa1Var.G().g(zc6Var);
                                    }
                                } else if (yc6.j(str)) {
                                    if (!z) {
                                        ai8.q(sa1Var, MessagesBackupRestoreActivity.class);
                                    } else if (z2) {
                                        sa1.R(sa1Var, null, new yi5(nd6Var, 4), 1);
                                    } else {
                                        od6 od6VarI3 = nd6Var.i();
                                        zn4 zn4Var5 = zn4.a;
                                        zn4.b(null, new mj(od6VarI3, jv1Var, i6));
                                    }
                                } else {
                                    if (yc6.i(str)) {
                                        if (str != null) {
                                        }
                                        g84.h(dj7.k(nd6Var.a, ".performQuickAction not handling ", str));
                                        return null;
                                    }
                                    if (z) {
                                        i = 5;
                                        if (z2) {
                                            sa1.R(sa1Var, null, new to5(nd6Var, i), 1);
                                        } else {
                                            zn4.c(new yi5(nd6Var.i(), 5));
                                        }
                                    } else {
                                        ai8.q(sa1Var, CallsBackupRestoreActivity.class);
                                    }
                                }
                            }
                        }
                    } else if (yc6.j(str)) {
                        dz5 dz5Var3 = dz5.a;
                        if (dz5.m()) {
                            int i10 = PreconditionsActivity.P;
                            Intent intentPutExtra3 = new Intent(sa1Var2, (Class<?>) PreconditionsActivity.class).putExtra("request_code", 2);
                            intentPutExtra3.getClass();
                            sa1Var2.startActivityForResult(intentPutExtra3, 2);
                        } else {
                            activity = nd6Var.getActivity();
                            if (activity != null) {
                                z = zc6Var.e;
                                z2 = zc6Var.q;
                                if (yc6.h(str)) {
                                    if (zc6Var.f) {
                                        mp6 mp6Var4 = mp6.a;
                                        if (!mp6.f()) {
                                            Const.O();
                                        } else if (z2) {
                                            sa1.R(sa1Var, null, new gn3(1, nd6Var, zc6Var, sa1Var), 1);
                                        } else if (zc6Var.c()) {
                                            sa1Var.G().g(zc6Var);
                                        } else {
                                            sa1Var.G().g(zc6Var);
                                        }
                                    } else if (z2) {
                                        sa1.R(sa1Var, null, new gn3(1, nd6Var, zc6Var, sa1Var), 1);
                                    } else if (zc6Var.c()) {
                                        sa1Var.G().g(zc6Var);
                                    } else {
                                        sa1Var.G().g(zc6Var);
                                    }
                                } else if (yc6.j(str)) {
                                    if (!z) {
                                        ai8.q(sa1Var, MessagesBackupRestoreActivity.class);
                                    } else if (z2) {
                                        sa1.R(sa1Var, null, new yi5(nd6Var, 4), 1);
                                    } else {
                                        od6 od6VarI4 = nd6Var.i();
                                        zn4 zn4Var6 = zn4.a;
                                        zn4.b(null, new mj(od6VarI4, jv1Var, i6));
                                    }
                                } else {
                                    if (yc6.i(str)) {
                                        if (str != null) {
                                        }
                                        g84.h(dj7.k(nd6Var.a, ".performQuickAction not handling ", str));
                                        return null;
                                    }
                                    if (z) {
                                        i = 5;
                                        if (z2) {
                                            sa1.R(sa1Var, null, new to5(nd6Var, i), 1);
                                        } else {
                                            zn4.c(new yi5(nd6Var.i(), 5));
                                        }
                                    } else {
                                        ai8.q(sa1Var, CallsBackupRestoreActivity.class);
                                    }
                                }
                            } else {
                                z = zc6Var.e;
                                z2 = zc6Var.q;
                                if (yc6.h(str)) {
                                    if (zc6Var.f) {
                                        mp6 mp6Var5 = mp6.a;
                                        if (!mp6.f()) {
                                            Const.O();
                                        } else if (z2) {
                                            sa1.R(sa1Var, null, new gn3(1, nd6Var, zc6Var, sa1Var), 1);
                                        } else if (zc6Var.c()) {
                                            sa1Var.G().g(zc6Var);
                                        } else {
                                            sa1Var.G().g(zc6Var);
                                        }
                                    } else if (z2) {
                                        sa1.R(sa1Var, null, new gn3(1, nd6Var, zc6Var, sa1Var), 1);
                                    } else if (zc6Var.c()) {
                                        sa1Var.G().g(zc6Var);
                                    } else {
                                        sa1Var.G().g(zc6Var);
                                    }
                                } else if (yc6.j(str)) {
                                    if (!z) {
                                        ai8.q(sa1Var, MessagesBackupRestoreActivity.class);
                                    } else if (z2) {
                                        sa1.R(sa1Var, null, new yi5(nd6Var, 4), 1);
                                    } else {
                                        od6 od6VarI5 = nd6Var.i();
                                        zn4 zn4Var7 = zn4.a;
                                        zn4.b(null, new mj(od6VarI5, jv1Var, i6));
                                    }
                                } else {
                                    if (yc6.i(str)) {
                                        if (str != null) {
                                        }
                                        g84.h(dj7.k(nd6Var.a, ".performQuickAction not handling ", str));
                                        return null;
                                    }
                                    if (z) {
                                        i = 5;
                                        if (z2) {
                                            sa1.R(sa1Var, null, new to5(nd6Var, i), 1);
                                        } else {
                                            zn4.c(new yi5(nd6Var.i(), 5));
                                        }
                                    } else {
                                        ai8.q(sa1Var, CallsBackupRestoreActivity.class);
                                    }
                                }
                            }
                        }
                    } else {
                        activity = nd6Var.getActivity();
                        if (activity != null) {
                            z = zc6Var.e;
                            z2 = zc6Var.q;
                            if (yc6.h(str)) {
                                if (zc6Var.f) {
                                    mp6 mp6Var6 = mp6.a;
                                    if (!mp6.f()) {
                                        Const.O();
                                    } else if (z2) {
                                        sa1.R(sa1Var, null, new gn3(1, nd6Var, zc6Var, sa1Var), 1);
                                    } else if (zc6Var.c()) {
                                        sa1Var.G().g(zc6Var);
                                    } else {
                                        sa1Var.G().g(zc6Var);
                                    }
                                } else if (z2) {
                                    sa1.R(sa1Var, null, new gn3(1, nd6Var, zc6Var, sa1Var), 1);
                                } else if (zc6Var.c()) {
                                    sa1Var.G().g(zc6Var);
                                } else {
                                    sa1Var.G().g(zc6Var);
                                }
                            } else if (yc6.j(str)) {
                                if (!z) {
                                    ai8.q(sa1Var, MessagesBackupRestoreActivity.class);
                                } else if (z2) {
                                    sa1.R(sa1Var, null, new yi5(nd6Var, 4), 1);
                                } else {
                                    od6 od6VarI6 = nd6Var.i();
                                    zn4 zn4Var8 = zn4.a;
                                    zn4.b(null, new mj(od6VarI6, jv1Var, i6));
                                }
                            } else {
                                if (yc6.i(str)) {
                                    if (str != null) {
                                    }
                                    g84.h(dj7.k(nd6Var.a, ".performQuickAction not handling ", str));
                                    return null;
                                }
                                if (z) {
                                    i = 5;
                                    if (z2) {
                                        sa1.R(sa1Var, null, new to5(nd6Var, i), 1);
                                    } else {
                                        zn4.c(new yi5(nd6Var.i(), 5));
                                    }
                                } else {
                                    ai8.q(sa1Var, CallsBackupRestoreActivity.class);
                                }
                            }
                        } else {
                            z = zc6Var.e;
                            z2 = zc6Var.q;
                            if (yc6.h(str)) {
                                if (zc6Var.f) {
                                    mp6 mp6Var7 = mp6.a;
                                    if (!mp6.f()) {
                                        Const.O();
                                    } else if (z2) {
                                        sa1.R(sa1Var, null, new gn3(1, nd6Var, zc6Var, sa1Var), 1);
                                    } else if (zc6Var.c()) {
                                        sa1Var.G().g(zc6Var);
                                    } else {
                                        sa1Var.G().g(zc6Var);
                                    }
                                } else if (z2) {
                                    sa1.R(sa1Var, null, new gn3(1, nd6Var, zc6Var, sa1Var), 1);
                                } else if (zc6Var.c()) {
                                    sa1Var.G().g(zc6Var);
                                } else {
                                    sa1Var.G().g(zc6Var);
                                }
                            } else if (yc6.j(str)) {
                                if (!z) {
                                    ai8.q(sa1Var, MessagesBackupRestoreActivity.class);
                                } else if (z2) {
                                    sa1.R(sa1Var, null, new yi5(nd6Var, 4), 1);
                                } else {
                                    od6 od6VarI7 = nd6Var.i();
                                    zn4 zn4Var9 = zn4.a;
                                    zn4.b(null, new mj(od6VarI7, jv1Var, i6));
                                }
                            } else {
                                if (yc6.i(str)) {
                                    if (str != null) {
                                    }
                                    g84.h(dj7.k(nd6Var.a, ".performQuickAction not handling ", str));
                                    return null;
                                }
                                if (z) {
                                    i = 5;
                                    if (z2) {
                                        sa1.R(sa1Var, null, new to5(nd6Var, i), 1);
                                    } else {
                                        zn4.c(new yi5(nd6Var.i(), 5));
                                    }
                                } else {
                                    ai8.q(sa1Var, CallsBackupRestoreActivity.class);
                                }
                            }
                        }
                    }
                }
                return be8Var;
            default:
                mt3 mt3Var = (mt3) obj3;
                Long l = (Long) obj;
                l.longValue();
                ((Integer) obj2).intValue();
                if (mt3Var != null) {
                    mt3Var.invoke(l);
                }
                return be8Var;
        }
    }
}
