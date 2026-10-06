package defpackage;

import android.app.Activity;
import android.os.Looper;
import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class xi0 {
    public final il0 a;
    public long b;

    public xi0(il0 il0Var) {
        this.a = il0Var;
    }

    public static final ArrayList a(xi0 xi0Var, Activity activity, boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        if (z2 && z) {
            arrayList.add(e(xi0Var, activity, "system_app_parts", true, R.string.select_parts_system_apps, false));
            arrayList.add(e(xi0Var, activity, "user_app_parts", false, R.string.select_parts_user_apps, true));
            return arrayList;
        }
        if (z2) {
            arrayList.add(e(xi0Var, activity, "system_app_parts", true, R.string.select_parts_system_apps, true));
        }
        if (z) {
            arrayList.add(e(xi0Var, activity, "user_app_parts", false, R.string.select_parts_user_apps, true));
        }
        return arrayList;
    }

    public static final jj0 d(xi0 xi0Var, Activity activity, boolean z, boolean z2, boolean z3, String str, boolean z4, String str2, boolean z5, String str3, boolean z6, String str4, boolean z7, String str5, String str6, boolean z8, int i, boolean z9) {
        il0 il0Var = xi0Var.a;
        String string = il0Var.getString(i);
        string.getClass();
        jj0 jj0Var = new jj0(str6, string, z9, new dk(activity, 10), 4);
        iu iuVar = iu.APP;
        li0 li0Var = new li0(iuVar.toString(), (z2 || z3) ? "APKs" : "APK", str == null ? "" : str, Integer.valueOf(R.drawable.ic_app), (Integer) null, iuVar.isCheckedInExpansion(z8), (ao) null, 208);
        List list = jj0Var.c;
        list.add(li0Var);
        ao ii0Var = ki0.c;
        int i2 = R.drawable.ic_hashtag;
        if (z4) {
            iu iuVar2 = iu.DATA;
            sk0 backupReq = iuVar2.getBackupReq();
            boolean z10 = z || backupReq.isPossible();
            String string2 = iuVar2.toString();
            String string3 = il0Var.getString(R.string.data);
            string3.getClass();
            list.add(new li0(string2, string3, str2 == null ? "" : str2, Integer.valueOf(!z10 ? R.drawable.ic_hashtag : R.drawable.ic_data), !z10 ? Integer.valueOf(R.color.red) : null, z10 && iuVar2.isCheckedInExpansion(z8), !z10 ? new ii0(backupReq.conditionMsg(il0Var), null, 2) : ii0Var, 128));
        }
        if (z5) {
            iu iuVar3 = iu.EXTDATA;
            sk0 backupReq2 = iuVar3.getBackupReq();
            boolean z11 = z || backupReq2.isPossible();
            String string4 = iuVar3.toString();
            String string5 = il0Var.getString(R.string.external_data);
            string5.getClass();
            list.add(new li0(string4, string5, str3 == null ? "" : str3, Integer.valueOf(!z11 ? R.drawable.ic_hashtag : R.drawable.ic_sd), !z11 ? Integer.valueOf(R.color.red) : null, z11 && iuVar3.isCheckedInExpansion(z8), !z11 ? new ii0(backupReq2.conditionMsg(il0Var), null, 2) : ii0Var, 128));
        }
        if (z7) {
            iu iuVar4 = iu.EXPANSION;
            sk0 backupReq3 = iuVar4.getBackupReq();
            boolean z12 = z || backupReq3.isPossible();
            String string6 = iuVar4.toString();
            String string7 = il0Var.getString(R.string.expansion);
            string7.getClass();
            list.add(new li0(string6, string7, str5 == null ? "" : str5, Integer.valueOf(!z12 ? R.drawable.ic_hashtag : R.drawable.ic_download), !z12 ? Integer.valueOf(R.color.red) : null, z12 && iuVar4.isCheckedInExpansion(z8), !z12 ? new ii0(backupReq3.conditionMsg(il0Var), null, 2) : ii0Var, 128));
        }
        if (z6) {
            iu iuVar5 = iu.MEDIA;
            sk0 backupReq4 = iuVar5.getBackupReq();
            boolean z13 = z || backupReq4.isPossible();
            String string8 = iuVar5.toString();
            String displayString$default = iu.toDisplayString$default(iuVar5, false, 1, null);
            String str7 = str4 != null ? str4 : "";
            if (z13) {
                i2 = R.drawable.ic_media;
            }
            Integer numValueOf = Integer.valueOf(i2);
            Integer numValueOf2 = Integer.valueOf(R.color.red);
            if (z13) {
                numValueOf2 = null;
            }
            boolean z14 = z13 && iuVar5.isCheckedInExpansion(z8);
            if (!z13) {
                ii0Var = new ii0(backupReq4.conditionMsg(il0Var), null, 2);
            }
            list.add(new li0(string8, displayString$default, str7, numValueOf, numValueOf2, z14, ii0Var, 128));
        }
        return jj0Var;
    }

    public static final jj0 e(xi0 xi0Var, Activity activity, String str, boolean z, int i, boolean z2) {
        return xi0Var.b(activity, str, z, z2, i, true, true, null, true, true, true, null, true, null, true, null, true, null);
    }

    public final jj0 b(Activity activity, String str, boolean z, boolean z2, int i, boolean z3, boolean z4, String str2, boolean z5, boolean z6, boolean z7, String str3, boolean z8, String str4, boolean z9, String str5, boolean z10, String str6) {
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return null;
        }
        il0 il0Var = this.a;
        String string = il0Var.getString(i);
        string.getClass();
        jj0 jj0Var = new jj0(str, string, z2, new bk(activity, 6), 4);
        ao ii0Var = ki0.c;
        List list = jj0Var.c;
        if (z4) {
            iu iuVar = iu.APP;
            list.add(new li0(iuVar.toString(), (z5 || z6) ? "APKs" : "APK", str2 == null ? "" : str2, Integer.valueOf(R.drawable.ic_app), (Integer) null, iuVar.isCheckedInExpansion(z), !z3 ? new ji0(il0Var.getString(R.string.app_must_be_installed_restore_warning), 2) : ii0Var, 144));
        }
        int i2 = R.drawable.ic_hashtag;
        if (z7) {
            iu iuVar2 = iu.DATA;
            sk0 backupReq = iuVar2.getBackupReq();
            boolean zIsPossible = backupReq.isPossible();
            String string2 = iuVar2.toString();
            String string3 = il0Var.getString(R.string.data);
            string3.getClass();
            String str7 = str3 == null ? "" : str3;
            Integer numValueOf = Integer.valueOf(!zIsPossible ? R.drawable.ic_hashtag : R.drawable.ic_data);
            Integer numValueOf2 = Integer.valueOf(R.color.red);
            if (zIsPossible) {
                numValueOf2 = null;
            }
            list.add(new li0(string2, string3, str7, numValueOf, numValueOf2, zIsPossible && iuVar2.isCheckedInExpansion(z), !zIsPossible ? new ii0(backupReq.conditionMsg(il0Var), null, 2) : ii0Var, 128));
        }
        if (z8) {
            iu iuVar3 = iu.EXTDATA;
            sk0 backupReq2 = iuVar3.getBackupReq();
            boolean zIsPossible2 = backupReq2.isPossible();
            String string4 = iuVar3.toString();
            String string5 = il0Var.getString(R.string.external_data);
            string5.getClass();
            String str8 = str4 == null ? "" : str4;
            Integer numValueOf3 = Integer.valueOf(!zIsPossible2 ? R.drawable.ic_hashtag : R.drawable.ic_sd);
            Integer numValueOf4 = Integer.valueOf(R.color.red);
            if (zIsPossible2) {
                numValueOf4 = null;
            }
            list.add(new li0(string4, string5, str8, numValueOf3, numValueOf4, zIsPossible2 && iuVar3.isCheckedInExpansion(z), !zIsPossible2 ? new ii0(backupReq2.conditionMsg(il0Var), null, 2) : ii0Var, 128));
        }
        if (z10) {
            iu iuVar4 = iu.EXPANSION;
            sk0 backupReq3 = iuVar4.getBackupReq();
            boolean zIsPossible3 = backupReq3.isPossible();
            String string6 = iuVar4.toString();
            String string7 = il0Var.getString(R.string.expansion);
            string7.getClass();
            String str9 = str6 == null ? "" : str6;
            Integer numValueOf5 = Integer.valueOf(!zIsPossible3 ? R.drawable.ic_hashtag : R.drawable.ic_download);
            Integer numValueOf6 = Integer.valueOf(R.color.red);
            if (zIsPossible3) {
                numValueOf6 = null;
            }
            list.add(new li0(string6, string7, str9, numValueOf5, numValueOf6, zIsPossible3 && iuVar4.isCheckedInExpansion(z), !zIsPossible3 ? new ii0(backupReq3.conditionMsg(il0Var), null, 2) : ii0Var, 128));
        }
        if (z9) {
            iu iuVar5 = iu.MEDIA;
            sk0 backupReq4 = iuVar5.getBackupReq();
            boolean zIsPossible4 = backupReq4.isPossible();
            String string8 = iuVar5.toString();
            String string9 = il0Var.getString(R.string.media);
            string9.getClass();
            String str10 = str5 != null ? str5 : "";
            if (zIsPossible4) {
                i2 = R.drawable.ic_media;
            }
            Integer numValueOf7 = Integer.valueOf(i2);
            Integer numValueOf8 = Integer.valueOf(R.color.red);
            if (zIsPossible4) {
                numValueOf8 = null;
            }
            boolean z11 = zIsPossible4 && iuVar5.isCheckedInExpansion(z);
            if (!zIsPossible4) {
                ii0Var = new ii0(backupReq4.conditionMsg(il0Var), null, 2);
            }
            list.add(new li0(string8, string9, str10, numValueOf7, numValueOf8, z11, ii0Var, 128));
        }
        return jj0Var;
    }

    public final ArrayList c(Activity activity, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, String str, boolean z7, boolean z8, boolean z9, String str2, boolean z10, String str3, boolean z11, String str4, boolean z12, String str5) {
        xi0 xi0Var;
        ArrayList arrayList = new ArrayList();
        if (z && z4 && z3) {
            xi0Var = this;
            arrayList.add(d(xi0Var, activity, z2, z7, z8, str, z9, str2, z10, str3, z11, str4, z12, str5, "system_app_parts", true, R.string.select_parts_system_apps, false));
            arrayList.add(d(xi0Var, activity, z2, z7, z8, str, z9, str2, z10, str3, z11, str4, z12, str5, "user_app_parts", false, R.string.select_parts_user_apps, true));
        } else {
            if (z4) {
                arrayList.add(d(this, activity, z2, z7, z8, str, z9, str2, z10, str3, z11, str4, z12, str5, "system_app_parts", true, R.string.select_parts_system_apps, true));
            }
            if (z3) {
                xi0Var = this;
                arrayList.add(d(xi0Var, activity, z2, z7, z8, str, z9, str2, z10, str3, z11, str4, z12, str5, "user_app_parts", false, R.string.select_parts_user_apps, true));
            } else {
                xi0Var = this;
            }
        }
        il0 il0Var = xi0Var.a;
        String string = il0Var.getString(R.string.select_backup_locations);
        string.getClass();
        jj0 jj0Var = new jj0("locations", string, false, (bt3) null, 28);
        if (!z5 && !z6) {
            l0.e("Both locations disabled!!?");
            return null;
        }
        ao ji0Var = ki0.c;
        List list = jj0Var.c;
        if (z5) {
            q05 q05Var = q05.DEVICE;
            String string2 = q05Var.toString();
            String string3 = il0Var.getString(R.string.device);
            string3.getClass();
            list.add(new li0(string2, string3, (String) null, Integer.valueOf(R.drawable.ic_device), (Integer) null, q05Var.isCheckedInExpansion(1), !z6 ? new ji0(null, 3) : ji0Var, 148));
        }
        if (z6) {
            V v = V.INSTANCE;
            boolean a = v.getA();
            q05 q05Var2 = q05.CLOUD;
            String string4 = q05Var2.toString();
            String string5 = il0Var.getString(R.string.cloud);
            string5.getClass();
            Integer numValueOf = Integer.valueOf(!a ? R.drawable.ic_flash_circle : R.drawable.ic_cloud);
            Integer numValueOf2 = Integer.valueOf(R.color.premium);
            if (a) {
                numValueOf2 = null;
            }
            boolean z13 = a && q05Var2.isCheckedInExpansion(1);
            if (!v.getA()) {
                ji0Var = new ii0(null, new ak(xi0Var, 6), 1);
            } else if (!z5) {
                ji0Var = new ji0(null, 3);
            }
            list.add(new li0(string4, string5, (String) null, numValueOf, numValueOf2, z13, ji0Var, 132));
        }
        arrayList.add(jj0Var);
        return arrayList;
    }

    public final void f(pj0 pj0Var, boolean z, cd cdVar, ri0 ri0Var) {
        if (System.currentTimeMillis() - this.b < 1000) {
            return;
        }
        this.b = System.currentTimeMillis();
        pi0 pi0Var = new pi0(this, pj0Var, z, cdVar, ri0Var);
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            pi0Var.invoke();
        } else {
            zn4 zn4Var = zn4.a;
            zn4.e(new gj(pi0Var, 10));
        }
    }
}
