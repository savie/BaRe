package defpackage;

import android.content.Context;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.home.cloud.CloudBackupTag;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class kg1 extends ws7 implements qt3 {
    public final /* synthetic */ ng1 a;
    public final /* synthetic */ String b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kg1(ng1 ng1Var, String str, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = ng1Var;
        this.b = str;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new kg1(this.a, this.b, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        kg1 kg1Var = (kg1) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        kg1Var.invokeSuspend(be8Var);
        return be8Var;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:37:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:38:0x010a  */
    /* JADX WARN: Code duplicated, block: B:40:0x010e  */
    /* JADX WARN: Code duplicated, block: B:41:0x0111  */
    /* JADX WARN: Code duplicated, block: B:43:0x0114  */
    /* JADX WARN: Code duplicated, block: B:51:0x0149  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        String lowerCase;
        qo0 qo0Var;
        af3 af3VarC;
        ye3 ye3Var;
        lg7.H(obj);
        ng1 ng1Var = this.a;
        qo0 qo0Var2 = ng1Var.d;
        if (qo0Var2 == null) {
            pe4.F("activityVM");
            throw null;
        }
        qo0Var2.h(R.string.processing);
        l73 l73VarA = cf3.a(re3.f(), true);
        boolean z = l73VarA instanceof xe3;
        be8 be8Var = be8.a;
        if (!z) {
            we3 we3Var = l73VarA instanceof we3 ? (we3) l73VarA : null;
            if (we3Var != null) {
                vr6.e$default(vr6.INSTANCE, ng1Var.b, xs1.j("Error while reading devices dir: ", we3Var.n.b), null, 4, null);
            }
            qo0 qo0Var3 = ng1Var.d;
            if (qo0Var3 == null) {
                pe4.F("activityVM");
                throw null;
            }
            qo0Var3.f();
            Const.P();
            return be8Var;
        }
        db2 db2VarB = ((xe3) l73VarA).n.b();
        boolean z2 = db2VarB instanceof Collection;
        String str = this.b;
        if (z2 && ((Collection) db2VarB).isEmpty()) {
            qo0Var = ng1Var.d;
            if (qo0Var != null) {
                pe4.F("activityVM");
                throw null;
            }
            qo0Var.h(R.string.creating_cloud_backup_tag);
            af3VarC = cf3.c(re3.f().d(str), new CloudBackupTag(null, null, null, Boolean.TRUE, null, 23, null));
            if (af3VarC instanceof ze3) {
                SwiftApp.Companion companion = SwiftApp.d;
                Context contextC = SwiftApp.Companion.c();
                String string = contextC.getString(R.string.successful);
                string.getClass();
                zn4 zn4Var = zn4.a;
                dj7.y(contextC, string);
                tb1 tb1Var = tb1.a;
                qb1.t(str);
            } else {
                if (af3VarC instanceof ye3) {
                    ye3Var = (ye3) af3VarC;
                } else {
                    ye3Var = null;
                }
                if (ye3Var != null) {
                    vr6.e$default(vr6.INSTANCE, ng1Var.b, xs1.j("Error while creating new active folder: ", ye3Var.b.b), null, 4, null);
                }
                SwiftApp.Companion companion2 = SwiftApp.d;
                Context contextC2 = SwiftApp.Companion.c();
                String string2 = contextC2.getString(R.string.unknown_error_occured);
                string2.getClass();
                zn4 zn4Var2 = zn4.a;
                dj7.y(contextC2, string2);
            }
        } else {
            Iterator it = (Iterator) db2VarB.b;
            while (true) {
                if (it.hasNext()) {
                    hk5 hk5Var = (hk5) it.next();
                    zc2 zc2VarD = ((eb2) db2VarB.c).b.d(hk5Var.a.a);
                    sb4.d(hk5Var.b);
                    String strE = zc2VarD.e();
                    if (strE != null) {
                        Locale locale = Locale.getDefault();
                        locale.getClass();
                        lowerCase = strE.toLowerCase(locale);
                        lowerCase.getClass();
                    } else {
                        lowerCase = null;
                    }
                    Locale locale2 = Locale.getDefault();
                    locale2.getClass();
                    String lowerCase2 = str.toLowerCase(locale2);
                    lowerCase2.getClass();
                    if (pe4.d(lowerCase, lowerCase2)) {
                        SwiftApp.Companion companion3 = SwiftApp.d;
                        Context contextC3 = SwiftApp.Companion.c();
                        String strG = dj7.g(R.string.folder_already_exists);
                        zn4 zn4Var3 = zn4.a;
                        dj7.y(contextC3, strG);
                    }
                } else {
                    qo0Var = ng1Var.d;
                    if (qo0Var != null) {
                        pe4.F("activityVM");
                        throw null;
                    }
                    qo0Var.h(R.string.creating_cloud_backup_tag);
                    af3VarC = cf3.c(re3.f().d(str), new CloudBackupTag(null, null, null, Boolean.TRUE, null, 23, null));
                    if (af3VarC instanceof ze3) {
                        SwiftApp.Companion companion4 = SwiftApp.d;
                        Context contextC4 = SwiftApp.Companion.c();
                        String string3 = contextC4.getString(R.string.successful);
                        string3.getClass();
                        zn4 zn4Var4 = zn4.a;
                        dj7.y(contextC4, string3);
                        tb1 tb1Var2 = tb1.a;
                        qb1.t(str);
                    } else {
                        if (af3VarC instanceof ye3) {
                            ye3Var = (ye3) af3VarC;
                        } else {
                            ye3Var = null;
                        }
                        if (ye3Var != null) {
                            vr6.e$default(vr6.INSTANCE, ng1Var.b, xs1.j("Error while creating new active folder: ", ye3Var.b.b), null, 4, null);
                        }
                        SwiftApp.Companion companion5 = SwiftApp.d;
                        Context contextC5 = SwiftApp.Companion.c();
                        String string4 = contextC5.getString(R.string.unknown_error_occured);
                        string4.getClass();
                        zn4 zn4Var5 = zn4.a;
                        dj7.y(contextC5, string4);
                    }
                }
            }
        }
        qo0 qo0Var4 = ng1Var.d;
        if (qo0Var4 != null) {
            qo0Var4.f();
            return be8Var;
        }
        pe4.F("activityVM");
        throw null;
    }
}
