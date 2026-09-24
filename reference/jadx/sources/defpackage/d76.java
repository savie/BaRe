package defpackage;

import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.credentials.playservices.controllers.identitycredentials.createpasswordcredential.CreatePasswordCredentialController;
import androidx.fragment.app.u;
import androidx.preference.Preference;
import androidx.recyclerview.widget.RecyclerView;
import com.android.billingclient.api.Purchase;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashSet;
import org.json.JSONObject;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.appconfigs.data.Config;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigsData;
import org.swiftapps.swiftbackup.appconfigs.list.ConfigListActivity;
import org.swiftapps.swiftbackup.appconfigs.settings.ConfigSettingsActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelEditActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsData;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.contributor.ContributorRegActivity;
import org.swiftapps.swiftbackup.contributor.ContributorRegistration;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;
import org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity;
import org.swiftapps.swiftbackup.messagescalls.conversationsview.ChatActivity;
import org.swiftapps.swiftbackup.settings.MSwitchPreference;
import org.xmlpull.v1.XmlPullParser;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class d76 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ d76(LabelsData labelsData, String str) {
        this.a = 28;
        this.b = labelsData;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.Map, kotlin.jvm.internal.DefaultConstructorMarker] */
    /* JADX WARN: Type inference failed for: r3v20 */
    @Override // defpackage.bt3
    public final Object invoke() throws Throwable {
        int i = this.a;
        int i2 = 1;
        int i3 = 0;
        Long l = 0;
        Object obj = this.b;
        switch (i) {
            case 0:
                xr8 xr8Var = (xr8) ((xq4) obj).invoke();
                Unsafe unsafe = h44.a;
                HashSet hashSet = b44.a;
                hashSet.addAll(Arrays.asList("Landroid/net/wifi/IWifiManager", "Landroid/content/pm/ParceledListSlice", "Lcom/android/wifi/x/com/android/modules/utils/"));
                String[] strArr = new String[hashSet.size()];
                hashSet.toArray(strArr);
                if (!h44.b(strArr)) {
                    throw new ReflectiveOperationException("Unable to install hidden API exemptions");
                }
                Class<?> cls = Class.forName("android.net.wifi.IWifiManager$Stub");
                Class<?> cls2 = Class.forName("android.net.wifi.IWifiManager");
                Method method = cls.getMethod("asInterface", IBinder.class);
                IBinder iBinderA = qv7.a("wifi");
                if (iBinderA == null) {
                    throw new RemoteException("Wi-Fi service unavailable");
                }
                method.getClass();
                try {
                    Object objInvoke = method.invoke(null, Arrays.copyOf(new Object[]{new me7(iBinderA)}, 1));
                    if (objInvoke != null) {
                        return new e76(objInvoke, cls2, xr8Var);
                    }
                    throw new RemoteException("Wi-Fi service interface unavailable");
                } catch (InvocationTargetException e) {
                    Throwable cause = e;
                    while (cause instanceof InvocationTargetException) {
                        InvocationTargetException invocationTargetException = (InvocationTargetException) cause;
                        if (invocationTargetException.getCause() == null) {
                            throw cause;
                        }
                        cause = invocationTargetException.getCause();
                        cause.getClass();
                    }
                    throw cause;
                }
            case 1:
                hk hkVar = (hk) obj;
                return hkVar.e().J(hkVar.b + ".extdat");
            case 2:
                return (o6) ((gl) obj).e.getValue();
            case 3:
                am amVar = (am) obj;
                qx sizeInfo = amVar.b.getSizeInfo();
                return Long.valueOf(io4.h(sizeInfo != null ? Long.valueOf(sizeInfo.getExtDataSize(amVar.c)) : 0));
            case 4:
                return Boolean.valueOf(qx.hasMedia_delegate$lambda$0((qx) obj));
            case 5:
                return ((km) ((t10) obj).K).b;
            case 6:
                int i4 = AppsBatchActivity.s0;
                return ((AppsBatchActivity) obj).k0().d;
            case 7:
                return ((s20) ((j30) obj).K).b;
            case 8:
                return ((qk0) obj).h.getLocalBackups();
            case XmlPullParser.COMMENT /* 9 */:
                Purchase purchase = (Purchase) obj;
                wq0 wq0Var = wq0.a;
                String strY0 = el1.Y0(purchase.a(), null, null, null, null, 63);
                JSONObject jSONObject = purchase.c;
                String strOptString = jSONObject.optString("orderId");
                String str = TextUtils.isEmpty(strOptString) ? null : strOptString;
                int i5 = jSONObject.optInt("purchaseState", 1) != 4 ? 1 : 2;
                StringBuilder sbP = u48.p("New purchase: sku=", strY0, ", orderId=", str, ", state=");
                sbP.append(i5);
                String string = sbP.toString();
                vr6.i$default(vr6.INSTANCE, "BillingManager", string, null, 4, null);
                wb6 wb6VarFrom = wb6.Companion.from(purchase);
                wb6.b purchaseStateEnum = wb6VarFrom.getPurchaseStateEnum();
                if (purchaseStateEnum == wb6.b.PURCHASED) {
                    wq0.c.k(pq0.a);
                    if (!jSONObject.optBoolean("acknowledged", true)) {
                        String strOptString2 = jSONObject.optString("token", jSONObject.optString("purchaseToken"));
                        strOptString2.getClass();
                    }
                }
                wq0.g(wb6VarFrom, new hq0(i3, purchaseStateEnum, string));
                return be8.a;
            case 10:
                int i6 = ChatActivity.O;
                View viewInflate = ((ChatActivity) obj).getLayoutInflater().inflate(R.layout.chat_activity, (ViewGroup) null, false);
                int i7 = R.id.appbar_layout;
                View viewU = ms8.u(viewInflate, R.id.appbar_layout);
                if (viewU != null) {
                    w00 w00VarB = w00.b(viewU);
                    CoordinatorLayout coordinatorLayout = (CoordinatorLayout) viewInflate;
                    RecyclerView recyclerView = (RecyclerView) ms8.u(viewInflate, R.id.recycler_view);
                    if (recyclerView != null) {
                        return new k51(coordinatorLayout, w00VarB, recyclerView);
                    }
                    i7 = R.id.recycler_view;
                }
                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i7)));
                return null;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                int i8 = CloudDiagnosticsActivity.Z;
                return new f75((CloudDiagnosticsActivity) obj, 62);
            case 12:
                Preference preferenceJ = ((sj1) obj).j("parallel_cloud_transfers");
                preferenceJ.getClass();
                return (MSwitchPreference) preferenceJ;
            case 13:
                return io1.g((io1) obj);
            case 14:
                int i9 = ConfigListActivity.R;
                return ((ConfigListActivity) obj).O().e;
            case 15:
                Config config = (Config) obj;
                be8 be8Var = be8.a;
                if (V.INSTANCE.getA()) {
                    if (!sq1.a(config, false)) {
                        c6.l(config, "ConfigRepo.saveConfig: Invalid params: ");
                        return null;
                    }
                    Config configCopy$default = Config.copy$default(config, 0, null, null, null, Long.valueOf(System.currentTimeMillis()), 15, null);
                    ConfigsData configsData = br1.e;
                    if (configsData == null) {
                        configsData = new ConfigsData(l, i2, l);
                    }
                    configsData.put(configCopy$default);
                    br1 br1Var = br1.a;
                    zn4.c(new ah(configsData, 17));
                }
                return be8Var;
            case Argon2.V10 /* 16 */:
                ConfigSettingsActivity configSettingsActivity = (ConfigSettingsActivity) obj;
                int i10 = ConfigSettingsActivity.V;
                return new tq1(((fr1) configSettingsActivity.Q.getValue()).c, configSettingsActivity.v());
            case 17:
                int i11 = ContributorRegActivity.S;
                return ((ContributorRegActivity) obj).N().n;
            case 18:
                return ContributorRegistration.getLocales$lambda$1$0((String) obj);
            case Argon2.V13 /* 19 */:
                return CreatePasswordCredentialController.invokePlayServices$lambda$0$0((CreatePasswordCredentialController) obj);
            case 20:
                DetailActivity detailActivity = (DetailActivity) obj;
                int i12 = DetailActivity.b0;
                return new gj2(detailActivity, detailActivity.X().e, detailActivity.a0());
            case 21:
                String str2 = ((kj3) obj).a;
                str2.getClass();
                d45.b.getClass();
                MFirebaseUser mFirebaseUserA = d45.a();
                if (mFirebaseUserA == null) {
                    throw dj7.f(0, "System.exit returned normally, while it was supposed to halt JVM.");
                }
                char[] charArray = sz8.E(nq7.u0(mFirebaseUserA.getUid()).toString().concat(nq7.u0(str2).toString())).toCharArray();
                charArray.getClass();
                return charArray;
            case 22:
                return (FolderMetadata) sf1.g.d(((FolderItem) obj).getId());
            case 23:
                return new ok3((qk3) obj);
            case 24:
                FolderDetailActivity folderDetailActivity = (FolderDetailActivity) obj;
                int i13 = FolderDetailActivity.Z;
                return new ml3(folderDetailActivity, folderDetailActivity.W().d, folderDetailActivity.U());
            case 25:
                kp3 kp3Var = (kp3) obj;
                u uVarRequireActivity = kp3Var.requireActivity();
                yl8 viewModelStore = uVarRequireActivity.getViewModelStore();
                wl8 defaultViewModelProviderFactory = uVarRequireActivity.getDefaultViewModelProviderFactory();
                ej5 defaultViewModelCreationExtras = uVarRequireActivity.getDefaultViewModelCreationExtras();
                defaultViewModelProviderFactory.getClass();
                lj3 lj3Var = new lj3(viewModelStore, defaultViewModelProviderFactory, defaultViewModelCreationExtras);
                to3 to3Var = kp3Var.d;
                if (to3Var == null) {
                    pe4.F("section");
                    throw null;
                }
                String strName = to3Var.name();
                strName.getClass();
                return (np3) lj3Var.b(ph6.a(np3.class), strName);
            case 26:
                return ((b14) ((a14) obj).p.getValue()).c;
            case 27:
                int i14 = LabelEditActivity.U;
                return ((LabelEditActivity) obj).N().n;
            case 28:
                LabelsData labelsData = (LabelsData) obj;
                synchronized (lr4.a) {
                    try {
                        if (labelsData != null) {
                            gv7 gv7Var = lr4.g;
                            q63 q63VarT = ((q63) gv7Var.getValue()).t();
                            q63VarT.getClass();
                            if (!q63VarT.j()) {
                                q63.E(q63VarT);
                            }
                            gv7 gv7Var2 = w14.a;
                            w14.g(labelsData, (q63) gv7Var.getValue(), false);
                        } else {
                            ((q63) lr4.g.getValue()).h();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return be8.a;
            default:
                int i15 = LabelsActivity.Z;
                return ((LabelsActivity) obj).Q().d;
        }
    }

    public /* synthetic */ d76(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }
}
