package defpackage;

import android.content.Intent;
import android.view.animation.PathInterpolator;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.textfield.TextInputEditText;
import com.jcraft.jsch.Argon2;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.SSLPeerUnverifiedException;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.cloud.connect.GmsSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.MegaSignInActivity;
import org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.home.schedule.ScheduleLabelsSelectActivity;
import org.swiftapps.swiftbackup.home.search.HomeSearchActivity;
import org.swiftapps.swiftbackup.intro.IntroActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;
import org.swiftapps.swiftbackup.settings.LicensesActivity;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.swiftapps.swiftbackup.settings.MultipleBackupsActivity;
import org.swiftapps.swiftbackup.settings.b;
import org.swiftapps.swiftbackup.slog.SLogActivity;
import org.swiftapps.swiftbackup.tasks.ui.TaskActivity;
import org.swiftapps.swiftbackup.wifi.PasswordInfo;
import org.swiftapps.swiftbackup.wifi.WifiActivity;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class kn3 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ kn3(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0295  */
    /* JADX WARN: Code duplicated, block: B:159:0x03c2  */
    @Override // defpackage.bt3
    public final Object invoke() throws XmlPullParserException, IOException {
        String[] stringArrayExtra;
        Set<LabelParams> labels;
        int i;
        nt4 nt4Var;
        MultipleBackupStrategy multipleBackupStrategy;
        PasswordInfo passwordInfo;
        String str;
        int i2 = this.a;
        ov2 ov2Var = ov2.a;
        be8 be8Var = be8.a;
        int i3 = 1;
        Object obj = this.b;
        switch (i2) {
            case 0:
                return new ao3(((mn3) ((ln3) obj).K).d);
            case 1:
                int i4 = FoldersDashActivity.U;
                zn4 zn4Var = zn4.a;
                zn4.c(new mo3((FoldersDashActivity) obj, i3));
                return be8Var;
            case 2:
                int i5 = GmsSignInActivity.N;
                return new u22((GmsSignInActivity) obj);
            case 3:
                return ((b14) ((a14) obj).p.getValue()).e;
            case 4:
                try {
                    return (List) ((bt3) obj).invoke();
                } catch (SSLPeerUnverifiedException unused) {
                    return ov2Var;
                }
            case 5:
                PathInterpolator pathInterpolator = HomeSearchActivity.X;
                ((HomeSearchActivity) obj).U();
                return be8Var;
            case 6:
                int i6 = IntroActivity.V;
                ai8.q((IntroActivity) obj, SLogActivity.class);
                return be8Var;
            case 7:
                LabelsActivity labelsActivity = (LabelsActivity) obj;
                int i7 = LabelsActivity.Z;
                int iO = labelsActivity.O();
                if (iO == 0) {
                    stringArrayExtra = null;
                } else if (iO == 1) {
                    ji jiVar = (ji) labelsActivity.N.getValue();
                    if (jiVar == null || (labels = jiVar.getLabels()) == null) {
                        stringArrayExtra = null;
                    } else {
                        ArrayList arrayList = new ArrayList();
                        Iterator<T> it = labels.iterator();
                        while (it.hasNext()) {
                            String id = ((LabelParams) it.next()).getId();
                            if (id != null) {
                                arrayList.add(id);
                            }
                        }
                        stringArrayExtra = (String[]) arrayList.toArray(new String[0]);
                    }
                } else {
                    if (iO != 2) {
                        throw new io5(fz5.j(labelsActivity.O(), "Can't get selected label ids for mode "));
                    }
                    stringArrayExtra = labelsActivity.getIntent().getStringArrayExtra("labels_extra_filtered_ids");
                }
                if (stringArrayExtra != null) {
                    return x50.A0(stringArrayExtra);
                }
                return null;
            case 8:
                LicensesActivity licensesActivity = (LicensesActivity) obj;
                int i8 = LicensesActivity.L;
                InputStream inputStreamOpenRawResource = licensesActivity.getResources().openRawResource(R.raw.third_party_licenses);
                try {
                    inputStreamOpenRawResource.getClass();
                    byte[] bArrE = cy0.E(inputStreamOpenRawResource);
                    inputStreamOpenRawResource.close();
                    InputStream inputStreamOpenRawResource2 = licensesActivity.getResources().openRawResource(R.raw.third_party_license_metadata);
                    inputStreamOpenRawResource2.getClass();
                    ArrayList arrayListQ = rs9.q(new BufferedReader(new InputStreamReader(inputStreamOpenRawResource2, f51.a), 8192));
                    Pattern patternCompile = Pattern.compile("^(\\d+):(\\d+)\\s+(.+)$");
                    patternCompile.getClass();
                    ArrayList arrayList2 = new ArrayList();
                    Iterator it2 = arrayListQ.iterator();
                    while (true) {
                        int i9 = 3;
                        if (!it2.hasNext()) {
                            HashSet hashSet = new HashSet();
                            ArrayList arrayList3 = new ArrayList();
                            for (Object obj2 : arrayList2) {
                                String lowerCase = ((nt4) obj2).a.toLowerCase(Locale.ROOT);
                                lowerCase.getClass();
                                if (hashSet.add(lowerCase)) {
                                    arrayList3.add(obj2);
                                }
                            }
                            return el1.n1(arrayList3, new jc1(i9));
                        }
                        String string = nq7.H0((String) it2.next()).toString();
                        if (string.length() == 0) {
                            nt4Var = null;
                        } else {
                            Matcher matcher = patternCompile.matcher(string);
                            matcher.getClass();
                            u75 u75Var = !matcher.matches() ? null : new u75(matcher, string);
                            if (u75Var == null) {
                                nt4Var = null;
                            } else {
                                int i10 = Integer.parseInt((String) ((s75) u75Var.a()).get(1));
                                int i11 = Integer.parseInt((String) ((s75) u75Var.a()).get(2));
                                String string2 = nq7.H0((String) ((s75) u75Var.a()).get(3)).toString();
                                if (string2.length() <= 0) {
                                    string2 = null;
                                }
                                if (string2 != null && i10 >= 0 && (i = i11 + i10) <= bArrE.length) {
                                    String string3 = nq7.H0(new String(x50.k0(bArrE, i10, i), f51.a)).toString();
                                    if (string3.length() <= 0) {
                                        string3 = null;
                                    }
                                    if (string3 == null) {
                                        nt4Var = null;
                                    } else {
                                        nt4Var = new nt4(string2, string3);
                                    }
                                } else {
                                    nt4Var = null;
                                }
                            }
                        }
                        if (nt4Var != null) {
                            arrayList2.add(nt4Var);
                        }
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        rs9.c(inputStreamOpenRawResource, th);
                        throw th2;
                    }
                }
                break;
            case XmlPullParser.COMMENT /* 9 */:
                vr6.i$default(vr6.INSTANCE, "LoginHelper", "Sign out initiated by user", null, 4, null);
                hz3.c((HomeActivity) obj, 3005);
                return be8Var;
            case 10:
                int i12 = MegaSignInActivity.S;
                return (TextInputEditText) ((MegaSignInActivity) obj).N().k.c;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                int i13 = MessagesBackupRestoreActivity.c0;
                return ((MessagesBackupRestoreActivity) obj).a0().d;
            case 12:
                int i14 = MultipleBackupsActivity.T;
                Intent intent = ((MultipleBackupsActivity) obj).getIntent();
                if (intent != null && (multipleBackupStrategy = (MultipleBackupStrategy) intent.getParcelableExtra("extra_mbs_strategy")) != null) {
                    return multipleBackupStrategy;
                }
                MultipleBackupStrategy.Companion.getClass();
                return b.a();
            case 13:
                qx5 qx5Var = (qx5) obj;
                return qx5Var.a.open(qx5Var.b);
            case 14:
                int i15 = SLogActivity.R;
                return ((th7) ((SLogActivity) obj).L.getValue()).b;
            case 15:
                int i16 = ScheduleLabelsSelectActivity.X;
                v37 v37VarO = ((ScheduleLabelsSelectActivity) obj).V();
                v37VarO.g = ov2Var;
                zn4.c(new as4(v37VarO, 13));
                return be8Var;
            case Argon2.V10 /* 16 */:
                zn7 zn7Var = (zn7) obj;
                return Integer.valueOf(zn7Var.c ? R.drawable.ic_storage_usb : zn7Var.b ? R.drawable.ic_storage_sd_card : R.drawable.ic_storage_device);
            case 17:
                int i17 = TaskActivity.c0;
                return ((TaskActivity) obj).N().b;
            case 18:
                et8 et8Var = WifiActivity.Y;
                w45 w45Var = new w45((WifiActivity) obj);
                w45Var.setCancelable(false);
                w45Var.r = 1;
                w45Var.n(null);
                return w45Var;
            default:
                gt8 gt8Var = (gt8) obj;
                q63 q63Var = gt8Var.b;
                q63Var.getClass();
                XmlPullParser xmlPullParserNewPullParser = XmlPullParserFactory.newInstance().newPullParser();
                InputStream inputStreamW = q63Var.w(true);
                try {
                    xmlPullParserNewPullParser.setInput(inputStreamW, null);
                    String name = null;
                    while (xmlPullParserNewPullParser.next() != 1) {
                        if (xmlPullParserNewPullParser.getEventType() == 2 && name == null) {
                            name = xmlPullParserNewPullParser.getName();
                        }
                    }
                    inputStreamW.close();
                    if (!pe4.d(name, "WifiConfigStoreData")) {
                        l0.e("Unexpected Wi-Fi config XML root");
                        return null;
                    }
                    q63 q63Var2 = gt8Var.b;
                    q63Var2.getClass();
                    ArrayList arrayList4 = new ArrayList();
                    BufferedReader bufferedReaderA = q63Var2.a();
                    try {
                        f77 f77VarP = rs9.p(bufferedReaderA);
                        ArrayList<String> arrayList5 = new ArrayList();
                        StringBuilder sb = new StringBuilder();
                        Iterator it3 = ((ws1) f77VarP).iterator();
                        while (true) {
                            boolean z = false;
                            do {
                                if (!it3.hasNext()) {
                                    bufferedReaderA.close();
                                    vr6.i$default(vr6.INSTANCE, "WifiPasswordParser", arrayList5.size() + " network items found", null, 4, null);
                                    for (String str2 : arrayList5) {
                                        PasswordInfo.Companion.getClass();
                                        str2.getClass();
                                        String strI = z85.i(str2, "WifiConfiguration", "SSID");
                                        if (strI != null) {
                                            String strT = uq7.T(strI, "&quot;", "");
                                            String strI2 = z85.i(str2, "WifiConfiguration", "PreSharedKey");
                                            String strT2 = strI2 != null ? uq7.T(strI2, "&quot;", "") : null;
                                            String strI3 = z85.i(str2, "WifiEnterpriseConfiguration", "EapMethod");
                                            String strI4 = z85.i(str2, "WifiEnterpriseConfiguration", "Phase2Method");
                                            String strI5 = z85.i(str2, "WifiEnterpriseConfiguration", "Identity");
                                            String strI6 = z85.i(str2, "WifiEnterpriseConfiguration", "AnonIdentity");
                                            String strI7 = z85.i(str2, "WifiEnterpriseConfiguration", "Password");
                                            String strI8 = z85.i(str2, "WifiEnterpriseConfiguration", "CaCert");
                                            String strA = sx5.a(strT);
                                            if (strA == null) {
                                                c6.f("Required value was null.");
                                                return null;
                                            }
                                            passwordInfo = new PasswordInfo(strA, sx5.a(strT2), strI3, strI4, strI5, strI6, strI7, strI8, str2);
                                        } else {
                                            passwordInfo = null;
                                        }
                                        if (passwordInfo != null && passwordInfo.isValid()) {
                                            arrayList4.add(passwordInfo);
                                        }
                                    }
                                    vr6.i$default(vr6.INSTANCE, "WifiPasswordParser", arrayList4.size() + " valid network items that require backup", null, 4, null);
                                    return arrayList4;
                                }
                                str = (String) it3.next();
                                if (nq7.Z(str, "<Network>", false)) {
                                    z = true;
                                }
                                if (z) {
                                    sb.append(str);
                                    sb.append("\n");
                                }
                            } while (!nq7.Z(str, "</Network>", false));
                            arrayList5.add(sb.toString());
                            sb.setLength(0);
                        }
                    } catch (Throwable th3) {
                        try {
                            throw th3;
                        } catch (Throwable th4) {
                            rs9.c(bufferedReaderA, th3);
                            throw th4;
                        }
                    }
                } catch (Throwable th5) {
                    try {
                        throw th5;
                    } catch (Throwable th6) {
                        rs9.c(inputStreamW, th5);
                        throw th6;
                    }
                }
                break;
        }
    }
}
