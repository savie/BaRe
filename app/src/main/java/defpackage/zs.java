package defpackage;

import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.os.Process;
import android.util.Log;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.button.MaterialButton;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;
import org.swiftapps.swiftbackup.cloud.connect.GmsSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.NoGmsSignInActivity;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.home.storageswitch.StorageSwitchActivity;
import org.swiftapps.swiftbackup.messagescalls.conversationsview.ChatActivity;
import org.swiftapps.swiftbackup.slog.SLogActivity;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.swiftapps.swiftbackup.wifi.WifiActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class zs implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ zs(mj5 mj5Var, lj5 lj5Var) {
        this.a = 11;
        this.b = mj5Var;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i = this.a;
        int i2 = 1;
        String[] strArr = null;
        be8 be8Var = be8.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                dt dtVar = (dt) obj2;
                l10 l10Var = (l10) obj;
                l10Var.getClass();
                if (l10Var.b == td3.Selected) {
                    SharedPreferences sharedPreferences = cz4.f;
                    if (sharedPreferences == null) {
                        pe4.F("prefs");
                        throw null;
                    }
                    Set<String> set = sv2.a;
                    Set<String> stringSet = sharedPreferences.getStringSet("selected_labels_filter", set);
                    if (stringSet != null) {
                        set = stringSet;
                    }
                    ArrayList arrayList = new ArrayList();
                    for (String str : set) {
                        lr4 lr4Var = lr4.a;
                        LabelParams labelParamsC = lr4.c(str);
                        if (labelParamsC != null) {
                            arrayList.add(labelParamsC);
                        }
                    }
                    if (arrayList.isEmpty()) {
                        arrayList = null;
                    }
                    Set setZ1 = arrayList != null ? el1.z1(arrayList) : null;
                    if (setZ1 != null) {
                        ArrayList arrayList2 = new ArrayList();
                        Iterator it = setZ1.iterator();
                        while (it.hasNext()) {
                            String id = ((LabelParams) it.next()).getId();
                            if (id != null) {
                                arrayList2.add(id);
                            }
                        }
                        strArr = (String[]) arrayList2.toArray(new String[0]);
                    }
                    us2.E(dtVar, 101, strArr, false, 18);
                } else {
                    dtVar.e0();
                }
                return be8Var;
            case 1:
                AppsBatchActivity appsBatchActivity = (AppsBatchActivity) obj2;
                int iIntValue = ((Integer) obj).intValue() + 1;
                l20 l20Var = appsBatchActivity.m0;
                if (l20Var == null) {
                    pe4.F("mAdapter");
                    throw null;
                }
                List listP1 = el1.p1(l20Var.e.a, iIntValue);
                ArrayList arrayList3 = new ArrayList(hl1.G0(listP1, 10));
                Iterator it2 = listP1.iterator();
                while (it2.hasNext()) {
                    arrayList3.add(((ji) it2.next()).getItemId());
                }
                l20 l20Var2 = appsBatchActivity.m0;
                if (l20Var2 != null) {
                    l20Var2.t(el1.z1(arrayList3));
                    return be8Var;
                }
                pe4.F("mAdapter");
                throw null;
            case 2:
                ((dy7) obj2).a((String) obj);
                return be8Var;
            case 3:
                ChatActivity chatActivity = (ChatActivity) obj2;
                fm7 fm7Var = (fm7) obj;
                int i3 = ChatActivity.O;
                gv7 gv7Var = chatActivity.N;
                o51 o51Var = (o51) gv7Var.getValue();
                chatActivity.N();
                o51Var.getClass();
                o51 o51Var2 = (o51) gv7Var.getValue();
                fm7Var.getClass();
                chatActivity.N();
                o51Var2.w(fm7Var, false);
                sz8.d0((RecyclerView) chatActivity.M.getValue(), !fm7Var.a.isEmpty());
                return be8Var;
            case 4:
                sj1 sj1Var = (sj1) obj2;
                int iIntValue2 = ((Integer) obj).intValue();
                SharedPreferences.Editor editor = cz4.k;
                if (editor == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor.putInt("s3_chunk_size", iIntValue2).apply();
                sj1Var.w();
                return be8Var;
            case 5:
                ConfigSettings configSettings = (ConfigSettings) obj;
                int i4 = ConfigEditActivity.V;
                configSettings.getClass();
                ((ConfigEditActivity) obj2).V().k(configSettings, 1);
                return be8Var;
            case 6:
                CsActivity csActivity = (CsActivity) obj2;
                String str2 = (String) obj;
                int i5 = CsActivity.P0;
                if (csActivity.h0().r.q != (!(str2 == null || str2.length() == 0))) {
                    ConstraintLayout constraintLayout = csActivity.k0().a;
                    constraintLayout.getClass();
                    csActivity.x(constraintLayout, new Class[0]);
                }
                csActivity.h0().setErrorEnabled(!(str2 == null || str2.length() == 0));
                csActivity.h0().setErrorIconDrawable((Drawable) null);
                csActivity.h0().setError(str2);
                csActivity.w0();
                return be8Var;
            case 7:
                GmsSignInActivity gmsSignInActivity = (GmsSignInActivity) obj2;
                int i6 = GmsSignInActivity.N;
                Log.d(gmsSignInActivity.r(), "signIn() called");
                l73.v(z85.t(gmsSignInActivity), null, new ez3(gmsSignInActivity, null), 3);
                return be8Var;
            case 8:
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                Map map = HomeActivity.b0;
                wk0 wk0VarB = ((HomeActivity) obj2).Y().b(R.id.nav_schedule);
                yk0 yk0Var = wk0VarB.e;
                yk0Var.a.L = bool;
                yk0Var.b.L = bool;
                wk0VarB.setVisible(bool.booleanValue(), false);
                return be8Var;
            case XmlPullParser.COMMENT /* 9 */:
                dy1 dy1Var = (dy1) obj;
                dy1Var.getClass();
                Log.w(ph6.a(ih4.class).c(), "CorruptionException in " + ((ih4) obj2).a + " DataStore running in process " + Process.myPid(), dy1Var);
                return new ij5(true);
            case 10:
                ((Integer) obj).getClass();
                int i7 = LabelsActivity.Z;
                ((LabelsActivity) obj2).T();
                return be8Var;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                ((mj5) obj2).b(null);
                return be8Var;
            case 12:
                Intent intent = (Intent) obj;
                int i8 = NoGmsSignInActivity.M;
                intent.getClass();
                ((NoGmsSignInActivity) obj2).O(intent, 1003);
                return be8Var;
            case 13:
                ((Boolean) obj).getClass();
                int i9 = SLogActivity.R;
                ((SLogActivity) obj2).finish();
                return be8Var;
            case 14:
                String str3 = (String) obj;
                str3.getClass();
                zn4.c(new j47(((m37) obj2).p(), str3, i2));
                return be8Var;
            case 15:
                StorageSwitchActivity storageSwitchActivity = (StorageSwitchActivity) obj2;
                int i10 = StorageSwitchActivity.f0;
                if (!(storageSwitchActivity.Y().f.d() instanceof uo7)) {
                    yo7 yo7VarY = storageSwitchActivity.Y();
                    zn4 zn4Var = zn4.a;
                    zn4.b(null, new wo7(yo7VarY, null));
                }
                return be8Var;
            default:
                gu8 gu8Var = (gu8) obj;
                bs8 bs8Var = (bs8) ((WifiActivity) obj2).V.getValue();
                gu8Var.getClass();
                WifiActivity wifiActivity = bs8Var.a;
                LinearLayout linearLayout = bs8Var.h.a;
                ConstraintLayout constraintLayout2 = bs8Var.e;
                QuickRecyclerView quickRecyclerView = bs8Var.d;
                if (gu8Var.equals(du8.a)) {
                    bs8Var.a(null);
                    quickRecyclerView.setVisibility(0);
                    constraintLayout2.setVisibility(8);
                    linearLayout.setVisibility(8);
                    wifiActivity.a0(quickRecyclerView);
                } else if (gu8Var instanceof cu8) {
                    bs8Var.a(null);
                    quickRecyclerView.setVisibility(8);
                    constraintLayout2.setVisibility(8);
                    linearLayout.setVisibility(0);
                    bs8Var.i.setText(R.string.no_local_backups);
                } else {
                    if (!(gu8Var instanceof fu8)) {
                        g84.i(gu8Var, "Unhandled view WifiCardState: ");
                        return null;
                    }
                    List list = ((fu8) gu8Var).a;
                    bs8Var.a(Integer.valueOf(list.size()));
                    quickRecyclerView.setVisibility(0);
                    constraintLayout2.setVisibility(0);
                    linearLayout.setVisibility(8);
                    h71 h71Var = new h71(wifiActivity, WifiActivity.V(wifiActivity, list));
                    h71Var.g = new hi4(i2, bs8Var, gu8Var);
                    quickRecyclerView.setAdapter(h71Var);
                    MaterialButton materialButton = bs8Var.f;
                    materialButton.setText(R.string.delete_all);
                    materialButton.setOnClickListener(new dj(bs8Var, 15));
                    MaterialButton materialButton2 = bs8Var.g;
                    if (bs8Var.j.b.c()) {
                        materialButton2.setText(R.string.restore_all);
                        materialButton2.setOnClickListener(new qi(4, bs8Var, gu8Var));
                    } else {
                        materialButton2.setVisibility(8);
                    }
                }
                return be8Var;
        }
    }

    public /* synthetic */ zs(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }
}
