package defpackage;

import android.accounts.Account;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.textfield.TextInputLayout;
import com.jcraft.jsch.Argon2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.appslist.ui.listconfig.AppsConfigRunActivity;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;
import org.swiftapps.swiftbackup.cloud.connect.GmsSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.MegaSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.NoGmsSignInActivity;
import org.swiftapps.swiftbackup.cloud.protocols.terabox.TeraBoxTokenCredentials;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.intro.IntroActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.e;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.f;
import org.swiftapps.swiftbackup.messagescalls.dash.CallsDashActivity;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class lm implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ lm(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        Boolean boolValueOf;
        Account account;
        Intent intentA;
        int i = this.a;
        Object pmVar = null;
        int i2 = 2;
        int i3 = 1;
        int i4 = 0;
        be8 be8Var = be8.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                String str = (String) obj2;
                fw6 fw6Var = (fw6) obj;
                fw6Var.getClass();
                nw6 nw6VarP0 = fw6Var.p0("SELECT * FROM app_cached_data WHERE pkgName=? ");
                boolean z = true;
                try {
                    nw6VarP0.C(1, str);
                    int iU = bb9.u(nw6VarP0, "pkgName");
                    int iU2 = bb9.u(nw6VarP0, "name");
                    int iU3 = bb9.u(nw6VarP0, "isInstalled");
                    int iU4 = bb9.u(nw6VarP0, "isEnabled");
                    int iU5 = bb9.u(nw6VarP0, "isLaunchable");
                    int iU6 = bb9.u(nw6VarP0, "locale");
                    if (nw6VarP0.i0()) {
                        String strR = nw6VarP0.R(iU);
                        String strR2 = nw6VarP0.R(iU2);
                        Integer numValueOf = nw6VarP0.isNull(iU3) ? null : Integer.valueOf((int) nw6VarP0.getLong(iU3));
                        Boolean boolValueOf2 = numValueOf != null ? Boolean.valueOf(numValueOf.intValue() != 0) : null;
                        Integer numValueOf2 = nw6VarP0.isNull(iU4) ? null : Integer.valueOf((int) nw6VarP0.getLong(iU4));
                        Boolean boolValueOf3 = numValueOf2 != null ? Boolean.valueOf(numValueOf2.intValue() != 0) : null;
                        Integer numValueOf3 = nw6VarP0.isNull(iU5) ? null : Integer.valueOf((int) nw6VarP0.getLong(iU5));
                        if (numValueOf3 != null) {
                            if (numValueOf3.intValue() == 0) {
                                z = false;
                            }
                            boolValueOf = Boolean.valueOf(z);
                        } else {
                            boolValueOf = null;
                        }
                        pmVar = new pm(strR, strR2, boolValueOf2, boolValueOf3, boolValueOf, nw6VarP0.isNull(iU6) ? null : nw6VarP0.R(iU6));
                    }
                    return pmVar;
                } finally {
                    nw6VarP0.close();
                }
            case 1:
                l10 l10Var = (l10) obj;
                l10Var.getClass();
                l10Var.b.reset();
                ((dt) obj2).c0();
                return be8Var;
            case 2:
                ((nz) obj2).invoke(Long.valueOf(io4.h((Long) obj)));
                return be8Var;
            case 3:
                AppsBatchActivity appsBatchActivity = (AppsBatchActivity) obj2;
                int iIntValue = ((Integer) obj).intValue();
                l20 l20Var = appsBatchActivity.m0;
                if (l20Var == null) {
                    pe4.F("mAdapter");
                    throw null;
                }
                int iB = l20Var.b() - iIntValue;
                l20 l20Var2 = appsBatchActivity.m0;
                if (l20Var2 == null) {
                    pe4.F("mAdapter");
                    throw null;
                }
                List listQ1 = el1.q1(iB, l20Var2.e.a);
                ArrayList arrayList = new ArrayList(hl1.G0(listQ1, 10));
                Iterator it = listQ1.iterator();
                while (it.hasNext()) {
                    arrayList.add(((ji) it.next()).getItemId());
                }
                l20 l20Var3 = appsBatchActivity.m0;
                if (l20Var3 != null) {
                    l20Var3.t(el1.z1(arrayList));
                    return be8Var;
                }
                pe4.F("mAdapter");
                throw null;
            case 4:
                AppsConfigRunActivity appsConfigRunActivity = (AppsConfigRunActivity) obj2;
                gv7 gv7Var = appsConfigRunActivity.i0;
                ym7 ym7Var = (ym7) obj;
                int i5 = AppsConfigRunActivity.m0;
                if (ym7Var != null) {
                    Log.d(appsConfigRunActivity.r(), "onViewStatusUI: " + ym7Var);
                    appsConfigRunActivity.k0();
                    int i6 = x20.a[ym7Var.ordinal()];
                    if (i6 == 1) {
                        appsConfigRunActivity.h0().f.setVisibility(0);
                        sz8.W(appsConfigRunActivity.g0());
                        sz8.W((ExtendedFloatingActionButton) gv7Var.getValue());
                        appsConfigRunActivity.h0().d.a.setVisibility(8);
                    } else if (i6 == 2) {
                        appsConfigRunActivity.h0().f.setVisibility(8);
                        sz8.c0(appsConfigRunActivity.g0());
                        sz8.c0((ExtendedFloatingActionButton) gv7Var.getValue());
                        appsConfigRunActivity.h0().d.a.setVisibility(8);
                    } else {
                        if (i6 != 3 && i6 != 4) {
                            g84.i(ym7Var, "Unhandled onViewStatusUI: ");
                            return null;
                        }
                        appsConfigRunActivity.h0().f.setVisibility(8);
                        sz8.W(appsConfigRunActivity.g0());
                        sz8.W((ExtendedFloatingActionButton) gv7Var.getValue());
                        appsConfigRunActivity.h0().d.a.setVisibility(0);
                    }
                }
                return be8Var;
            case 5:
                y30 y30Var = (y30) obj2;
                List list = (List) obj;
                if (list != null) {
                    jk8 jk8Var = y30Var.b;
                    jk8Var.getClass();
                    nd6.j(y30Var, list, ((z30) jk8Var).c, R.string.quick_backup_apps, R.drawable.ic_app, false, null, 80);
                }
                return be8Var;
            case 6:
                CallsDashActivity callsDashActivity = (CallsDashActivity) obj2;
                q11 q11Var = (q11) obj;
                int i7 = CallsDashActivity.T;
                q11Var.getClass();
                m86 m86Var = callsDashActivity.Y().f;
                TextView textView = (TextView) m86Var.k;
                QuickRecyclerView quickRecyclerView = (QuickRecyclerView) m86Var.e;
                quickRecyclerView.setLinearLayoutManager(1);
                zx2 zx2Var = (zx2) m86Var.c;
                LinearLayout linearLayout = zx2Var.a;
                ImageView imageView = zx2Var.d;
                TextView textView2 = zx2Var.e;
                zx2Var.b.setVisibility(8);
                RelativeLayout relativeLayout = (RelativeLayout) m86Var.f;
                ImageView imageView2 = (ImageView) m86Var.d;
                TextView textView3 = (TextView) m86Var.n;
                if (q11Var.equals(p11.a)) {
                    CallsDashActivity.b0(callsDashActivity, textView, null);
                    for (View view : (View[]) Arrays.copyOf(new View[]{quickRecyclerView, relativeLayout}, 2)) {
                        view.setVisibility(8);
                    }
                    linearLayout.setVisibility(0);
                    imageView.setImageResource(R.drawable.ic_no_backup);
                    textView2.setText(R.string.no_local_backups);
                } else {
                    if (!(q11Var instanceof o11)) {
                        q.j();
                        return null;
                    }
                    ArrayList arrayList2 = ((o11) q11Var).a;
                    CallsDashActivity.b0(callsDashActivity, textView, Integer.valueOf(arrayList2.size()));
                    for (View view2 : (View[]) Arrays.copyOf(new View[]{quickRecyclerView, relativeLayout}, 2)) {
                        view2.setVisibility(0);
                    }
                    linearLayout.setVisibility(8);
                    boolean z2 = arrayList2.size() > 3;
                    ArrayList arrayList3 = z2 ? new ArrayList(el1.p1(arrayList2, 3)) : arrayList2;
                    q01 q01Var = new q01(new h11(2, callsDashActivity, CallsDashActivity.class, "onBackupItemMenuClick", "onBackupItemMenuClick(Landroid/view/View;Lorg/swiftapps/swiftbackup/model/provider/CallLogBackupItem;)V", 0, 0));
                    q01Var.w(new fm7((List) arrayList3, (Set) null, false, (String) null, 30), false);
                    q01Var.j = new f7(callsDashActivity, i2);
                    quickRecyclerView.setAdapter(q01Var);
                    callsDashActivity.y(TextView.class);
                    if (z2) {
                        imageView2.setImageResource(R.drawable.ic_arrow_forward);
                        imageView2.setImageTintList(ColorStateList.valueOf(sz8.A(callsDashActivity)));
                        textView3.setText(callsDashActivity.getString(R.string.plus_more, fz5.j(arrayList2.size() - arrayList3.size(), "+")));
                        relativeLayout.setOnClickListener(new c11(callsDashActivity, arrayList2, i4));
                    } else {
                        imageView2.setImageResource(R.drawable.ic_delete_sweep);
                        imageView2.setImageTintList(ColorStateList.valueOf(sz8.r(callsDashActivity)));
                        textView3.setText(R.string.delete_all);
                        relativeLayout.setOnClickListener(new t20(i3, callsDashActivity, arrayList2));
                    }
                }
                return be8Var;
            case 7:
                ((b21) obj2).h.setText((String) obj);
                return be8Var;
            case 8:
                CsActivity csActivity = (CsActivity) obj2;
                gv7 gv7Var2 = csActivity.m0;
                String str2 = (String) obj;
                int i8 = CsActivity.P0;
                boolean z3 = !(str2 == null || str2.length() == 0);
                if (((TextInputLayout) gv7Var2.getValue()).r.q != z3) {
                    ConstraintLayout constraintLayout = csActivity.k0().a;
                    constraintLayout.getClass();
                    csActivity.x(constraintLayout, new Class[0]);
                }
                ((TextInputLayout) gv7Var2.getValue()).setErrorEnabled(z3);
                ((TextInputLayout) gv7Var2.getValue()).setErrorIconDrawable((Drawable) null);
                ((TextInputLayout) gv7Var2.getValue()).setError(str2);
                return be8Var;
            case XmlPullParser.COMMENT /* 9 */:
                mt3 mt3Var = (mt3) obj2;
                Long l = (Long) obj;
                l.longValue();
                if (mt3Var != null) {
                    mt3Var.invoke(l);
                }
                return be8Var;
            case 10:
                GmsSignInActivity gmsSignInActivity = (GmsSignInActivity) obj2;
                int i9 = GmsSignInActivity.N;
                Account accountA = hz3.a();
                if (accountA == null) {
                    gmsSignInActivity.P().j(gmsSignInActivity.getString(R.string.auth_failed), false);
                } else {
                    p50 p50Var = new p50(0);
                    String str3 = accountA.name;
                    String str4 = accountA.name;
                    ly8.e(str4);
                    GoogleSignInAccount googleSignInAccount = new GoogleSignInAccount(3, null, null, str3, null, null, null, 0L, str4, new ArrayList(p50Var), null, null);
                    Scope[] scopeArr = {new Scope(1, "https://www.googleapis.com/auth/drive.file")};
                    HashSet hashSet = new HashSet();
                    HashMap map = new HashMap();
                    hashSet.add(scopeArr[0]);
                    hashSet.addAll(Arrays.asList(scopeArr));
                    String str5 = googleSignInAccount.d;
                    if (TextUtils.isEmpty(str5)) {
                        account = null;
                    } else {
                        ly8.h(str5);
                        ly8.e(str5);
                        account = new Account(str5, "com.google");
                    }
                    if (hashSet.contains(GoogleSignInOptions.y)) {
                        Scope scope = GoogleSignInOptions.x;
                        if (hashSet.contains(scope)) {
                            hashSet.remove(scope);
                        }
                    }
                    GoogleSignInOptions googleSignInOptions = new GoogleSignInOptions(3, new ArrayList(hashSet), account, false, false, false, null, null, map, null);
                    lk lkVar = new lk();
                    Looper mainLooper = gmsSignInActivity.getMainLooper();
                    ly8.i(mainLooper, "Looper must not be null.");
                    w04 w04Var = new w04(gmsSignInActivity, gmsSignInActivity, c80.a, googleSignInOptions, new jz3(lkVar, mainLooper));
                    int iC = w04Var.c();
                    int i10 = iC - 1;
                    if (iC == 0) {
                        throw null;
                    }
                    me meVar = w04Var.d;
                    Context context = w04Var.a;
                    if (i10 == 2) {
                        k39.a.a("getFallbackSignInIntent()", new Object[0]);
                        intentA = k39.a(context, (GoogleSignInOptions) meVar);
                        intentA.setAction("com.google.android.gms.auth.APPAUTH_SIGN_IN");
                    } else if (i10 != 3) {
                        k39.a.a("getNoImplementationSignInIntent()", new Object[0]);
                        intentA = k39.a(context, (GoogleSignInOptions) meVar);
                        intentA.setAction("com.google.android.gms.auth.NO_IMPL");
                    } else {
                        intentA = k39.a(context, (GoogleSignInOptions) meVar);
                    }
                    gmsSignInActivity.startActivityForResult(intentA, 2004);
                }
                return be8Var;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                Map map2 = HomeActivity.b0;
                wk0 wk0VarB = ((HomeActivity) obj2).Y().b(R.id.nav_cloud);
                yk0 yk0Var = wk0VarB.e;
                yk0Var.a.L = bool;
                yk0Var.b.L = bool;
                wk0VarB.setVisible(bool.booleanValue(), false);
                return be8Var;
            case 12:
                IntroActivity introActivity = (IntroActivity) obj2;
                int i11 = IntroActivity.V;
                if (((Boolean) obj).booleanValue()) {
                    introActivity.T();
                }
                return be8Var;
            case 13:
                Context context2 = (Context) obj;
                context2.getClass();
                String str6 = ((ih4) obj2).a;
                LinkedHashSet linkedHashSet = ed7.a;
                linkedHashSet.getClass();
                return nc8.I(new cd7(context2, str6, fd7.a, new ig1(linkedHashSet, null), new dd7(3, null)));
            case 14:
                MegaSignInActivity megaSignInActivity = (MegaSignInActivity) obj2;
                gv7 gv7Var3 = megaSignInActivity.P;
                String str7 = (String) obj;
                int i12 = MegaSignInActivity.S;
                boolean z4 = !(str7 == null || str7.length() == 0);
                if (((TextInputLayout) gv7Var3.getValue()).r.q != z4) {
                    megaSignInActivity.x(io4.a(megaSignInActivity), new Class[0]);
                }
                ((TextInputLayout) gv7Var3.getValue()).setErrorEnabled(z4);
                ((TextInputLayout) gv7Var3.getValue()).setErrorIconDrawable((Drawable) null);
                ((TextInputLayout) gv7Var3.getValue()).setError(str7);
                return be8Var;
            case 15:
                MessagesBackupRestoreActivity messagesBackupRestoreActivity = (MessagesBackupRestoreActivity) obj2;
                gv7 gv7Var4 = messagesBackupRestoreActivity.Z;
                f.a aVar = (f.a) obj;
                int i13 = MessagesBackupRestoreActivity.c0;
                aVar.getClass();
                Log.i(messagesBackupRestoreActivity.r(), "updateViews: status = " + aVar);
                int i14 = e.a[aVar.ordinal()];
                if (i14 == 1) {
                    messagesBackupRestoreActivity.V(false, (View[]) Arrays.copyOf(new View[]{messagesBackupRestoreActivity.W(), messagesBackupRestoreActivity.Z(), messagesBackupRestoreActivity.X().a}, 3));
                    messagesBackupRestoreActivity.V(true, (View[]) Arrays.copyOf(new View[]{messagesBackupRestoreActivity.Y()}, 1));
                } else if (i14 == 2) {
                    messagesBackupRestoreActivity.V(false, (View[]) Arrays.copyOf(new View[]{messagesBackupRestoreActivity.Y(), messagesBackupRestoreActivity.X().a}, 2));
                    messagesBackupRestoreActivity.V(true, (View[]) Arrays.copyOf(new View[]{messagesBackupRestoreActivity.W(), messagesBackupRestoreActivity.Z()}, 2));
                } else {
                    if (i14 != 3) {
                        q.j();
                        return null;
                    }
                    messagesBackupRestoreActivity.V(false, (View[]) Arrays.copyOf(new View[]{messagesBackupRestoreActivity.W(), messagesBackupRestoreActivity.Y(), messagesBackupRestoreActivity.Z()}, 3));
                    messagesBackupRestoreActivity.V(true, (View[]) Arrays.copyOf(new View[]{messagesBackupRestoreActivity.X().a}, 1));
                    ((ImageView) messagesBackupRestoreActivity.Y.getValue()).setImageResource(R.drawable.ic_no_backup);
                    ((TextView) messagesBackupRestoreActivity.X.getValue()).setText(R.string.no_messages_found);
                    Object value = gv7Var4.getValue();
                    value.getClass();
                    ((Button) value).setText(R.string.back);
                    Object value2 = gv7Var4.getValue();
                    value2.getClass();
                    ((Button) value2).setOnClickListener(new nf(messagesBackupRestoreActivity, 9));
                }
                return be8Var;
            case Argon2.V10 /* 16 */:
                Intent intent = (Intent) obj;
                int i15 = NoGmsSignInActivity.M;
                intent.getClass();
                ((NoGmsSignInActivity) obj2).O(intent, 2004);
                return be8Var;
            case 17:
                is3 is3Var = (is3) obj;
                is3Var.getClass();
                ((mi2) obj2).h = is3Var;
                return be8Var;
            case 18:
                i08 i08Var = (i08) obj2;
                TeraBoxTokenCredentials teraBoxTokenCredentials = (TeraBoxTokenCredentials) obj;
                teraBoxTokenCredentials.getClass();
                i08Var.c = teraBoxTokenCredentials;
                if (zm5.u(teraBoxTokenCredentials.getCloudServiceId())) {
                    m08 m08Var = TeraBoxTokenCredentials.Companion;
                    dd1 dd1Var = i08Var.b;
                    m08Var.getClass();
                    m08.c(dd1Var, teraBoxTokenCredentials);
                }
                return be8Var;
            default:
                ((Integer) obj).getClass();
                ((uo8) obj2).a();
                return be8Var;
        }
    }
}
