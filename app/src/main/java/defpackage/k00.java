package defpackage;

import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiEnterpriseConfig;
import android.text.Editable;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity;
import org.swiftapps.swiftbackup.intro.d;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.swiftapps.swiftbackup.settings.appvisibility.AppVisibilityDiagnosticsActivity;
import org.swiftapps.swiftbackup.settings.k;
import org.swiftapps.swiftbackup.wifi.PasswordInfo;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class k00 extends cu3 implements mt3 {
    public final /* synthetic */ int a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ k00(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(i, obj, cls, str, str2, i2);
        this.a = i3;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002a  */
    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        List list;
        PasswordInfo passwordInfo;
        String identity;
        String anonymousIdentity;
        String password;
        int i = this.a;
        boolean z = true;
        int i2 = 0;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                n00 n00Var = (n00) obj;
                n00Var.getClass();
                AppVisibilityDiagnosticsActivity appVisibilityDiagnosticsActivity = (AppVisibilityDiagnosticsActivity) this.receiver;
                int i3 = AppVisibilityDiagnosticsActivity.O;
                Editable text = appVisibilityDiagnosticsActivity.N().f.getText();
                String string = text != null ? text.toString() : null;
                String str = n00Var.b;
                v00 v00Var = n00Var.a;
                if (!pe4.d(string, str)) {
                    appVisibilityDiagnosticsActivity.N().f.setText(str);
                    appVisibilityDiagnosticsActivity.N().f.setSelection(str.length());
                }
                if (n00Var.c) {
                    appVisibilityDiagnosticsActivity.N().k.setVisibility(0);
                    appVisibilityDiagnosticsActivity.N().t.setText(R.string.app_visibility_querying);
                    appVisibilityDiagnosticsActivity.N().q.setVisibility(8);
                    appVisibilityDiagnosticsActivity.N().n.setVisibility(8);
                    appVisibilityDiagnosticsActivity.N().r.setVisibility(8);
                    appVisibilityDiagnosticsActivity.P(false, true);
                } else if (v00Var != null) {
                    int i4 = v00Var.a;
                    appVisibilityDiagnosticsActivity.N().q.setVisibility(0);
                    appVisibilityDiagnosticsActivity.N().x.setText(appVisibilityDiagnosticsActivity.getString(R.string.app_visibility_raw_package_count, Integer.valueOf(i4)));
                    appVisibilityDiagnosticsActivity.N().k.setVisibility(8);
                    appVisibilityDiagnosticsActivity.P(true, false);
                    List list2 = v00Var.c;
                    String string2 = nq7.H0(str).toString();
                    if (string2 == null) {
                        string2 = "";
                    }
                    if (string2.length() == 0) {
                        list = list2;
                    } else {
                        ArrayList arrayList = new ArrayList();
                        for (Object obj2 : list2) {
                            r00 r00Var = (r00) obj2;
                            if (nq7.Z(r00Var.a, string2, true) || nq7.Z(r00Var.b, string2, true)) {
                                arrayList.add(obj2);
                            }
                        }
                        list = arrayList;
                    }
                    ((t00) appVisibilityDiagnosticsActivity.M.getValue()).w(new fm7(list, (Set) null, false, (String) null, 30), false);
                    appVisibilityDiagnosticsActivity.N().t.setText(appVisibilityDiagnosticsActivity.getResources().getQuantityString(R.plurals.app_visibility_showing_count, i4, Integer.valueOf(list.size()), Integer.valueOf(i4)));
                    sz8.d0(appVisibilityDiagnosticsActivity.N().n, true ^ list.isEmpty());
                    TextView textView = appVisibilityDiagnosticsActivity.N().r;
                    textView.setText(i4 == 0 ? R.string.app_visibility_no_packages : R.string.app_visibility_no_search_matches);
                    sz8.d0(textView, list.isEmpty());
                    Integer num = appVisibilityDiagnosticsActivity.N;
                    if (num != null) {
                        int iIntValue = num.intValue();
                        appVisibilityDiagnosticsActivity.N = null;
                        appVisibilityDiagnosticsActivity.N().p.post(new j00(appVisibilityDiagnosticsActivity, iIntValue, i2));
                    }
                } else {
                    String str2 = n00Var.d;
                    if (str2 != null) {
                        appVisibilityDiagnosticsActivity.N().k.setVisibility(8);
                        appVisibilityDiagnosticsActivity.N().q.setVisibility(8);
                        appVisibilityDiagnosticsActivity.N().n.setVisibility(8);
                        appVisibilityDiagnosticsActivity.N().r.setVisibility(8);
                        appVisibilityDiagnosticsActivity.N().t.setText(appVisibilityDiagnosticsActivity.getString(R.string.app_visibility_query_failed, str2));
                        appVisibilityDiagnosticsActivity.P(false, false);
                        Integer num2 = appVisibilityDiagnosticsActivity.N;
                        if (num2 != null) {
                            int iIntValue2 = num2.intValue();
                            appVisibilityDiagnosticsActivity.N = null;
                            appVisibilityDiagnosticsActivity.N().p.post(new j00(appVisibilityDiagnosticsActivity, iIntValue2, i2));
                        }
                    }
                }
                return be8Var;
            case 1:
                FolderItem folderItem = (FolderItem) obj;
                folderItem.getClass();
                FolderDetailActivity folderDetailActivity = (FolderDetailActivity) this.receiver;
                folderDetailActivity.V = folderItem;
                nc8 supportActionBar = folderDetailActivity.getSupportActionBar();
                if (supportActionBar != null) {
                    supportActionBar.f0(folderItem.getDisplayName());
                }
                nc8 supportActionBar2 = folderDetailActivity.getSupportActionBar();
                if (supportActionBar2 != null) {
                    supportActionBar2.d0(folderDetailActivity.getString(R.string.backup_and_restore));
                }
                return be8Var;
            case 2:
                mf4 mf4Var = (mf4) obj;
                mf4Var.getClass();
                d dVar = (d) this.receiver;
                dVar.getClass();
                if (mf4Var != mf4.IDLE) {
                    dVar.h(R.string.processing);
                } else if (!d.j()) {
                    dVar.f();
                }
                return be8Var;
            case 3:
                MultipleBackupStrategy multipleBackupStrategy = (MultipleBackupStrategy) obj;
                multipleBackupStrategy.getClass();
                ((k) this.receiver).j(multipleBackupStrategy);
                return be8Var;
            case 4:
                ux5 ux5Var = (ux5) obj;
                ux5Var.getClass();
                ((by5) this.receiver).j(ux5Var);
                return be8Var;
            default:
                WifiConfiguration wifiConfiguration = (WifiConfiguration) obj;
                wifiConfiguration.getClass();
                ((ls8) this.receiver).getClass();
                String str3 = wifiConfiguration.SSID;
                if (str3 == null) {
                    str3 = "Unknown";
                } else {
                    if (str3.length() == 0) {
                        str3 = null;
                    }
                    if (str3 == null) {
                        str3 = "Unknown";
                    }
                }
                String str4 = str3;
                String[] strArr = wifiConfiguration.wepKeys;
                String str5 = strArr != null ? (String) x50.q0(wifiConfiguration.wepTxKeyIndex, strArr) : null;
                String strA = ls8.a(wifiConfiguration.preSharedKey);
                if (strA == null) {
                    strA = ls8.a(str5);
                }
                String str6 = strA;
                WifiEnterpriseConfig wifiEnterpriseConfig = wifiConfiguration.enterpriseConfig;
                if (!wifiConfiguration.allowedKeyManagement.get(2) && !wifiConfiguration.allowedKeyManagement.get(3) && !wifiConfiguration.allowedKeyManagement.get(10)) {
                    wifiEnterpriseConfig.getClass();
                    if (wifiEnterpriseConfig.getEapMethod() < 0 && wifiEnterpriseConfig.getPhase2Method() <= 0 && (((identity = wifiEnterpriseConfig.getIdentity()) == null || identity.length() == 0) && (((anonymousIdentity = wifiEnterpriseConfig.getAnonymousIdentity()) == null || anonymousIdentity.length() == 0) && ((password = wifiEnterpriseConfig.getPassword()) == null || password.length() == 0)))) {
                        z = false;
                    }
                }
                if (str6 != null || z) {
                    int eapMethod = wifiEnterpriseConfig.getEapMethod();
                    Integer numValueOf = Integer.valueOf(eapMethod);
                    if (!z || eapMethod < 0) {
                        numValueOf = null;
                    }
                    String strValueOf = numValueOf != null ? String.valueOf(numValueOf.intValue()) : null;
                    int phase2Method = wifiEnterpriseConfig.getPhase2Method();
                    Integer numValueOf2 = Integer.valueOf(phase2Method);
                    if (!z || phase2Method < 0) {
                        numValueOf2 = null;
                    }
                    String strValueOf2 = numValueOf2 != null ? String.valueOf(numValueOf2.intValue()) : null;
                    String identity2 = wifiEnterpriseConfig.getIdentity();
                    String str7 = (identity2 == null || identity2.length() == 0) ? null : identity2;
                    String anonymousIdentity2 = wifiEnterpriseConfig.getAnonymousIdentity();
                    passwordInfo = new PasswordInfo(str4, str6, strValueOf, strValueOf2, str7, (anonymousIdentity2 == null || anonymousIdentity2.length() == 0) ? null : anonymousIdentity2, ls8.a(wifiEnterpriseConfig.getPassword()), null, null, 384, null);
                } else {
                    passwordInfo = null;
                }
                Boolean boolValueOf = Boolean.valueOf(wifiConfiguration.hiddenSSID);
                BitSet bitSet = wifiConfiguration.allowedKeyManagement;
                bitSet.getClass();
                Object objClone = bitSet.clone();
                objClone.getClass();
                BitSet bitSet2 = (BitSet) objClone;
                BitSet bitSet3 = wifiConfiguration.allowedProtocols;
                bitSet3.getClass();
                Object objClone2 = bitSet3.clone();
                objClone2.getClass();
                BitSet bitSet4 = (BitSet) objClone2;
                BitSet bitSet5 = wifiConfiguration.allowedPairwiseCiphers;
                bitSet5.getClass();
                Object objClone3 = bitSet5.clone();
                objClone3.getClass();
                BitSet bitSet6 = (BitSet) objClone3;
                BitSet bitSet7 = wifiConfiguration.allowedGroupCiphers;
                bitSet7.getClass();
                Object objClone4 = bitSet7.clone();
                objClone4.getClass();
                return new et8(str4, str6, boolValueOf, bitSet2, bitSet4, bitSet6, (BitSet) objClone4, passwordInfo);
        }
    }
}
