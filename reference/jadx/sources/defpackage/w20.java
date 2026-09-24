package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.net.wifi.WifiConfiguration;
import android.text.Editable;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.jcraft.jsch.Argon2;
import com.l4digital.fastscroll.FastScroller;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appconfigs.data.Config;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity;
import org.swiftapps.swiftbackup.appslist.ui.listconfig.AppsConfigRunActivity;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;
import org.swiftapps.swiftbackup.cloud.connect.GmsSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.NoGmsSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.common.CloudConnectActivity;
import org.swiftapps.swiftbackup.cloud.orphans.a;
import org.swiftapps.swiftbackup.cloud.orphans.b;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.folders.ui.FolderEditActivity;
import org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFabMenuView;
import org.swiftapps.swiftbackup.intro.IntroActivity;
import org.swiftapps.swiftbackup.intro.d;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.CallsBackupRestoreActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.CallsDashActivity;
import org.swiftapps.swiftbackup.premium.PremiumActivity;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.swiftapps.swiftbackup.wifi.WifiActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class w20 implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ w20(a aVar, Exception exc) {
        this.a = 6;
        this.b = exc;
    }

    /* JADX WARN: Code duplicated, block: B:191:0x05cb  */
    /* JADX WARN: Code duplicated, block: B:225:0x0695  */
    /* JADX WARN: Code duplicated, block: B:297:0x0927  */
    /* JADX WARN: Code duplicated, block: B:299:0x0931  */
    /* JADX WARN: Code duplicated, block: B:300:0x0933  */
    /* JADX WARN: Code duplicated, block: B:302:0x0936  */
    /* JADX WARN: Code duplicated, block: B:303:0x0940  */
    /* JADX WARN: Code duplicated, block: B:306:0x0985  */
    /* JADX WARN: Code duplicated, block: B:307:0x09bd  */
    /* JADX WARN: Multi-variable type inference failed */
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
        int i;
        ArrayList arrayList;
        boolean z;
        ArrayList arrayList2;
        ArrayList arrayList3;
        boolean z2;
        ConfigEditActivity.a aVar;
        boolean z3;
        boolean z4;
        int i2 = this.a;
        int i3 = 3;
        int i4 = 2;
        boolean z5 = true;
        boolean z6 = false;
        be8 be8Var = be8.a;
        Object obj2 = this.b;
        switch (i2) {
            case 0:
                AppsConfigRunActivity appsConfigRunActivity = (AppsConfigRunActivity) obj2;
                fm7 fm7Var = (fm7) obj;
                int i5 = AppsConfigRunActivity.m0;
                if (fm7Var != null) {
                    Log.d(appsConfigRunActivity.r(), "onAdapterState: Apps received = " + fm7Var.a.size());
                    FastScroller fastScroller = (FastScroller) appsConfigRunActivity.h0.getValue();
                    iy iyVar = iy.a;
                    fastScroller.setBubbleTextSize(iy.b() == sx.Name ? 48 : 32);
                    f30 f30Var = appsConfigRunActivity.j0;
                    if (f30Var == null) {
                        pe4.F("mAdapter");
                        throw null;
                    }
                    f30Var.w(fm7Var, false);
                    if (fm7Var.d) {
                        appsConfigRunActivity.g0().f0(0);
                    }
                    f30 f30Var2 = appsConfigRunActivity.j0;
                    if (f30Var2 == null) {
                        pe4.F("mAdapter");
                        throw null;
                    }
                    f30Var2.y();
                    f30 f30Var3 = appsConfigRunActivity.j0;
                    if (f30Var3 == null) {
                        pe4.F("mAdapter");
                        throw null;
                    }
                    appsConfigRunActivity.j0(f30Var3.p());
                }
                return be8Var;
            case 1:
                y30 y30Var = (y30) obj2;
                List list = (List) obj;
                if (list != null) {
                    jk8 jk8Var = y30Var.b;
                    jk8Var.getClass();
                    nd6.j(y30Var, list, ((z30) jk8Var).e, R.string.quick_restore_apps, R.drawable.ic_app, true, null, 64);
                }
                return be8Var;
            case 2:
                CallsBackupRestoreActivity callsBackupRestoreActivity = (CallsBackupRestoreActivity) obj2;
                fm7 fm7Var2 = (fm7) obj;
                m01 m01Var = callsBackupRestoreActivity.T;
                if (m01Var == null) {
                    pe4.F("mAdapter");
                    throw null;
                }
                fm7Var2.getClass();
                m01Var.w(fm7Var2, false);
                m01 m01Var2 = callsBackupRestoreActivity.T;
                if (m01Var2 != null) {
                    m01Var2.y();
                    return be8Var;
                }
                pe4.F("mAdapter");
                throw null;
            case 3:
                CallsDashActivity callsDashActivity = (CallsDashActivity) obj2;
                n11 n11Var = (n11) obj;
                int i6 = CallsDashActivity.T;
                n11Var.getClass();
                pi7 pi7Var = callsDashActivity.Y().e;
                TextView textView = pi7Var.n;
                CircularProgressIndicator circularProgressIndicator = pi7Var.e;
                ConstraintLayout constraintLayout = pi7Var.d;
                QuickRecyclerView quickRecyclerView = pi7Var.f;
                quickRecyclerView.setLinearLayoutManager(1);
                zx2 zx2Var = pi7Var.b;
                LinearLayout linearLayout = zx2Var.a;
                zx2Var.d.setImageResource(R.drawable.ic_cloud);
                TextView textView2 = zx2Var.e;
                MaterialButton materialButton = zx2Var.b;
                View view = pi7Var.k;
                ImageView imageView = pi7Var.c;
                TextView textView3 = pi7Var.p;
                if (callsDashActivity.R && !callsDashActivity.S) {
                    callsDashActivity.S = true;
                    textView.startAnimation(Const.j(7));
                }
                if (n11Var.equals(l11.a)) {
                    CallsDashActivity.a0(callsDashActivity, textView, null);
                    circularProgressIndicator.setVisibility(0);
                    constraintLayout.setVisibility(4);
                } else if (n11Var instanceof i11) {
                    CallsDashActivity.a0(callsDashActivity, textView, Integer.valueOf(((i11) n11Var).a.size()));
                    circularProgressIndicator.setVisibility(8);
                    constraintLayout.setVisibility(0);
                    linearLayout.setVisibility(8);
                    for (View view2 : (View[]) Arrays.copyOf(new View[]{quickRecyclerView, view}, 2)) {
                        view2.setVisibility(0);
                    }
                } else {
                    if (!n11Var.equals(k11.a)) {
                        if (n11Var.equals(m11.a)) {
                            CallsDashActivity.a0(callsDashActivity, textView, null);
                            circularProgressIndicator.setVisibility(8);
                            constraintLayout.setVisibility(0);
                            linearLayout.setVisibility(0);
                            materialButton.setVisibility(0);
                            for (View view3 : (View[]) Arrays.copyOf(new View[]{quickRecyclerView, view}, 2)) {
                                view3.setVisibility(8);
                            }
                            textView2.setText(R.string.no_internet_connection_summary);
                            materialButton.setText(R.string.retry);
                            materialButton.setOnClickListener(new dj(callsDashActivity, 3));
                        } else {
                            if (!n11Var.equals(j11.a)) {
                                q.j();
                                return null;
                            }
                            CallsDashActivity.a0(callsDashActivity, textView, null);
                            circularProgressIndicator.setVisibility(8);
                            constraintLayout.setVisibility(0);
                            linearLayout.setVisibility(0);
                            materialButton.setVisibility(0);
                            for (View view4 : (View[]) Arrays.copyOf(new View[]{quickRecyclerView, view}, 2)) {
                                view4.setVisibility(8);
                            }
                            textView2.setText(R.string.cloud_not_connected_summary);
                            materialButton.setText(R.string.connect_cloud_account);
                            i = 3;
                            materialButton.setOnClickListener(new hs(callsDashActivity, i));
                        }
                        if (n11Var instanceof i11) {
                            arrayList = ((i11) n11Var).a;
                            if (arrayList.size() > i) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (z) {
                                arrayList2 = new ArrayList(el1.p1(arrayList, i));
                            } else {
                                arrayList2 = arrayList;
                            }
                            q01 q01Var = new q01(new g11(2, callsDashActivity, CallsDashActivity.class, "onBackupItemMenuClick", "onBackupItemMenuClick(Landroid/view/View;Lorg/swiftapps/swiftbackup/model/provider/CallLogBackupItem;)V", 0, 0));
                            arrayList3 = arrayList2;
                            q01Var.w(new fm7((List) arrayList3, (Set) null, false, (String) null, 30), false);
                            q01Var.j = new rj0(callsDashActivity, 1);
                            quickRecyclerView.setAdapter(q01Var);
                            callsDashActivity.y(TextView.class);
                            if (z) {
                                imageView.setImageResource(R.drawable.ic_arrow_forward);
                                imageView.setImageTintList(ColorStateList.valueOf(sz8.A(callsDashActivity)));
                                textView3.setText(callsDashActivity.getString(R.string.plus_more, fz5.j(arrayList.size() - arrayList3.size(), "+")));
                                view.setOnClickListener(new fr(2, callsDashActivity, arrayList));
                            } else {
                                imageView.setImageResource(R.drawable.ic_delete_sweep);
                                imageView.setImageTintList(ColorStateList.valueOf(sz8.r(callsDashActivity)));
                                textView3.setText(R.string.delete_all);
                                view.setOnClickListener(new c11(callsDashActivity, arrayList, 1));
                            }
                        }
                        return be8Var;
                    }
                    CallsDashActivity.a0(callsDashActivity, textView, null);
                    circularProgressIndicator.setVisibility(8);
                    constraintLayout.setVisibility(0);
                    linearLayout.setVisibility(0);
                    materialButton.setVisibility(8);
                    for (View view5 : (View[]) Arrays.copyOf(new View[]{quickRecyclerView, view}, 2)) {
                        view5.setVisibility(8);
                    }
                    textView2.setText(R.string.no_backups_synced);
                }
                i = 3;
                if (n11Var instanceof i11) {
                    arrayList = ((i11) n11Var).a;
                    if (arrayList.size() > i) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        arrayList2 = new ArrayList(el1.p1(arrayList, i));
                    } else {
                        arrayList2 = arrayList;
                    }
                    q01 q01Var2 = new q01(new g11(2, callsDashActivity, CallsDashActivity.class, "onBackupItemMenuClick", "onBackupItemMenuClick(Landroid/view/View;Lorg/swiftapps/swiftbackup/model/provider/CallLogBackupItem;)V", 0, 0));
                    arrayList3 = arrayList2;
                    q01Var2.w(new fm7((List) arrayList3, (Set) null, false, (String) null, 30), false);
                    q01Var2.j = new rj0(callsDashActivity, 1);
                    quickRecyclerView.setAdapter(q01Var2);
                    callsDashActivity.y(TextView.class);
                    if (z) {
                        imageView.setImageResource(R.drawable.ic_arrow_forward);
                        imageView.setImageTintList(ColorStateList.valueOf(sz8.A(callsDashActivity)));
                        textView3.setText(callsDashActivity.getString(R.string.plus_more, fz5.j(arrayList.size() - arrayList3.size(), "+")));
                        view.setOnClickListener(new fr(2, callsDashActivity, arrayList));
                    } else {
                        imageView.setImageResource(R.drawable.ic_delete_sweep);
                        imageView.setImageTintList(ColorStateList.valueOf(sz8.r(callsDashActivity)));
                        textView3.setText(R.string.delete_all);
                        view.setOnClickListener(new c11(callsDashActivity, arrayList, 1));
                    }
                }
                return be8Var;
            case 4:
                fm7 fm7Var3 = (fm7) obj;
                int i7 = CloudConnectActivity.Q;
                fm7Var3.getClass();
                ((ac1) ((CloudConnectActivity) obj2).P.getValue()).w(fm7Var3, false);
                return be8Var;
            case 5:
                gg1 gg1Var = (gg1) obj2;
                gg1Var.o();
                gg1Var.m().c();
                return be8Var;
            case 6:
                b bVar = (b) obj;
                bVar.getClass();
                a.EnumC0013a enumC0013a = a.EnumC0013a.ERROR;
                SwiftApp.Companion companion = SwiftApp.d;
                Context contextC = SwiftApp.Companion.c();
                String message = ((Exception) obj2).getMessage();
                return b.a(bVar, enumC0013a, ov2.a, sv2.a, contextC.getString(R.string.cloud_orphan_scan_failed, message != null ? message : ""), 0, 0, 6271);
            case 7:
                sj1 sj1Var = (sj1) obj2;
                int iIntValue = ((Integer) obj).intValue();
                SharedPreferences.Editor editor = cz4.k;
                if (editor == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor.putInt("multithreaded_downloads_chunk_count", iIntValue).apply();
                sj1Var.t();
                return be8Var;
            case 8:
                ConfigEditActivity configEditActivity = (ConfigEditActivity) obj2;
                gv7 gv7Var = configEditActivity.S;
                Config config = (Config) obj;
                int i8 = ConfigEditActivity.V;
                config.getClass();
                qq1 qq1VarV = configEditActivity.V();
                configEditActivity.A(!pe4.d(qq1VarV.f, qq1VarV.j()));
                configEditActivity.U().d.setEnabled(config.isNameValid() && !config.isNameTaken());
                l39 l39Var = configEditActivity.U().e;
                if (config.hasValidSettings() && config.hasCloudLocation()) {
                    tb1 tb1Var = tb1.a;
                    if (qb1.m()) {
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                } else {
                    z2 = false;
                }
                MaterialCardView materialCardView = (MaterialCardView) l39Var.b;
                sz8.d0(materialCardView, z2);
                if (sz8.I(materialCardView)) {
                    ((TextView) l39Var.c).setText(configEditActivity.getString(R.string.config_setting_error_cloud_not_connected));
                    materialCardView.setOnClickListener(new er(i4, configEditActivity, config));
                }
                List list2 = ((pq1) gv7Var.getValue()).e.a;
                List<ConfigSettings> validSettings = config.getValidSettings();
                if (validSettings == null) {
                    validSettings = ov2.a;
                }
                List<ConfigSettings> list3 = validSettings;
                boolean z7 = !list2.isEmpty() && list3.size() - list2.size() == 1;
                ((pq1) gv7Var.getValue()).w(new fm7((List) list3, (Set) null, false, (String) null, 30), false);
                if (z7) {
                    configEditActivity.U().k.postOnAnimation(new hq1(configEditActivity, list3.size() - 1));
                }
                ExtendedFloatingActionButton extendedFloatingActionButton = configEditActivity.U().c;
                if (sq1.a(config, false)) {
                    qq1 qq1VarV2 = configEditActivity.V();
                    aVar = !pe4.d(qq1VarV2.f, qq1VarV2.j()) ? ConfigEditActivity.a.Save : ConfigEditActivity.a.Run;
                } else {
                    aVar = ConfigEditActivity.a.Hide;
                }
                ConfigEditActivity.a aVar2 = configEditActivity.T;
                if (aVar != aVar2) {
                    List listA0 = fl1.A0(aVar, aVar2);
                    if (listA0.isEmpty()) {
                        z3 = false;
                    } else {
                        Iterator it = listA0.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                z3 = false;
                            } else if (((ConfigEditActivity.a) it.next()) == ConfigEditActivity.a.Hide) {
                                z3 = true;
                            }
                        }
                    }
                } else {
                    z3 = false;
                }
                extendedFloatingActionButton.setEnabled(aVar != ConfigEditActivity.a.Hide);
                if (z3) {
                    extendedFloatingActionButton.startAnimation(AnimationUtils.loadAnimation(configEditActivity, extendedFloatingActionButton.isEnabled() ? R.anim.bottom_sheet_enter : R.anim.bottom_sheet_exit));
                }
                sz8.d0(extendedFloatingActionButton, extendedFloatingActionButton.isEnabled());
                int i9 = org.swiftapps.swiftbackup.appconfigs.edit.a.a[aVar.ordinal()];
                if (i9 == 1) {
                    int color = configEditActivity.getColor(sz8.y(configEditActivity, R.attr.colorPrimaryContainer));
                    int color2 = configEditActivity.getColor(sz8.y(configEditActivity, R.attr.colorOnPrimaryContainer));
                    extendedFloatingActionButton.setBackgroundColor(color);
                    extendedFloatingActionButton.setTextColor(color2);
                    extendedFloatingActionButton.setIconTint(extendedFloatingActionButton.getTextColors());
                    extendedFloatingActionButton.setText(R.string.config_batch_actions);
                    extendedFloatingActionButton.setIconResource(R.drawable.ic_playlist_check);
                    extendedFloatingActionButton.setOnClickListener(new gr(1, configEditActivity, config));
                } else if (i9 == 2) {
                    int color3 = configEditActivity.getColor(sz8.y(configEditActivity, R.attr.colorTertiary));
                    int color4 = configEditActivity.getColor(sz8.y(configEditActivity, R.attr.colorOnTertiary));
                    extendedFloatingActionButton.setBackgroundColor(color3);
                    extendedFloatingActionButton.setTextColor(color4);
                    extendedFloatingActionButton.setIconTint(extendedFloatingActionButton.getTextColors());
                    extendedFloatingActionButton.setText(R.string.save_config);
                    extendedFloatingActionButton.setIconResource(R.drawable.ic_save);
                    extendedFloatingActionButton.setOnClickListener(new t20(i4, config, configEditActivity));
                } else {
                    if (i9 != 3) {
                        q.j();
                        return null;
                    }
                    extendedFloatingActionButton.setOnClickListener(null);
                }
                configEditActivity.T = aVar;
                return be8Var;
            case XmlPullParser.COMMENT /* 9 */:
                lr1 lr1Var = (lr1) obj2;
                yu yuVar = (yu) obj;
                yuVar.getClass();
                lr1Var.r().k(ConfigSettings.copy$default(lr1Var.r().j(), 0, null, null, null, null, null, null, null, null, yuVar.toString(), null, null, null, null, null, null, 65023, null));
                return be8Var;
            case 10:
                CsActivity csActivity = (CsActivity) obj2;
                fd1 fd1Var = (fd1) obj;
                int i10 = CsActivity.P0;
                fd1Var.getClass();
                csActivity.h0().setPrefixText(null);
                TextInputEditText textInputEditTextG0 = csActivity.g0();
                TextInputEditText textInputEditTextG1 = csActivity.g0();
                ai6 ai6Var = gc1.a;
                Editable text = textInputEditTextG1.getText();
                String strA = gc1.a(gc1.a(text != null ? text.toString() : null));
                if (strA.length() <= 0) {
                    strA = null;
                }
                String strK = strA == null ? null : dj7.k(fd1Var.getScheme(), "://", strA);
                Editable text2 = textInputEditTextG0.getText();
                if (!pe4.d(text2 != null ? text2.toString() : null, strK != null ? strK : "")) {
                    csActivity.L0 = true;
                    try {
                        CsActivity.q0(textInputEditTextG0, strK);
                        csActivity.L0 = false;
                    } catch (Throwable th) {
                        csActivity.L0 = false;
                        throw th;
                    }
                }
                csActivity.v0();
                return be8Var;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                zn4.c(new da2(z6, ((x92) obj2).m(), ((Boolean) obj).booleanValue()));
                return be8Var;
            case 12:
                FolderEditActivity folderEditActivity = (FolderEditActivity) obj2;
                String str = (String) obj;
                TextInputLayout textInputLayout = (TextInputLayout) folderEditActivity.Z.getValue();
                if (textInputLayout.r.q != (!(str == null || str.length() == 0))) {
                    CoordinatorLayout coordinatorLayout = folderEditActivity.Z().a;
                    coordinatorLayout.getClass();
                    folderEditActivity.x(coordinatorLayout, new Class[0]);
                }
                textInputLayout.setErrorEnabled(!(str == null || str.length() == 0));
                textInputLayout.setErrorIconDrawable((Drawable) null);
                textInputLayout.setError(str);
                return be8Var;
            case 13:
                Boolean bool = (Boolean) obj;
                km5 km5Var = ((tp3) obj2).g;
                bool.getClass();
                km5Var.t(bool.booleanValue());
                return be8Var;
            case 14:
                GmsSignInActivity gmsSignInActivity = (GmsSignInActivity) obj2;
                int i11 = GmsSignInActivity.N;
                l73.v(z85.t(gmsSignInActivity), null, new fz3(gmsSignInActivity, null), 3);
                return be8Var;
            case 15:
                IntroActivity introActivity = (IntroActivity) obj2;
                int i12 = IntroActivity.V;
                introActivity.J(new s52(1, introActivity.a0(), d.class, "onShizukuPermissionResult", "onShizukuPermissionResult(Z)V", 0, 1));
                return be8Var;
            case Argon2.V10 /* 16 */:
                return ((t75) obj2).e(((Integer) obj).intValue());
            case 17:
                MessagesBackupRestoreActivity messagesBackupRestoreActivity = (MessagesBackupRestoreActivity) obj2;
                qv1.c cVar = (qv1.c) obj;
                int i13 = MessagesBackupRestoreActivity.c0;
                gv7 gv7Var2 = messagesBackupRestoreActivity.a0;
                if (cVar == null) {
                    sz8.m((w45) gv7Var2.getValue());
                } else {
                    w45 w45Var = (w45) gv7Var2.getValue();
                    w45Var.l(cVar.getTotal());
                    w45Var.m(cVar.getIndex());
                    String string = messagesBackupRestoreActivity.getString(R.string.reading_mms_data_message);
                    ProgressBar progressBar = w45Var.p;
                    int progress = progressBar != null ? progressBar.getProgress() : w45Var.I;
                    ProgressBar progressBar2 = w45Var.p;
                    int max = progressBar2 != null ? progressBar2.getMax() : w45Var.H;
                    StringBuilder sbV = dj7.v("\n", string, "\n\n", progress, "/");
                    sbV.append(max);
                    w45Var.i(sbV.toString());
                    if (!w45Var.isShowing()) {
                        w45Var.k.c(-1, messagesBackupRestoreActivity.getString(R.string.skip_mms), new e21(messagesBackupRestoreActivity, 1));
                        w45Var.show();
                        TextView textView4 = (TextView) w45Var.findViewById(android.R.id.message);
                        if (textView4 != null) {
                            textView4.setTextSize(13.5f);
                        }
                    }
                }
                return be8Var;
            case 18:
                NoGmsSignInActivity noGmsSignInActivity = (NoGmsSignInActivity) obj2;
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                int i14 = NoGmsSignInActivity.M;
                if (zBooleanValue) {
                    noGmsSignInActivity.setResult(-1);
                    noGmsSignInActivity.finish();
                } else {
                    noGmsSignInActivity.setResult(0);
                    noGmsSignInActivity.finish();
                }
                return be8Var;
            case Argon2.V13 /* 19 */:
                String str2 = (String) obj;
                str2.getClass();
                return new ab1(og1.c(((nq5) obj2).h.j(str2, fl1.A0("id", "name", "parentReference", "size", "createdDateTime", "lastModifiedDateTime", "folder"))));
            case 20:
                PremiumActivity premiumActivity = (PremiumActivity) obj2;
                RecyclerView recyclerView = (RecyclerView) obj;
                recyclerView.getClass();
                ViewGroup.LayoutParams layoutParams = recyclerView.getLayoutParams();
                dt1 dt1Var = layoutParams instanceof dt1 ? (dt1) layoutParams : null;
                if (dt1Var != null) {
                    ((ViewGroup.MarginLayoutParams) dt1Var).width = 0;
                    recyclerView.setLayoutParams(dt1Var);
                }
                recyclerView.setHorizontalFadingEdgeEnabled(false);
                recyclerView.setLayoutManager(new LinearLayoutManager(premiumActivity));
                i56 i56Var = new i56(premiumActivity);
                jx2 entries = dd1.getEntries();
                ArrayList arrayList4 = new ArrayList();
                Iterator it2 = ((z3) entries).iterator();
                while (true) {
                    w3 w3Var = (w3) it2;
                    if (!w3Var.hasNext()) {
                        ArrayList arrayList5 = new ArrayList();
                        for (Object obj3 : arrayList4) {
                            if (((dd1) obj3).getReleaseState().compareTo(xi6.Beta) >= 0) {
                                arrayList5.add(obj3);
                            }
                        }
                        Set setA0 = x50.A0(new dd1[]{dd1.S3, dd1.WebDav, dd1.SMB, dd1.SFTP, dd1.FTP});
                        Set setZ1 = el1.z1(arrayList5);
                        ArrayList<dd1> arrayList6 = new ArrayList();
                        for (Object obj4 : arrayList5) {
                            if (!setA0.contains((dd1) obj4)) {
                                arrayList6.add(obj4);
                            }
                        }
                        ArrayList arrayList7 = new ArrayList(hl1.G0(arrayList6, 10));
                        for (dd1 dd1Var : arrayList6) {
                            arrayList7.add(new g56(dd1Var.getDisplayName(), dd1Var.getBrandingIconRes(), true));
                        }
                        ArrayList arrayList8 = new ArrayList();
                        if (!arrayList7.isEmpty()) {
                            String string2 = premiumActivity.getString(R.string.premium_cloud_group_cloud_drives);
                            string2.getClass();
                            arrayList8.add(new f56(4, string2, arrayList7));
                        }
                        if (setZ1.contains(dd1.S3)) {
                            String string3 = premiumActivity.getString(R.string.premium_cloud_group_s3);
                            string3.getClass();
                            ArrayList<xq6> arrayList9 = xq6.n;
                            ArrayList arrayList10 = new ArrayList(hl1.G0(arrayList9, 10));
                            for (xq6 xq6Var : arrayList9) {
                                arrayList10.add(new g56(xq6Var.b, xq6Var.c, !xq6Var.equals(el1.S0(xq6.n))));
                                z5 = z5;
                            }
                            z4 = z5;
                            arrayList8.add(new f56(4, string3, arrayList10));
                        } else {
                            z4 = true;
                        }
                        if (setZ1.contains(dd1.WebDav)) {
                            String string4 = premiumActivity.getString(R.string.premium_cloud_group_webdav);
                            string4.getClass();
                            ArrayList<oq8> arrayList11 = oq8.m;
                            ArrayList arrayList12 = new ArrayList(hl1.G0(arrayList11, 10));
                            for (oq8 oq8Var : arrayList11) {
                                arrayList12.add(new g56(oq8Var.b, oq8Var.c, !oq8Var.equals(el1.S0(oq8.m))));
                            }
                            arrayList8.add(new f56(4, string4, arrayList12));
                        }
                        List listA1 = fl1.A0(dd1.WebDav, dd1.S3, dd1.SFTP, dd1.SMB, dd1.FTP);
                        ArrayList<dd1> arrayList13 = new ArrayList();
                        for (Object obj5 : listA1) {
                            if (setZ1.contains((dd1) obj5)) {
                                arrayList13.add(obj5);
                            }
                        }
                        ArrayList arrayList14 = new ArrayList(hl1.G0(arrayList13, 10));
                        for (dd1 dd1Var2 : arrayList13) {
                            boolean z8 = z4;
                            arrayList14.add(new g56(dd1Var2.getDisplayName(), k56.a[dd1Var2.ordinal()] == z8 ? oq8.i.c : dd1Var2.getBrandingIconRes(), z8));
                            z4 = true;
                        }
                        if (!arrayList14.isEmpty()) {
                            String string5 = premiumActivity.getString(R.string.premium_cloud_group_server_protocols);
                            string5.getClass();
                            arrayList8.add(new f56(arrayList14.size(), string5, arrayList14));
                        }
                        r35.m(i56Var, nc8.I(new e56(arrayList8)));
                        recyclerView.setAdapter(i56Var);
                        return be8Var;
                    }
                    Object next = w3Var.next();
                    if (((dd1) next).getSupportsCurrentAndroidSdk()) {
                        arrayList4.add(next);
                    }
                }
                break;
            case 21:
                ScheduleFabMenuView scheduleFabMenuView = (ScheduleFabMenuView) obj2;
                MenuItem menuItem = (MenuItem) obj;
                Map map = ScheduleFabMenuView.K;
                menuItem.getClass();
                boolean zHasSubMenu = menuItem.hasSubMenu();
                LinearLayout linearLayout2 = scheduleFabMenuView.p;
                if (zHasSubMenu) {
                    scheduleFabMenuView.k(linearLayout2, menuItem, true, new a37(scheduleFabMenuView, 1));
                    String string6 = scheduleFabMenuView.getContext().getString(R.string.back);
                    string6.getClass();
                    b37 b37VarI = ScheduleFabMenuView.i(scheduleFabMenuView, string6, Integer.valueOf(R.drawable.ic_chevron_left), null, false, 12);
                    b37VarI.b.setOnClickListener(new mf(scheduleFabMenuView, 11));
                    scheduleFabMenuView.a(scheduleFabMenuView.q, b37VarI);
                    SubMenu subMenu = menuItem.getSubMenu();
                    if (subMenu != null) {
                        d7 d7Var = new d7(scheduleFabMenuView, 22);
                        int size = subMenu.size();
                        for (int i15 = 0; i15 < size; i15++) {
                            d7Var.invoke(subMenu.getItem(i15));
                        }
                    }
                } else {
                    scheduleFabMenuView.k(linearLayout2, menuItem, false, new kg(15, menuItem, scheduleFabMenuView));
                }
                return be8Var;
            case 22:
                String str3 = (String) obj2;
                String str4 = (String) obj;
                str4.getClass();
                if (nq7.j0(str4)) {
                    return str4.length() < str3.length() ? str3 : str4;
                }
                return str3.concat(str4);
            case 23:
                WifiActivity wifiActivity = (WifiActivity) obj2;
                vt8 vt8Var = (vt8) obj;
                et8 et8Var = WifiActivity.Y;
                ArrayAdapter arrayAdapter = new ArrayAdapter(wifiActivity, R.layout.dialog_list_item, vt8Var.b);
                s35 s35Var = new s35(wifiActivity, R.style.M3AlertDialogTheme, new hv1(wifiActivity, R.style.M3AlertDialogTheme), null);
                s35Var.v(R.string.connect_wifi);
                fp3 fp3Var = new fp3(i3, vt8Var, wifiActivity);
                ra raVar = (ra) s35Var.b;
                raVar.q = arrayAdapter;
                raVar.r = fp3Var;
                s35Var.q(R.string.cancel, null);
                s35Var.m();
                return be8Var;
            default:
                LinkedHashSet linkedHashSet = (LinkedHashSet) obj2;
                WifiConfiguration wifiConfiguration = (WifiConfiguration) obj;
                wifiConfiguration.getClass();
                int i16 = wifiConfiguration.networkId;
                if (i16 >= 0 && !linkedHashSet.add(Integer.valueOf(i16))) {
                    z5 = false;
                }
                return Boolean.valueOf(z5);
        }
    }

    public /* synthetic */ w20(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }
}
