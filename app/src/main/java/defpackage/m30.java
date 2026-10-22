package defpackage;

import android.app.WallpaperManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Parcelable;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appconfigs.data.Config;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.model.app.AppCloudBackup;
import org.swiftapps.swiftbackup.model.app.AppCloudBackups;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class m30 extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ qo0 b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Parcelable d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ m30(qo0 qo0Var, Object obj, Parcelable parcelable, jv1 jv1Var, int i) {
        super(2, jv1Var);
        this.a = i;
        this.b = qo0Var;
        this.c = obj;
        this.d = parcelable;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Parcelable parcelable = this.d;
        Object obj2 = this.c;
        qo0 qo0Var = this.b;
        switch (i) {
            case 0:
                return new m30((n30) qo0Var, (k30) obj2, (Config) parcelable, jv1Var, 0);
            default:
                return new m30((co8) qo0Var, (ho8) obj2, (Bitmap) parcelable, jv1Var, 1);
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        xx1 xx1Var = (xx1) obj;
        jv1 jv1Var = (jv1) obj2;
        switch (i) {
            case 0:
                ((m30) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
            default:
                ((m30) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
        }
        return be8Var;
    }

    /* JADX WARN: Code duplicated, block: B:107:0x0282  */
    /* JADX WARN: Code duplicated, block: B:110:0x0297 A[LOOP:10: B:105:0x027c->B:110:0x0297, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:115:0x02ac  */
    /* JADX WARN: Code duplicated, block: B:118:0x02c1 A[LOOP:11: B:113:0x02a6->B:118:0x02c1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:123:0x02d7  */
    /* JADX WARN: Code duplicated, block: B:126:0x02de  */
    /* JADX WARN: Code duplicated, block: B:132:0x02f1  */
    /* JADX WARN: Code duplicated, block: B:133:0x02f4  */
    /* JADX WARN: Code duplicated, block: B:136:0x02fb  */
    /* JADX WARN: Code duplicated, block: B:147:0x0323  */
    /* JADX WARN: Code duplicated, block: B:150:0x032a  */
    /* JADX WARN: Code duplicated, block: B:153:0x0334  */
    /* JADX WARN: Code duplicated, block: B:183:0x0425  */
    /* JADX WARN: Code duplicated, block: B:249:0x029a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:250:0x029e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:251:0x02c4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:252:0x02c8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:257:0x0345 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:258:? A[LOOP:13: B:151:0x032e->B:258:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v16, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v25 */
    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        Set set;
        boolean z;
        ?? r3;
        jz jzVar;
        gm gmVar;
        List<AppCloudBackup> backups;
        Iterator it;
        Set set2;
        Object next;
        ji jiVar;
        Iterator it2;
        ji jiVar2;
        Object next2;
        ji jiVar3;
        List<q05> locations;
        Set<LabelParams> labels;
        int i = this.a;
        be8 be8Var = be8.a;
        int i2 = 0;
        boolean z2 = true;
        qo0 qo0Var = this.b;
        Object obj2 = this.c;
        Parcelable parcelable = this.d;
        jv1 jv1Var = null;
        switch (i) {
            case 0:
                Config config = (Config) parcelable;
                lg7.H(obj);
                n30 n30Var = (n30) qo0Var;
                ex6 ex6Var = n30Var.j;
                ex6Var.k(ym7.LOADING);
                k30 k30Var = (k30) obj2;
                boolean zD = pe4.d(k30Var.a, "Backup");
                List<ConfigSettings> list = ov2.a;
                if (zD) {
                    List<ConfigSettings> validSettings = config.getValidSettings();
                    if (validSettings == null) {
                        validSettings = list;
                    }
                    n30Var.i = fq1.a(validSettings);
                }
                if (pe4.d(k30Var.a, "Restore")) {
                    List<ConfigSettings> validSettings2 = config.getValidSettings();
                    if (validSettings2 != null) {
                        list = validSettings2;
                    }
                    vr6.i$default(vr6.INSTANCE, "ConfigAppsLoader", xs1.h(list.size(), "getAppTaskPropertiesForRestore: Loading apps list for ", " custom settings"), null, 4, null);
                    g00 g00Var = g00.a;
                    g00.C();
                    c00 c00VarL = g00Var.l(true);
                    ArrayList arrayListG1 = el1.g1((List) c00VarL.b, (ArrayList) c00VarL.c);
                    ArrayList arrayList = new ArrayList();
                    for (Object obj3 : arrayListG1) {
                        if (((ji) obj3).hasRestorableBackup(false)) {
                            arrayList.add(obj3);
                        }
                    }
                    List listE = ua1.g.e();
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj4 : listE) {
                        if (((ji) obj4).hasRestorableBackup(true)) {
                            arrayList2.add(obj4);
                        }
                    }
                    ArrayList arrayList3 = new ArrayList(hl1.G0(arrayList, 10));
                    Iterator it3 = arrayList.iterator();
                    while (it3.hasNext()) {
                        arrayList3.add(((ji) it3.next()).getPackageName());
                    }
                    ArrayList arrayList4 = new ArrayList(hl1.G0(arrayList2, 10));
                    Iterator it4 = arrayList2.iterator();
                    while (it4.hasNext()) {
                        arrayList4.add(((ji) it4.next()).getPackageName());
                    }
                    ArrayList arrayListG2 = el1.g1(arrayList3, arrayList4);
                    ArrayList arrayList5 = new ArrayList();
                    for (Object obj5 : arrayListG2) {
                        if (((String) obj5).length() > 0) {
                            arrayList5.add(obj5);
                        }
                    }
                    Set<String> setZ1 = el1.z1(arrayList5);
                    ArrayList arrayList6 = new ArrayList();
                    for (Object obj6 : list) {
                        int i3 = i2 + 1;
                        if (i2 < 0) {
                            fl1.F0();
                            throw null;
                        }
                        ConfigSettings configSettings = (ConfigSettings) obj6;
                        vr6.i$default(vr6.INSTANCE, "ConfigAppsLoader", fz5.j(i3, "Getting apps for ConfigSettings #"), null, 4, null);
                        ConfigSettings.ApplyData applyData = configSettings.getApplyData();
                        if (applyData == null) {
                            c6.f("Required value was null.");
                        } else if (applyData.isValid(z2)) {
                            List<String> labelIds = applyData.getLabelIds();
                            if (labelIds == null) {
                                set = setZ1;
                                z = z2;
                            } else {
                                if (labelIds.isEmpty()) {
                                    r3 = labelIds;
                                    r3 = jv1Var;
                                }
                                if (r3 != 0) {
                                    ArrayList arrayList7 = new ArrayList();
                                    for (Object obj7 : r3) {
                                        LabelParams.Companion.getClass();
                                        if (!hr4.c((String) obj7)) {
                                            arrayList7.add(obj7);
                                        }
                                    }
                                    ArrayList<String> arrayList8 = new ArrayList();
                                    for (Object obj8 : r3) {
                                        LabelParams.Companion.getClass();
                                        if (hr4.c((String) obj8)) {
                                            arrayList8.add(obj8);
                                        }
                                    }
                                    ArrayList arrayList9 = new ArrayList();
                                    for (String str : setZ1) {
                                        if (arrayList6.isEmpty()) {
                                            it = arrayList.iterator();
                                            while (true) {
                                                if (it.hasNext()) {
                                                    next = it.next();
                                                    set2 = setZ1;
                                                    if (pe4.d(((ji) next).getPackageName(), str)) {
                                                        setZ1 = set2;
                                                    }
                                                } else {
                                                    set2 = setZ1;
                                                    next = null;
                                                }
                                            }
                                            jiVar = (ji) next;
                                            it2 = arrayList2.iterator();
                                            while (true) {
                                                if (it2.hasNext()) {
                                                    next2 = it2.next();
                                                    jiVar2 = jiVar;
                                                    if (pe4.d(((ji) next2).getPackageName(), str)) {
                                                        jiVar = jiVar2;
                                                    }
                                                } else {
                                                    jiVar2 = jiVar;
                                                    next2 = null;
                                                }
                                            }
                                            jiVar3 = (ji) next2;
                                            locations = configSettings.getLocations();
                                            if (!ji8.v(locations)) {
                                                jiVar3 = jiVar2;
                                            } else if (!ji8.t(locations)) {
                                                if (locations.contains(q05.DEVICE) || !locations.contains(q05.CLOUD)) {
                                                    jiVar3 = null;
                                                } else if (jiVar2 != null) {
                                                    jiVar3 = jiVar2;
                                                }
                                            }
                                            if (jiVar3 != null) {
                                                labels = jiVar3.getLabels();
                                                if (labels == null && !labels.isEmpty()) {
                                                    Iterator it5 = labels.iterator();
                                                    while (true) {
                                                        if (it5.hasNext()) {
                                                            if (el1.M0(arrayList7, ((LabelParams) it5.next()).getId())) {
                                                            }
                                                        } else if (!arrayList8.isEmpty()) {
                                                            for (String str2 : arrayList8) {
                                                                LabelParams.Companion.getClass();
                                                                if (hr4.b(jiVar3, str2)) {
                                                                }
                                                            }
                                                        }
                                                        arrayList9.add(jiVar3);
                                                    }
                                                } else if (!arrayList8.isEmpty()) {
                                                    while (r7.hasNext()) {
                                                        LabelParams.Companion.getClass();
                                                        if (hr4.b(jiVar3, str2)) {
                                                            arrayList9.add(jiVar3);
                                                        }
                                                    }
                                                }
                                            }
                                            setZ1 = set2;
                                        } else {
                                            Iterator it6 = arrayList6.iterator();
                                            while (true) {
                                                if (!it6.hasNext()) {
                                                    it = arrayList.iterator();
                                                    while (true) {
                                                        if (it.hasNext()) {
                                                            next = it.next();
                                                            set2 = setZ1;
                                                            if (pe4.d(((ji) next).getPackageName(), str)) {
                                                                setZ1 = set2;
                                                            }
                                                        } else {
                                                            set2 = setZ1;
                                                            next = null;
                                                        }
                                                    }
                                                    jiVar = (ji) next;
                                                    it2 = arrayList2.iterator();
                                                    while (true) {
                                                        if (it2.hasNext()) {
                                                            next2 = it2.next();
                                                            jiVar2 = jiVar;
                                                            if (pe4.d(((ji) next2).getPackageName(), str)) {
                                                                jiVar = jiVar2;
                                                            }
                                                        } else {
                                                            jiVar2 = jiVar;
                                                            next2 = null;
                                                        }
                                                    }
                                                    jiVar3 = (ji) next2;
                                                    locations = configSettings.getLocations();
                                                    if (!ji8.v(locations)) {
                                                        jiVar3 = jiVar2;
                                                    } else if (!ji8.t(locations)) {
                                                        if (locations.contains(q05.DEVICE)) {
                                                            jiVar3 = null;
                                                        } else {
                                                            jiVar3 = null;
                                                        }
                                                    }
                                                    if (jiVar3 != null) {
                                                        labels = jiVar3.getLabels();
                                                        if (labels == null) {
                                                            if (!arrayList8.isEmpty()) {
                                                                while (r7.hasNext()) {
                                                                    LabelParams.Companion.getClass();
                                                                    if (hr4.b(jiVar3, str2)) {
                                                                        arrayList9.add(jiVar3);
                                                                    }
                                                                }
                                                            }
                                                        } else if (!arrayList8.isEmpty()) {
                                                            while (r7.hasNext()) {
                                                                LabelParams.Companion.getClass();
                                                                if (hr4.b(jiVar3, str2)) {
                                                                    arrayList9.add(jiVar3);
                                                                }
                                                            }
                                                        }
                                                    }
                                                    setZ1 = set2;
                                                } else if (pe4.d(((jz) it6.next()).b.getPackageName(), str)) {
                                                }
                                            }
                                        }
                                    }
                                    set = setZ1;
                                    vr6.i$default(vr6.INSTANCE, "ConfigAppsLoader", fz5.j(arrayList9.size(), "Num of apps matching Labels="), null, 4, null);
                                    iy iyVar = iy.a;
                                    List<ji> listF = iy.f(arrayList9, null);
                                    ArrayList arrayList10 = new ArrayList(hl1.G0(listF, 10));
                                    for (ji jiVar4 : listF) {
                                        if (jiVar4.isCloudApp()) {
                                            AppCloudBackups cloudBackups = jiVar4.getCloudBackups();
                                            AppCloudBackup appCloudBackup = (cloudBackups == null || (backups = cloudBackups.getBackups()) == null) ? null : (AppCloudBackup) el1.U0(backups);
                                            if (appCloudBackup != null) {
                                                jzVar = new jz(jiVar4, configSettings.getAppParts(), configSettings.getRestorePermissionsMode(), configSettings.getRestoreSpecialPermissions(), configSettings.getRestoreSsaid(), new hk(appCloudBackup.getBackupId(), jiVar4.getPackageName(), true), appCloudBackup);
                                                arrayList10.add(jzVar);
                                            } else {
                                                f6.g(xs1.j("No cloud backup for app: ", jiVar4.asString()));
                                            }
                                        } else {
                                            List<gm> localBackups = jiVar4.getLocalBackups();
                                            hk hkVar = (localBackups == null || (gmVar = (gm) el1.U0(localBackups)) == null) ? null : gmVar.a;
                                            if (hkVar != null) {
                                                jzVar = new jz(jiVar4, configSettings.getAppParts(), configSettings.getRestorePermissionsMode(), configSettings.getRestoreSpecialPermissions(), configSettings.getRestoreSsaid(), hkVar, null);
                                                arrayList10.add(jzVar);
                                            } else {
                                                f6.g(xs1.j("No local backup for app: ", jiVar4.asString()));
                                            }
                                        }
                                    }
                                    z = true;
                                    arrayList6.addAll(arrayList10);
                                } else {
                                    set = setZ1;
                                    z = z2;
                                }
                            }
                            setZ1 = set;
                            i2 = i3;
                            z2 = z;
                            jv1Var = null;
                        } else {
                            c6.f("Failed requirement.");
                        }
                        return null;
                    }
                    vr6.i$default(vr6.INSTANCE, "ConfigAppsLoader", fz5.j(arrayList6.size(), "Apps list compiled with size "), null, 4, null);
                    n30Var.i = arrayList6;
                }
                ArrayList arrayList11 = n30Var.i;
                if (arrayList11 == null || arrayList11.isEmpty()) {
                    SwiftApp.Companion companion = SwiftApp.d;
                    Context contextC = SwiftApp.Companion.c();
                    String string = contextC.getString(R.string.apps_empty_list_error);
                    string.getClass();
                    zn4 zn4Var = zn4.a;
                    zn4.e(new cv(14, contextC, string));
                    n30Var.d();
                    return be8Var;
                }
                ArrayList arrayList12 = n30Var.i;
                arrayList12.getClass();
                ArrayList arrayList13 = new ArrayList(hl1.G0(arrayList12, 10));
                Iterator it7 = arrayList12.iterator();
                while (it7.hasNext()) {
                    arrayList13.add(((kz) it7.next()).a());
                }
                ArrayList arrayList14 = new ArrayList(hl1.G0(arrayList13, 10));
                Iterator it8 = arrayList13.iterator();
                while (it8.hasNext()) {
                    arrayList14.add(((ji) it8.next()).getItemId());
                }
                Set setZ2 = el1.z1(arrayList14);
                ex6Var.k(!arrayList13.isEmpty() ? ym7.DATA_RECEIVED : ym7.DATA_EMPTY);
                n30Var.k.k(new fm7((List) arrayList13, setZ2, true, (String) null, 20));
                return be8Var;
            default:
                Bitmap bitmap = (Bitmap) parcelable;
                ho8 ho8Var = (ho8) obj2;
                lg7.H(obj);
                co8 co8Var = (co8) qo0Var;
                co8Var.h(R.string.setting_wallpaper);
                gv7 gv7Var = co8Var.h;
                try {
                    if (ho8Var != null) {
                        x13.d(((WallpaperManager) gv7Var.getValue()).setBitmap(bitmap, null, true, ho8Var.getFlag()));
                    } else {
                        ((WallpaperManager) gv7Var.getValue()).setBitmap(bitmap);
                    }
                    i2 = 1;
                    break;
                } catch (IOException e) {
                    Log.e(co8Var.b, "setWallpaper: ", e);
                }
                if (ho8Var == null || ho8Var == ho8.HOME || ho8Var == ho8.BOTH) {
                    co8Var.j.k(Boolean.TRUE);
                }
                co8Var.f();
                SwiftApp.Companion companion2 = SwiftApp.d;
                Context contextC2 = SwiftApp.Companion.c();
                String string2 = contextC2.getString(i2 != 0 ? R.string.wallpaper_applied : R.string.coud_not_apply_wallpaper);
                string2.getClass();
                zn4 zn4Var2 = zn4.a;
                dj7.y(contextC2, string2);
                uv7 uv7Var = uv7.a;
                zn4.b(null, new mg1(jv1Var, jv1Var, 5));
                co8Var.d();
                return be8Var;
        }
    }
}
