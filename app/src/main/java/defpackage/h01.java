package defpackage;

import android.content.Intent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity;
import org.swiftapps.swiftbackup.appconfigs.settings.ConfigSettingsActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.CallsBackupRestoreActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h01 implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ h01(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0085 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x0087 A[LOOP:0: B:19:0x0057->B:30:0x0087, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:46:0x00bf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:47:0x00c1 A[LOOP:2: B:36:0x0092->B:47:0x00c1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:88:0x007b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:0x002d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:8:0x002d  */
    /* JADX WARN: Code duplicated, block: B:94:0x00b5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:95:0x002d A[SYNTHETIC] */
    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        ArrayList arrayList;
        Object next;
        String str;
        pw5 pw5Var;
        String str2;
        Object next2;
        String str3;
        String str4;
        int i = this.a;
        int i2 = 0;
        be8 be8Var = be8.a;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                CallsBackupRestoreActivity callsBackupRestoreActivity = (CallsBackupRestoreActivity) obj3;
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                ((Boolean) obj2).getClass();
                m01 m01Var = callsBackupRestoreActivity.T;
                if (m01Var == null) {
                    pe4.F("mAdapter");
                    throw null;
                }
                m01Var.y();
                callsBackupRestoreActivity.b0(zBooleanValue);
                return be8Var;
            case 1:
                ConfigEditActivity configEditActivity = (ConfigEditActivity) obj3;
                ConfigSettings configSettings = (ConfigSettings) obj;
                ((Integer) obj2).getClass();
                int i3 = ConfigEditActivity.V;
                configSettings.getClass();
                List<ConfigSettings> validSettings = configEditActivity.V().j().getValidSettings();
                if (validSettings != null) {
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj4 : validSettings) {
                        if (!pe4.d(((ConfigSettings) obj4).getId(), configSettings.getId())) {
                            arrayList2.add(obj4);
                        }
                    }
                    arrayList = new ArrayList();
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        ConfigSettings.ApplyData applyData = ((ConfigSettings) it.next()).getApplyData();
                        if (applyData != null) {
                            arrayList.add(applyData);
                        }
                    }
                } else {
                    arrayList = null;
                }
                mp6 mp6Var = mp6.a;
                if (!mp6.f()) {
                    Const.N(configEditActivity);
                } else if (V.INSTANCE.getA()) {
                    Intent intentPutParcelableArrayListExtra = new Intent(configEditActivity, (Class<?>) ConfigSettingsActivity.class).putExtra("extra_config_settings", configSettings).putParcelableArrayListExtra("extra_other_apply_data", arrayList != null ? new ArrayList<>(arrayList) : null);
                    intentPutParcelableArrayListExtra.getClass();
                    configEditActivity.startActivityForResult(intentPutParcelableArrayListExtra, 24);
                } else {
                    zn4 zn4Var = zn4.a;
                    zn4.e(new b56(configEditActivity, i2));
                }
                return be8Var;
            case 2:
                LabelParams labelParams = (LabelParams) obj;
                ((Integer) obj2).getClass();
                int i4 = LabelsActivity.Z;
                labelParams.getClass();
                zr4 zr4VarR = ((LabelsActivity) obj3).V();
                String id = labelParams.getId();
                if (id != null) {
                    zr4VarR.h = sz8.K(zr4VarR.h, id);
                }
                zr4VarR.k(lr4.e);
                return be8Var;
            default:
                List list = (List) obj3;
                CharSequence charSequence = (CharSequence) obj;
                int iIntValue = ((Integer) obj2).intValue();
                charSequence.getClass();
                if (list.size() == 1) {
                    String str5 = (String) el1.k1(list);
                    int iH0 = nq7.h0(charSequence, str5, iIntValue, false, 4);
                    if (iH0 < 0) {
                        pw5Var = null;
                    } else {
                        pw5Var = new pw5(Integer.valueOf(iH0), str5);
                    }
                } else {
                    if (iIntValue < 0) {
                        iIntValue = 0;
                    }
                    nd4 nd4Var = new nd4(iIntValue, charSequence.length(), 1);
                    boolean z = charSequence instanceof String;
                    int i5 = nd4Var.c;
                    int i6 = nd4Var.b;
                    if (z) {
                        if ((i5 <= 0 || iIntValue > i6) && (i5 >= 0 || i6 > iIntValue)) {
                            pw5Var = null;
                        } else {
                            while (true) {
                                Iterator it2 = list.iterator();
                                do {
                                    if (it2.hasNext()) {
                                        next2 = it2.next();
                                        str4 = (String) next2;
                                    } else {
                                        next2 = null;
                                    }
                                    str3 = (String) next2;
                                    if (str3 != null) {
                                        pw5Var = new pw5(Integer.valueOf(iIntValue), str3);
                                    } else if (iIntValue != i6) {
                                        iIntValue += i5;
                                    } else {
                                        pw5Var = null;
                                    }
                                } while (!str4.regionMatches(0, (String) charSequence, iIntValue, str4.length()));
                                str3 = (String) next2;
                                if (str3 != null) {
                                    pw5Var = new pw5(Integer.valueOf(iIntValue), str3);
                                } else if (iIntValue != i6) {
                                    iIntValue += i5;
                                } else {
                                    pw5Var = null;
                                }
                            }
                        }
                    } else if ((i5 <= 0 || iIntValue > i6) && (i5 >= 0 || i6 > iIntValue)) {
                        pw5Var = null;
                    } else {
                        int i7 = iIntValue;
                        while (true) {
                            Iterator it3 = list.iterator();
                            do {
                                if (it3.hasNext()) {
                                    next = it3.next();
                                    str2 = (String) next;
                                } else {
                                    next = null;
                                }
                                str = (String) next;
                                if (str != null) {
                                    pw5Var = new pw5(Integer.valueOf(i7), str);
                                } else if (i7 != i6) {
                                    i7 += i5;
                                } else {
                                    pw5Var = null;
                                }
                            } while (!nq7.p0(str2, 0, charSequence, i7, str2.length(), false));
                            str = (String) next;
                            if (str != null) {
                                pw5Var = new pw5(Integer.valueOf(i7), str);
                            } else if (i7 != i6) {
                                i7 += i5;
                            } else {
                                pw5Var = null;
                            }
                        }
                    }
                }
                if (pw5Var != null) {
                    return new pw5(pw5Var.a, Integer.valueOf(((String) pw5Var.b).length()));
                }
                return null;
        }
    }
}
