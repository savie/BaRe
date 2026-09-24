package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.view.MenuItem;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;
import org.swiftapps.swiftbackup.cloud.protocols.CloudCredentials;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleData;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.MessagesDashActivity;
import org.swiftapps.swiftbackup.notice.NoticeItem;
import org.swiftapps.swiftbackup.walls.WallApplyActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class g52 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ g52(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.bt3
    public final Object invoke() {
        String passphrase;
        nc1 authType;
        int i;
        CloudCredentials.CloudPrivateKey key;
        CloudCredentials.CloudPrivateKey key2;
        Integer numM77getPort;
        fd1 protocol;
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        ArrayList arrayList5;
        ArrayList arrayList6;
        ArrayList arrayList7;
        int i2 = this.a;
        int i3 = 8;
        String strK = "";
        ArrayList arrayList8 = null;
        be8 be8Var = be8.a;
        Object obj = this.c;
        Object obj2 = this.b;
        Object[] objArr = 0;
        switch (i2) {
            case 0:
                final CsActivity csActivity = (CsActivity) obj2;
                gv7 gv7Var = csActivity.s0;
                gv7 gv7Var2 = csActivity.o0;
                gv7 gv7Var3 = csActivity.p0;
                gv7 gv7Var4 = csActivity.v0;
                gv7 gv7Var5 = csActivity.t0;
                gv7 gv7Var6 = csActivity.n0;
                gv7 gv7Var7 = csActivity.h0;
                gv7 gv7Var8 = csActivity.e0;
                gv7 gv7Var9 = csActivity.l0;
                CloudCredentials cloudCredentials = (CloudCredentials) ((lh6) obj).a;
                int i4 = CsActivity.P0;
                csActivity.k0().k.setImageResource(csActivity.d0().getBrandingIconRes());
                csActivity.k0().a0.setText(csActivity.d0().getDisplayName());
                ImageView imageView = csActivity.k0().n;
                final Object[] objArr2 = objArr == true ? 1 : 0;
                imageView.setOnClickListener(new View.OnClickListener() { // from class: w42
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        int i5 = objArr2;
                        CsActivity csActivity2 = csActivity;
                        switch (i5) {
                            case 0:
                                int i6 = CsActivity.P0;
                                view.getClass();
                                u45 u45Var = new u45(csActivity2, view, 12);
                                u45Var.f(R.menu.menu_cloud_service);
                                fc5 fc5Var = (fc5) u45Var.c;
                                fc5Var.getClass();
                                int i7 = 0;
                                while (i7 < fc5Var.f.size()) {
                                    int i8 = i7 + 1;
                                    MenuItem item = fc5Var.getItem(i7);
                                    if (item == null) {
                                        l0.a();
                                    } else {
                                        int itemId = item.getItemId();
                                        if (itemId == R.id.action_save_settings) {
                                            item.setVisible(csActivity2.d0().getAllowSavingSetupDetails());
                                        } else if (itemId == R.id.action_load_settings) {
                                            item.setVisible(csActivity2.d0().getAllowSavingSetupDetails());
                                        }
                                        i7 = i8;
                                    }
                                    break;
                                }
                                u45Var.e = new gb(csActivity2, 5);
                                u45Var.j();
                                break;
                            default:
                                int i9 = CsActivity.P0;
                                csActivity2.i0().showDropDown();
                                break;
                        }
                    }
                });
                gv7 gv7Var10 = csActivity.k0;
                sz8.d0((TextInputLayout) gv7Var10.getValue(), csActivity.d0().getProtocols().size() > 1);
                boolean zI = sz8.I((TextInputLayout) gv7Var10.getValue());
                int i5 = 10;
                if (zI) {
                    List<fd1> protocols = csActivity.d0().getProtocols();
                    ArrayList arrayList9 = new ArrayList(hl1.G0(protocols, 10));
                    Iterator<T> it = protocols.iterator();
                    while (it.hasNext()) {
                        arrayList9.add(((fd1) it.next()).getDisplayName());
                    }
                    ArrayAdapter arrayAdapter = new ArrayAdapter(csActivity, R.layout.edit_text_dropdown_menu_item, arrayList9);
                    if (cloudCredentials == null || (protocol = cloudCredentials.getProtocol()) == null) {
                        protocol = (fd1) el1.S0(csActivity.d0().getProtocols());
                    }
                    ((AutoCompleteTextView) gv7Var9.getValue()).setAdapter(arrayAdapter);
                    ((AutoCompleteTextView) gv7Var9.getValue()).setText((CharSequence) protocol.getDisplayName(), false);
                    ((AutoCompleteTextView) gv7Var9.getValue()).addTextChangedListener(new l52(csActivity));
                }
                sz8.d0(csActivity.k0().x, !csActivity.d0().isEmailPasswordBasedWebDav());
                sz8.d0(csActivity.k0().X, !csActivity.d0().isEmailPasswordBasedWebDav());
                sz8.d0(csActivity.k0().U, !csActivity.d0().isEmailPasswordBasedWebDav());
                csActivity.h0().setHint(csActivity.d0().getServerFieldHint(csActivity));
                csActivity.g0().setSingleLine(false);
                CsActivity.b0(csActivity.g0());
                csActivity.g0().setText(cloudCredentials != null ? cloudCredentials.getServer() : null);
                csActivity.g0().addTextChangedListener(new m52(0, csActivity, x65.r0(new pw5(TokenAuthenticationScheme.SCHEME_DELIMITER, ""), new pw5("\n", ""))));
                ((TextInputLayout) csActivity.i0.getValue()).setHint(csActivity.d0().getPathFieldHint(csActivity));
                csActivity.e0().setSingleLine(false);
                CsActivity.b0(csActivity.e0());
                csActivity.e0().setText(cloudCredentials != null ? cloudCredentials.getPath() : null);
                csActivity.e0().addTextChangedListener(new n52(csActivity));
                TextInputLayout textInputLayout = (TextInputLayout) gv7Var3.getValue();
                dd1 dd1VarD0 = csActivity.d0();
                dd1 dd1Var = dd1.S3;
                sz8.d0(textInputLayout, dd1VarD0 == dd1Var);
                if (sz8.I((TextInputLayout) gv7Var3.getValue())) {
                    csActivity.w0();
                    csActivity.f0().setSingleLine(true);
                    CsActivity.b0(csActivity.f0());
                    csActivity.f0().setText(cloudCredentials != null ? cloudCredentials.getRegion() : null);
                    csActivity.f0().addTextChangedListener(new o52(csActivity, 0));
                }
                boolean z = csActivity.d0() == dd1Var;
                sz8.d0((TextInputLayout) csActivity.c0.getValue(), z);
                sz8.d0((ImageView) gv7Var8.getValue(), z);
                if (csActivity.d0() == dd1Var) {
                    xq6 xq6Var = xq6.j;
                    ArrayList arrayList10 = xq6.m;
                    xq6 xq6VarE = fo8.e(cloudCredentials != null ? cloudCredentials.getProviderPresetId() : null);
                    if (xq6VarE == null) {
                        xq6VarE = fo8.h(cloudCredentials != null ? cloudCredentials.getServer() : null);
                    }
                    csActivity.H0 = xq6VarE;
                    csActivity.i0().setAdapter(new yq6(csActivity, arrayList10));
                    csActivity.i0().setText((CharSequence) xq6VarE.b, false);
                    y13.D((ImageView) gv7Var8.getValue(), xq6VarE.c, xq6VarE.b, 3.0f);
                    csActivity.i0().setOnClickListener(new h7(csActivity, 7));
                    final int i6 = 1;
                    ((ImageView) gv7Var8.getValue()).setOnClickListener(new View.OnClickListener() { // from class: w42
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i7 = i6;
                            CsActivity csActivity2 = csActivity;
                            switch (i7) {
                                case 0:
                                    int i8 = CsActivity.P0;
                                    view.getClass();
                                    u45 u45Var = new u45(csActivity2, view, 12);
                                    u45Var.f(R.menu.menu_cloud_service);
                                    fc5 fc5Var = (fc5) u45Var.c;
                                    fc5Var.getClass();
                                    int i9 = 0;
                                    while (i9 < fc5Var.f.size()) {
                                        int i10 = i9 + 1;
                                        MenuItem item = fc5Var.getItem(i9);
                                        if (item == null) {
                                            l0.a();
                                        } else {
                                            int itemId = item.getItemId();
                                            if (itemId == R.id.action_save_settings) {
                                                item.setVisible(csActivity2.d0().getAllowSavingSetupDetails());
                                            } else if (itemId == R.id.action_load_settings) {
                                                item.setVisible(csActivity2.d0().getAllowSavingSetupDetails());
                                            }
                                            i9 = i10;
                                        }
                                        break;
                                    }
                                    u45Var.e = new gb(csActivity2, 5);
                                    u45Var.j();
                                    break;
                                default:
                                    int i11 = CsActivity.P0;
                                    csActivity2.i0().showDropDown();
                                    break;
                            }
                        }
                    });
                    csActivity.i0().addTextChangedListener(new k52(csActivity, 0));
                    csActivity.Z(xq6VarE, false);
                }
                boolean z2 = csActivity.d0() == dd1.WebDav;
                sz8.d0((TextInputLayout) csActivity.f0.getValue(), z2);
                sz8.d0((ImageView) gv7Var7.getValue(), z2);
                if (z2) {
                    ArrayList arrayList11 = oq8.m;
                    oq8 oq8VarJ = xh8.j(cloudCredentials != null ? cloudCredentials.getProviderPresetId() : null);
                    if (oq8VarJ == null) {
                        oq8VarJ = xh8.t(cloudCredentials != null ? cloudCredentials.getServer() : null);
                    }
                    csActivity.J0 = oq8VarJ;
                    csActivity.j0().setAdapter(new pq8(csActivity, arrayList11));
                    csActivity.j0().setText((CharSequence) oq8VarJ.b, false);
                    y13.D((ImageView) gv7Var7.getValue(), oq8VarJ.c, oq8VarJ.b, 3.0f);
                    final int i7 = 1;
                    csActivity.j0().setOnClickListener(new View.OnClickListener() { // from class: z42
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i8 = i7;
                            CsActivity csActivity2 = csActivity;
                            switch (i8) {
                                case 0:
                                    int i9 = CsActivity.P0;
                                    ((TextInputEditText) csActivity2.C0.getValue()).setText((CharSequence) null);
                                    break;
                                default:
                                    int i10 = CsActivity.P0;
                                    csActivity2.j0().showDropDown();
                                    break;
                            }
                        }
                    });
                    ((ImageView) gv7Var7.getValue()).setOnClickListener(new View.OnClickListener() { // from class: a52
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            Context context;
                            int i8 = i7;
                            CsActivity csActivity2 = csActivity;
                            switch (i8) {
                                case 0:
                                    int i9 = CsActivity.P0;
                                    MaterialButton materialButton = (MaterialButton) csActivity2.F0.getValue();
                                    InputMethodManager inputMethodManager = (materialButton == null || (context = materialButton.getContext()) == null) ? null : (InputMethodManager) context.getSystemService(InputMethodManager.class);
                                    if (inputMethodManager != null) {
                                        inputMethodManager.hideSoftInputFromWindow(materialButton.getWindowToken(), 0);
                                    }
                                    csActivity2.t0(false, false);
                                    break;
                                default:
                                    int i10 = CsActivity.P0;
                                    csActivity2.j0().showDropDown();
                                    break;
                            }
                        }
                    });
                    csActivity.j0().addTextChangedListener(new mv1(csActivity, i7));
                    csActivity.a0(oq8VarJ, null, false);
                }
                csActivity.v0();
                int i8 = 2;
                ((TextInputEditText) gv7Var6.getValue()).setInputType(2);
                ((TextInputEditText) gv7Var6.getValue()).setText((cloudCredentials == null || (numM77getPort = cloudCredentials.m77getPort()) == null) ? null : String.valueOf(numM77getPort.intValue()));
                ((TextInputEditText) gv7Var6.getValue()).addTextChangedListener(new p52(csActivity, 0));
                sz8.d0((TextView) csActivity.r0.getValue(), csActivity.d0().getShowUrlInSetup());
                sz8.d0((FrameLayout) gv7Var2.getValue(), csActivity.d0() == dd1.SMB);
                if (sz8.I((FrameLayout) gv7Var2.getValue())) {
                    csActivity.k0().y.setChecked(cloudCredentials != null ? pe4.d(cloudCredentials.getEncryption(), Boolean.TRUE) : false);
                    passphrase = null;
                    csActivity.k0().y.setOnCheckedChangeListener(null);
                    csActivity.k0().y.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: x42
                        @Override // android.widget.CompoundButton.OnCheckedChangeListener
                        public final void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
                            int i9 = CsActivity.P0;
                            compoundButton.getClass();
                            CsActivity csActivity2 = csActivity;
                            csActivity2.a0().l(csActivity2.m0());
                        }
                    });
                } else {
                    passphrase = null;
                }
                if (cloudCredentials == null || (authType = cloudCredentials.getAuthType()) == null) {
                    authType = (nc1) el1.S0(csActivity.d0().getAuthTypes());
                }
                csActivity.n0(authType);
                sz8.d0((TextInputLayout) gv7Var.getValue(), csActivity.d0().getAuthTypes().size() > 1);
                if (sz8.I((TextInputLayout) gv7Var.getValue())) {
                    List<nc1> authTypes = csActivity.d0().getAuthTypes();
                    ArrayList arrayList12 = new ArrayList(hl1.G0(authTypes, 10));
                    Iterator<T> it2 = authTypes.iterator();
                    while (it2.hasNext()) {
                        arrayList12.add(((nc1) it2.next()).getDisplayName());
                    }
                    ((AutoCompleteTextView) gv7Var5.getValue()).setAdapter(new ArrayAdapter(csActivity, R.layout.edit_text_dropdown_menu_item, arrayList12));
                    ((AutoCompleteTextView) gv7Var5.getValue()).setText((CharSequence) authType.getDisplayName(), false);
                    ((AutoCompleteTextView) gv7Var5.getValue()).addTextChangedListener(new nb1(csActivity, 1));
                }
                ((TextInputLayout) csActivity.u0.getValue()).setHint(csActivity.d0().getUsernameFieldHint(csActivity));
                CsActivity.b0((TextInputEditText) gv7Var4.getValue());
                ((TextInputEditText) gv7Var4.getValue()).setText(cloudCredentials != null ? cloudCredentials.getUsername() : passphrase);
                ((TextInputEditText) gv7Var4.getValue()).addTextChangedListener(new q52(csActivity, 0));
                TextInputLayout textInputLayout2 = (TextInputLayout) csActivity.w0.getValue();
                textInputLayout2.setHint(csActivity.d0().getPasswordFieldHint(csActivity));
                textInputLayout2.setEndIconMode(1);
                TextInputEditText textInputEditText = (TextInputEditText) csActivity.x0.getValue();
                textInputEditText.setInputType(129);
                sz8.V(textInputEditText);
                textInputEditText.setText(cloudCredentials != null ? cloudCredentials.getPassword() : passphrase);
                textInputEditText.addTextChangedListener(new r52(csActivity, 0));
                TextView textView = csActivity.k0().W;
                dd1 dd1VarD1 = csActivity.d0();
                dd1 dd1Var2 = dd1.CloudMailRu2;
                textView.setVisibility(dd1VarD1 == dd1Var2 ? 0 : 8);
                csActivity.k0().V.setVisibility(csActivity.d0() == dd1Var2 ? 0 : 8);
                TextInputLayout textInputLayout3 = (TextInputLayout) csActivity.B0.getValue();
                textInputLayout3.setHint(R.string.private_key_file);
                textInputLayout3.setEndIconMode(2);
                textInputLayout3.setEndIconDrawable(R.drawable.ic_delete);
                textInputLayout3.setEndIconTintList(sz8.h0(sz8.r(csActivity)));
                TextInputEditText textInputEditText2 = (TextInputEditText) csActivity.C0.getValue();
                textInputEditText2.setTypeface(fm6.a(csActivity, R.font.mono_bold));
                textInputEditText2.setTextColor(sz8.A(csActivity));
                textInputEditText2.setInputType(524289);
                textInputEditText2.setText((cloudCredentials == null || (key2 = cloudCredentials.getKey()) == null) ? passphrase : key2.getKeyString());
                textInputEditText2.addTextChangedListener(new l00(csActivity, 1));
                final int i9 = 0;
                ((View) csActivity.z0.getValue()).setOnClickListener(new View.OnClickListener() { // from class: y42
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        int i10 = i9;
                        CsActivity csActivity2 = csActivity;
                        switch (i10) {
                            case 0:
                                int i11 = CsActivity.P0;
                                Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
                                intent.addCategory("android.intent.category.OPENABLE");
                                intent.setType("*/*");
                                csActivity2.startActivityForResult(intent, 593);
                                break;
                            default:
                                int i12 = CsActivity.P0;
                                Set set = yz4.a;
                                dd1 dd1VarD2 = csActivity2.d0();
                                int i13 = Build.VERSION.SDK_INT;
                                SwiftApp.Companion companion = SwiftApp.d;
                                int i14 = SwiftApp.Companion.c().getApplicationInfo().targetSdkVersion;
                                dd1VarD2.getClass();
                                if (i13 >= 37 && i14 >= 37 && z85.j(dd1VarD2) != null) {
                                    dd1 dd1VarD3 = csActivity2.d0();
                                    dd1VarD3.getClass();
                                    vz4 vz4VarC = yz4.c(null);
                                    String str = vz4VarC != null ? vz4VarC.a : null;
                                    csActivity2.o0((str == null || str.length() == 0) ? eq3.k("Local network permission is required for ", dd1VarD3.getDisplayNameEn(), ".") : eq3.l("Local network permission is required for ", dd1VarD3.getDisplayNameEn(), " server ", str, "."), new v42(csActivity2, 1), new q42(csActivity2, 2));
                                } else {
                                    csActivity2.a0().j();
                                }
                                break;
                        }
                    }
                });
                ((View) csActivity.A0.getValue()).setOnClickListener(new View.OnClickListener() { // from class: z42
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        int i10 = i9;
                        CsActivity csActivity2 = csActivity;
                        switch (i10) {
                            case 0:
                                int i11 = CsActivity.P0;
                                ((TextInputEditText) csActivity2.C0.getValue()).setText((CharSequence) null);
                                break;
                            default:
                                int i12 = CsActivity.P0;
                                csActivity2.j0().showDropDown();
                                break;
                        }
                    }
                });
                TextInputLayout textInputLayout4 = (TextInputLayout) csActivity.D0.getValue();
                textInputLayout4.setHint(csActivity.getString(R.string.private_key_passphrase));
                textInputLayout4.setEndIconMode(1);
                TextInputEditText textInputEditText3 = (TextInputEditText) csActivity.E0.getValue();
                textInputEditText3.setInputType(129);
                sz8.V(textInputEditText3);
                if (cloudCredentials != null && (key = cloudCredentials.getKey()) != null) {
                    passphrase = key.getPassphrase();
                }
                textInputEditText3.setText(passphrase);
                textInputEditText3.addTextChangedListener(new jq1(csActivity, 1));
                csActivity.a0().l(csActivity.m0());
                ((MaterialButton) csActivity.G0.getValue()).setOnClickListener(new es(csActivity, 5));
                final int i10 = 0;
                ((MaterialButton) csActivity.F0.getValue()).setOnClickListener(new View.OnClickListener() { // from class: a52
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        Context context;
                        int i11 = i10;
                        CsActivity csActivity2 = csActivity;
                        switch (i11) {
                            case 0:
                                int i12 = CsActivity.P0;
                                MaterialButton materialButton = (MaterialButton) csActivity2.F0.getValue();
                                InputMethodManager inputMethodManager = (materialButton == null || (context = materialButton.getContext()) == null) ? null : (InputMethodManager) context.getSystemService(InputMethodManager.class);
                                if (inputMethodManager != null) {
                                    inputMethodManager.hideSoftInputFromWindow(materialButton.getWindowToken(), 0);
                                }
                                csActivity2.t0(false, false);
                                break;
                            default:
                                int i13 = CsActivity.P0;
                                csActivity2.j0().showDropDown();
                                break;
                        }
                    }
                });
                m86 m86Var = csActivity.k0().r;
                ImageView imageView2 = (ImageView) m86Var.c;
                MaterialCardView materialCardView = (MaterialCardView) m86Var.e;
                dd1 dd1VarD2 = csActivity.d0();
                dd1VarD2.getClass();
                if (z85.j(dd1VarD2) != null) {
                    csActivity.M0 = false;
                    imageView2.setImageResource(R.drawable.ic_search);
                    imageView2.setImageTintList(sz8.h0(csActivity.getColor(sz8.y(csActivity, R.attr.colorOnPrimaryContainer))));
                    ((TextView) m86Var.n).setText(csActivity.getString(R.string.local_server_scan_title, csActivity.d0().getDisplayName()));
                    ((TextView) m86Var.k).setText(csActivity.getString(R.string.local_server_scan_subtitle));
                    final int i11 = 1;
                    materialCardView.setOnClickListener(new View.OnClickListener() { // from class: y42
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i12 = i11;
                            CsActivity csActivity2 = csActivity;
                            switch (i12) {
                                case 0:
                                    int i13 = CsActivity.P0;
                                    Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
                                    intent.addCategory("android.intent.category.OPENABLE");
                                    intent.setType("*/*");
                                    csActivity2.startActivityForResult(intent, 593);
                                    break;
                                default:
                                    int i14 = CsActivity.P0;
                                    Set set = yz4.a;
                                    dd1 dd1VarD3 = csActivity2.d0();
                                    int i15 = Build.VERSION.SDK_INT;
                                    SwiftApp.Companion companion = SwiftApp.d;
                                    int i16 = SwiftApp.Companion.c().getApplicationInfo().targetSdkVersion;
                                    dd1VarD3.getClass();
                                    if (i15 >= 37 && i16 >= 37 && z85.j(dd1VarD3) != null) {
                                        dd1 dd1VarD4 = csActivity2.d0();
                                        dd1VarD4.getClass();
                                        vz4 vz4VarC = yz4.c(null);
                                        String str = vz4VarC != null ? vz4VarC.a : null;
                                        csActivity2.o0((str == null || str.length() == 0) ? eq3.k("Local network permission is required for ", dd1VarD4.getDisplayNameEn(), ".") : eq3.l("Local network permission is required for ", dd1VarD4.getDisplayNameEn(), " server ", str, "."), new v42(csActivity2, 1), new q42(csActivity2, 2));
                                    } else {
                                        csActivity2.a0().j();
                                    }
                                    break;
                            }
                        }
                    });
                    csActivity.u0(pe4.d(csActivity.a0().u.d(), Boolean.TRUE));
                    i = 0;
                    materialCardView.setVisibility(0);
                } else {
                    i = 0;
                    materialCardView.setVisibility(8);
                }
                csActivity.a0().h.e(csActivity, new s30(i8, new u42(csActivity, i)));
                csActivity.a0().j.e(csActivity, new s30(i8, new zs(csActivity, 6)));
                csActivity.a0().k.e(csActivity, new s30(i8, new lm(csActivity, 8)));
                csActivity.a0().n.e(csActivity, new s30(i8, new w20(csActivity, i5)));
                csActivity.a0().l.e(csActivity, new s30(i8, new c7(csActivity, 14)));
                csActivity.a0().m.e(csActivity, new s30(i8, new hl0(1, csActivity, CsActivity.class, "showSmbDataEncryptionRequiredDialog", "showSmbDataEncryptionRequiredDialog(Ljava/lang/String;)V", 0, 1)));
                csActivity.a0().o.e(csActivity, new s30(i8, new v42(csActivity, 0)));
                csActivity.a0().i.e(csActivity, new s30(i8, new k3(csActivity, i5)));
                csActivity.a0().p.e(csActivity, new s30(i8, new hj(csActivity, 11)));
                int i12 = 0;
                int i13 = 1;
                csActivity.a0().q.e(csActivity, new s30(i8, new zd1(i13, csActivity, CsActivity.class, "showHostKeyNotVerifiable", "showHostKeyNotVerifiable(Lorg/swiftapps/swiftbackup/cloud/connect/CsVM$HostKeyNotVerifiableData;)V", i12, 1)));
                int i14 = 2;
                csActivity.a0().s.e(csActivity, new s30(i8, new ae1(i13, csActivity, CsActivity.class, "showS3EndpointResolutionIssueDialog", "showS3EndpointResolutionIssueDialog(Lorg/swiftapps/swiftbackup/cloud/connect/CsVM$S3EndpointResolutionIssueData;)V", i12, i14)));
                csActivity.a0().r.e(csActivity, new s30(i8, new ox(csActivity, 9)));
                csActivity.a0().t.e(csActivity, new s30(i8, new g70(i13, csActivity, CsActivity.class, "showLocalServerDiscoveryCard", "showLocalServerDiscoveryCard(Ljava/util/List;)V", i12, i14)));
                csActivity.a0().u.e(csActivity, new s30(i8, new s52(i13, csActivity, CsActivity.class, "updateLocalServerDiscoveryScanLoading", "updateLocalServerDiscoveryScanLoading(Z)V", i12, 0)));
                return be8Var;
            case 1:
                return Boolean.valueOf(Const.B(((x92) obj2).l(), ((NoticeItem) obj).getMessage()));
            case 2:
                o23 o23Var = (o23) obj2;
                String str = (String) obj;
                if (!o23Var.r(str)) {
                    List<String> listX0 = nq7.x0(nq7.I0(str, '/'), new String[]{"/"}, 6);
                    if (listX0.size() > 1) {
                        int i15 = 0;
                        for (String str2 : listX0) {
                            int i16 = i15 + 1;
                            strK = i15 == 0 ? str2 : dj7.k(strK, "/", str2);
                            if (!o23Var.r(strK)) {
                                String strG = o23Var.G(strK);
                                d23 d23VarZ = o23Var.z(false);
                                if (!k55.x(d23VarZ.m("MKD", strG)) && !o23Var.r(strK)) {
                                    g84.f(dj7.l("createDirectory: Failed creating directory=", strG, ". Reply=", d23VarZ.i()));
                                    return null;
                                }
                            }
                            i15 = i16;
                        }
                    } else {
                        String strG2 = o23Var.G(str);
                        d23 d23VarZ2 = o23Var.z(false);
                        if (!k55.x(d23VarZ2.m("MKD", strG2)) && !o23Var.r(str)) {
                            g84.f(dj7.l("createDirectory: Failed creating directory=", strG2, ". Reply=", d23VarZ2.i()));
                            return null;
                        }
                    }
                }
                return be8Var;
            case 3:
                int i17 = FolderDetailActivity.Z;
                zn4.c(new kg(i3, ((FolderDetailActivity) obj2).U(), (uy7) obj));
                return be8Var;
            case 4:
                zn7 zn7Var = (zn7) obj2;
                return new hn3(zn7Var, ((in3) obj).l(), zn7Var.n());
            case 5:
                qp3 qp3Var = (qp3) obj2;
                qp3Var.o.k((FolderItem) obj);
                qp3Var.l();
                return be8Var;
            case 6:
                br2 br2Var = ((b82) obj2).h;
                br2Var.getClass();
                String str3 = ((zx3) obj).a.f;
                return br2Var.g(str3 != null ? str3 : "").k.a();
            case 7:
                c64 c64Var = (c64) obj;
                Boolean bool = (Boolean) ((eb2) obj2).c(Boolean.TYPE);
                boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
                ix6 ix6Var = c64.l;
                c64Var.j(zBooleanValue);
                return be8Var;
            case 8:
                ((MessagesBackupRestoreActivity) obj2).U().c(ff5.class, (ff5) obj);
                return be8Var;
            case XmlPullParser.COMMENT /* 9 */:
                int i18 = MessagesDashActivity.T;
                ((MessagesDashActivity) obj2).F().j((ArrayList) obj, false);
                return be8Var;
            case 10:
                ai6 ai6Var = (ai6) obj2;
                CharSequence charSequence = (CharSequence) obj;
                ai6Var.getClass();
                charSequence.getClass();
                Matcher matcher = ai6Var.a.matcher(charSequence);
                matcher.getClass();
                if (matcher.find(0)) {
                    return new u75(matcher, charSequence);
                }
                return null;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                String str4 = (String) obj2;
                q47 q47Var = (q47) obj;
                ScheduleData scheduleDataC = c47.a.c();
                List<ScheduleItem.AppsQuickActions> appsQuickActionSchedules = scheduleDataC.getAppsQuickActionSchedules();
                if (appsQuickActionSchedules != null) {
                    ArrayList arrayList13 = new ArrayList();
                    for (Object obj3 : appsQuickActionSchedules) {
                        if (!pe4.d(((ScheduleItem.AppsQuickActions) obj3).getItemId(), str4)) {
                            arrayList13.add(obj3);
                        }
                    }
                    arrayList = arrayList13;
                } else {
                    arrayList = null;
                }
                List<ScheduleItem.AppsLabels> appsLabelSchedules = scheduleDataC.getAppsLabelSchedules();
                if (appsLabelSchedules != null) {
                    ArrayList arrayList14 = new ArrayList();
                    for (Object obj4 : appsLabelSchedules) {
                        if (!pe4.d(((ScheduleItem.AppsLabels) obj4).getItemId(), str4)) {
                            arrayList14.add(obj4);
                        }
                    }
                    arrayList2 = arrayList14;
                } else {
                    arrayList2 = null;
                }
                List<ScheduleItem.AppConfig> appConfigSchedules = scheduleDataC.getAppConfigSchedules();
                if (appConfigSchedules != null) {
                    ArrayList arrayList15 = new ArrayList();
                    for (Object obj5 : appConfigSchedules) {
                        if (!pe4.d(((ScheduleItem.AppConfig) obj5).getItemId(), str4)) {
                            arrayList15.add(obj5);
                        }
                    }
                    arrayList3 = arrayList15;
                } else {
                    arrayList3 = null;
                }
                List<ScheduleItem.Messages> messagesSchedules = scheduleDataC.getMessagesSchedules();
                if (messagesSchedules != null) {
                    ArrayList arrayList16 = new ArrayList();
                    for (Object obj6 : messagesSchedules) {
                        if (!pe4.d(((ScheduleItem.Messages) obj6).getItemId(), str4)) {
                            arrayList16.add(obj6);
                        }
                    }
                    arrayList4 = arrayList16;
                } else {
                    arrayList4 = null;
                }
                List<ScheduleItem.CallLogs> callLogsSchedules = scheduleDataC.getCallLogsSchedules();
                if (callLogsSchedules != null) {
                    ArrayList arrayList17 = new ArrayList();
                    for (Object obj7 : callLogsSchedules) {
                        if (!pe4.d(((ScheduleItem.CallLogs) obj7).getItemId(), str4)) {
                            arrayList17.add(obj7);
                        }
                    }
                    arrayList5 = arrayList17;
                } else {
                    arrayList5 = null;
                }
                List<ScheduleItem.Wallpapers> wallsSchedules = scheduleDataC.getWallsSchedules();
                if (wallsSchedules != null) {
                    ArrayList arrayList18 = new ArrayList();
                    for (Object obj8 : wallsSchedules) {
                        if (!pe4.d(((ScheduleItem.Wallpapers) obj8).getItemId(), str4)) {
                            arrayList18.add(obj8);
                        }
                    }
                    arrayList6 = arrayList18;
                } else {
                    arrayList6 = null;
                }
                List<ScheduleItem.Wifi> wifiSchedules = scheduleDataC.getWifiSchedules();
                if (wifiSchedules != null) {
                    ArrayList arrayList19 = new ArrayList();
                    for (Object obj9 : wifiSchedules) {
                        if (!pe4.d(((ScheduleItem.Wifi) obj9).getItemId(), str4)) {
                            arrayList19.add(obj9);
                        }
                    }
                    arrayList7 = arrayList19;
                } else {
                    arrayList7 = null;
                }
                List<ScheduleItem.Folders> foldersSchedules = scheduleDataC.getFoldersSchedules();
                if (foldersSchedules != null) {
                    arrayList8 = new ArrayList();
                    for (Object obj10 : foldersSchedules) {
                        if (!pe4.d(((ScheduleItem.Folders) obj10).getItemId(), str4)) {
                            arrayList8.add(obj10);
                        }
                    }
                }
                q47.k(q47Var, ScheduleData.copy$default(scheduleDataC, 0, 0, 0, null, arrayList, arrayList2, arrayList3, arrayList4, arrayList5, arrayList6, arrayList7, arrayList8, null, 4111, null).withScheduleDeleted(str4));
                return be8Var;
            default:
                ao8 ao8Var = (ao8) obj;
                ao8 ao8Var2 = WallApplyActivity.O;
                co8 co8VarO = ((WallApplyActivity) obj2).U();
                List listI = nc8.I(ao8Var.a);
                String strV = ao8Var.a.a.v();
                String str5 = ry5.u;
                boolean Z = nq7.Z(strV, qy5.f(false, null).r, false);
                zn4 zn4Var = zn4.a;
                zn4.b(null, new bo8(Z, co8VarO, listI, null));
                return be8Var;
        }
    }
}
