package defpackage;

import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import org.swiftapps.swiftbackup.model.app.AppCloudBackups;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class dq implements mt3 {
    public final /* synthetic */ int a;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.mt3
    public final Object invoke(Object obj) throws InterruptedException {
        int i = this.a;
        int i2 = 1;
        Object[] objArr = 0;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                String str = (String) obj;
                str.getClass();
                return Boolean.valueOf(nq7.Z(str, "crashlytics", false) || nq7.Z(str, "com.google.android.gms", false));
            case 1:
                ji jiVar = (ji) obj;
                jiVar.getClass();
                AppCloudBackups cloudBackups = jiVar.getCloudBackups();
                return Long.valueOf(io4.h(cloudBackups != null ? Long.valueOf(cloudBackups.getTotalSize()) : null));
            case 2:
                ((Boolean) obj).getClass();
                return be8Var;
            case 3:
                Long l = (Long) obj;
                if ((l != null ? l.longValue() : 0L) <= 0) {
                    return null;
                }
                p93 p93Var = p93.a;
                return p93.c(l);
            case 4:
                Thread.sleep(((Long) obj).longValue());
                return be8Var;
            case 5:
                String str2 = (String) obj;
                str2.getClass();
                return jr7.c(str2);
            case 6:
                String str3 = (String) obj;
                str3.getClass();
                l73 l73VarA = cf3.a(re3.k().d("cloud_v1").d(str3), true);
                if (l73VarA instanceof xe3) {
                    sb4 sb4Var = ((xe3) l73VarA).n.a;
                    return new mf1(sb4Var.a.getValue(), !sb4Var.a.isEmpty());
                }
                if (l73VarA instanceof we3) {
                    return lf1.g;
                }
                q.j();
                return null;
            case 7:
                dd1 dd1Var = (dd1) obj;
                ix6 ix6Var = c64.l;
                dd1Var.getClass();
                return Boolean.valueOf(dd1Var.getReleaseState().compareTo(xi6.Beta) >= 0);
            case 8:
                bt3 bt3Var = (bt3) obj;
                bt3Var.getClass();
                zn4 zn4Var = zn4.a;
                zn4.b(null, new r11(bt3Var, objArr == true ? 1 : 0, i2));
                return be8Var;
            case XmlPullParser.COMMENT /* 9 */:
                Throwable th = (Throwable) obj;
                vr6.w$default(vr6.INSTANCE, "LocaleVM", "Ignoring malformed translation credit: ".concat(th != null ? th.getClass().getSimpleName() : "non-object value"), null, 4, null);
                return be8Var;
            case 10:
                Thread.sleep(((Long) obj).longValue());
                return be8Var;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                ((vc2) obj).getClass();
                throw new io5(0);
            case 12:
                ((vg) obj).getClass();
                return be8Var;
            default:
                ((vg) obj).getClass();
                return be8Var;
        }
    }

    public /* synthetic */ dq(int i) {
        this.a = i;
    }
}
