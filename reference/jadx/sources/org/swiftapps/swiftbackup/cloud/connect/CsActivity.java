package org.swiftapps.swiftbackup.cloud.connect;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.style.StyleSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AutoCompleteTextView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import defpackage.ai6;
import defpackage.bt3;
import defpackage.cv;
import defpackage.dd1;
import defpackage.dz5;
import defpackage.e52;
import defpackage.eq3;
import defpackage.er6;
import defpackage.f52;
import defpackage.fd1;
import defpackage.gc1;
import defpackage.gv7;
import defpackage.h52;
import defpackage.j52;
import defpackage.l90;
import defpackage.m62;
import defpackage.m86;
import defpackage.mp6;
import defpackage.n42;
import defpackage.na1;
import defpackage.nc1;
import defpackage.nq7;
import defpackage.nq8;
import defpackage.ns;
import defpackage.o30;
import defpackage.o42;
import defpackage.oq8;
import defpackage.pe4;
import defpackage.ph6;
import defpackage.q;
import defpackage.q42;
import defpackage.sz8;
import defpackage.t52;
import defpackage.u52;
import defpackage.uq7;
import defpackage.v42;
import defpackage.vi1;
import defpackage.vr6;
import defpackage.vz4;
import defpackage.wq6;
import defpackage.xq6;
import defpackage.y13;
import defpackage.y2;
import defpackage.yz4;
import defpackage.z20;
import defpackage.z85;
import defpackage.zh8;
import defpackage.zm5;
import defpackage.zn4;
import java.util.Iterator;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;
import org.swiftapps.swiftbackup.cloud.protocols.CloudCredentials;
import org.swiftapps.swiftbackup.cloud.protocols.CloudServiceId;
import org.swiftapps.swiftbackup.views.SwiftBackupMaterialSwitch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class CsActivity extends er6 {
    public static final /* synthetic */ int P0 = 0;
    public final gv7 A0;
    public final gv7 B0;
    public final gv7 C0;
    public final gv7 D0;
    public final gv7 E0;
    public final gv7 F0;
    public final gv7 G0;
    public boolean I0;
    public boolean K0;
    public boolean L0;
    public boolean M0;
    public boolean N0;
    public CloudCredentials O0;
    public final gv7 Y;
    public final gv7 Z;
    public final gv7 a0;
    public final gv7 b0;
    public final gv7 c0;
    public final gv7 d0;
    public final gv7 e0;
    public final gv7 f0;
    public final gv7 g0;
    public final gv7 h0;
    public final gv7 i0;
    public final gv7 j0;
    public final gv7 k0;
    public final gv7 l0;
    public final gv7 m0;
    public final gv7 n0;
    public final gv7 o0;
    public final gv7 p0;
    public final gv7 q0;
    public final gv7 r0;
    public final gv7 s0;
    public final gv7 t0;
    public final gv7 u0;
    public final gv7 v0;
    public final gv7 w0;
    public final gv7 x0;
    public final gv7 y0;
    public final gv7 z0;
    public final l90 X = new l90(ph6.a(m62.class), new z20(this, 6), new ns(this, 11), new o30(this, 4));
    public xq6 H0 = xq6.j;
    public oq8 J0 = oq8.i;

    public CsActivity() {
        final int i = 0;
        this.Y = new gv7(new bt3(this) { // from class: h42
            public final /* synthetic */ CsActivity b;

            {
                this.b = this;
            }

            /* JADX WARN: Code duplicated, block: B:124:0x038e A[PHI: r1
              0x038e: PHI (r1v17 int) = (r1v16 int), (r1v18 int), (r1v19 int), (r1v20 int), (r1v21 int) binds: [B:33:0x00c1, B:35:0x00ce, B:37:0x00df, B:39:0x00ec, B:41:0x00f9] A[DONT_GENERATE, DONT_INLINE]] */
            /* JADX WARN: Code duplicated, block: B:125:0x039f A[PHI: r1
              0x039f: PHI (r1v4 int) = 
              (r1v3 int)
              (r1v5 int)
              (r1v6 int)
              (r1v7 int)
              (r1v8 int)
              (r1v9 int)
              (r1v10 int)
              (r1v11 int)
              (r1v12 int)
              (r1v13 int)
              (r1v14 int)
              (r1v15 int)
              (r1v22 int)
              (r1v23 int)
              (r1v24 int)
              (r1v25 int)
              (r1v26 int)
              (r1v27 int)
              (r1v29 int)
              (r1v30 int)
              (r1v32 int)
              (r1v37 int)
              (r1v42 int)
              (r1v43 int)
              (r1v47 int)
              (r1v49 int)
              (r1v54 int)
              (r1v58 int)
              (r1v59 int)
              (r1v60 int)
              (r1v61 int)
              (r1v62 int)
              (r1v63 int)
              (r1v64 int)
              (r1v65 int)
              (r1v66 int)
              (r1v67 int)
              (r1v68 int)
             binds: [B:9:0x0039, B:11:0x0045, B:13:0x0051, B:15:0x005a, B:17:0x0063, B:19:0x006f, B:21:0x007a, B:23:0x0086, B:25:0x0092, B:27:0x009e, B:29:0x00ab, B:31:0x00b4, B:43:0x010f, B:45:0x011c, B:47:0x0129, B:49:0x0136, B:51:0x0143, B:53:0x014c, B:122:0x037b, B:120:0x0369, B:65:0x0199, B:117:0x0344, B:73:0x01da, B:75:0x01e3, B:79:0x0202, B:114:0x0319, B:85:0x022d, B:89:0x0252, B:91:0x025f, B:93:0x026c, B:95:0x0279, B:97:0x0286, B:99:0x0293, B:101:0x02a0, B:103:0x02ad, B:105:0x02ba, B:107:0x02c7, B:109:0x02d4] A[DONT_GENERATE, DONT_INLINE]] */
            @Override // defpackage.bt3
            public final Object invoke() {
                int i2 = i;
                CsActivity csActivity = this.b;
                switch (i2) {
                    case 0:
                        int i3 = CsActivity.P0;
                        View viewInflate = csActivity.getLayoutInflater().inflate(R.layout.cs_activity, (ViewGroup) null, false);
                        int i4 = R.id.auth_header;
                        if (((LinearLayout) ms8.u(viewInflate, R.id.auth_header)) != null) {
                            i4 = R.id.btn_connect_cloud;
                            MaterialButton materialButton = (MaterialButton) ms8.u(viewInflate, R.id.btn_connect_cloud);
                            if (materialButton != null) {
                                i4 = R.id.btn_test_connect;
                                MaterialButton materialButton2 = (MaterialButton) ms8.u(viewInflate, R.id.btn_test_connect);
                                if (materialButton2 != null) {
                                    i4 = R.id.click_listener_key_clear;
                                    View viewU = ms8.u(viewInflate, R.id.click_listener_key_clear);
                                    if (viewU != null) {
                                        i4 = R.id.click_listener_key_file;
                                        View viewU2 = ms8.u(viewInflate, R.id.click_listener_key_file);
                                        if (viewU2 != null) {
                                            i4 = R.id.container_key_file;
                                            LinearLayout linearLayout = (LinearLayout) ms8.u(viewInflate, R.id.container_key_file);
                                            if (linearLayout != null) {
                                                i4 = R.id.custom_action_bar;
                                                if (((ConstraintLayout) ms8.u(viewInflate, R.id.custom_action_bar)) != null) {
                                                    i4 = R.id.iv_icon;
                                                    ImageView imageView = (ImageView) ms8.u(viewInflate, R.id.iv_icon);
                                                    if (imageView != null) {
                                                        i4 = R.id.iv_menu;
                                                        ImageView imageView2 = (ImageView) ms8.u(viewInflate, R.id.iv_menu);
                                                        if (imageView2 != null) {
                                                            i4 = R.id.iv_s3_preset_icon;
                                                            ImageView imageView3 = (ImageView) ms8.u(viewInflate, R.id.iv_s3_preset_icon);
                                                            if (imageView3 != null) {
                                                                i4 = R.id.iv_webdav_preset_icon;
                                                                ImageView imageView4 = (ImageView) ms8.u(viewInflate, R.id.iv_webdav_preset_icon);
                                                                if (imageView4 != null) {
                                                                    i4 = R.id.local_server_discovery_card;
                                                                    View viewU3 = ms8.u(viewInflate, R.id.local_server_discovery_card);
                                                                    if (viewU3 != null) {
                                                                        int i5 = R.id.iv_local_server_discovery;
                                                                        ImageView imageView5 = (ImageView) ms8.u(viewU3, R.id.iv_local_server_discovery);
                                                                        if (imageView5 != null) {
                                                                            i5 = R.id.iv_local_server_discovery_chevron;
                                                                            ImageView imageView6 = (ImageView) ms8.u(viewU3, R.id.iv_local_server_discovery_chevron);
                                                                            if (imageView6 != null) {
                                                                                MaterialCardView materialCardView = (MaterialCardView) viewU3;
                                                                                i5 = R.id.pb_local_server_discovery;
                                                                                ProgressBar progressBar = (ProgressBar) ms8.u(viewU3, R.id.pb_local_server_discovery);
                                                                                if (progressBar != null) {
                                                                                    i5 = R.id.tv_local_server_discovery_subtitle;
                                                                                    TextView textView = (TextView) ms8.u(viewU3, R.id.tv_local_server_discovery_subtitle);
                                                                                    if (textView != null) {
                                                                                        i5 = R.id.tv_local_server_discovery_title;
                                                                                        TextView textView2 = (TextView) ms8.u(viewU3, R.id.tv_local_server_discovery_title);
                                                                                        if (textView2 != null) {
                                                                                            m86 m86Var = new m86(materialCardView, imageView5, imageView6, materialCardView, progressBar, textView, textView2, 1);
                                                                                            i4 = R.id.scroll_view;
                                                                                            NestedScrollView nestedScrollView = (NestedScrollView) ms8.u(viewInflate, R.id.scroll_view);
                                                                                            if (nestedScrollView != null) {
                                                                                                i4 = R.id.server_container;
                                                                                                LinearLayout linearLayout2 = (LinearLayout) ms8.u(viewInflate, R.id.server_container);
                                                                                                if (linearLayout2 != null) {
                                                                                                    i4 = R.id.switch_encryption;
                                                                                                    SwiftBackupMaterialSwitch swiftBackupMaterialSwitch = (SwiftBackupMaterialSwitch) ms8.u(viewInflate, R.id.switch_encryption);
                                                                                                    if (swiftBackupMaterialSwitch != null) {
                                                                                                        i4 = R.id.switch_encryption_container;
                                                                                                        FrameLayout frameLayout = (FrameLayout) ms8.u(viewInflate, R.id.switch_encryption_container);
                                                                                                        if (frameLayout != null) {
                                                                                                            i4 = R.id.til_auth_type;
                                                                                                            TextInputLayout textInputLayout = (TextInputLayout) ms8.u(viewInflate, R.id.til_auth_type);
                                                                                                            if (textInputLayout != null) {
                                                                                                                i4 = R.id.til_key_file;
                                                                                                                View viewU4 = ms8.u(viewInflate, R.id.til_key_file);
                                                                                                                if (viewU4 == null) {
                                                                                                                    f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
                                                                                                                } else {
                                                                                                                    TextInputEditText textInputEditText = (TextInputEditText) ms8.u(viewU4, R.id.et);
                                                                                                                    if (textInputEditText != null) {
                                                                                                                        TextInputLayout textInputLayout2 = (TextInputLayout) viewU4;
                                                                                                                        u00 u00Var = new u00(1, textInputLayout2, textInputEditText, textInputLayout2);
                                                                                                                        View viewU5 = ms8.u(viewInflate, R.id.til_key_passphrase);
                                                                                                                        if (viewU5 != null) {
                                                                                                                            TextInputEditText textInputEditText2 = (TextInputEditText) ms8.u(viewU5, R.id.et);
                                                                                                                            if (textInputEditText2 != null) {
                                                                                                                                TextInputLayout textInputLayout3 = (TextInputLayout) viewU5;
                                                                                                                                d62 d62Var = new d62(textInputLayout3, textInputEditText2, textInputLayout3, 0);
                                                                                                                                View viewU6 = ms8.u(viewInflate, R.id.til_password);
                                                                                                                                if (viewU6 != null) {
                                                                                                                                    TextInputEditText textInputEditText3 = (TextInputEditText) ms8.u(viewU6, R.id.et);
                                                                                                                                    if (textInputEditText3 != null) {
                                                                                                                                        TextInputLayout textInputLayout4 = (TextInputLayout) viewU6;
                                                                                                                                        dr drVar = new dr(textInputLayout4, textInputEditText3, textInputLayout4, 1);
                                                                                                                                        i4 = R.id.til_path;
                                                                                                                                        View viewU7 = ms8.u(viewInflate, R.id.til_path);
                                                                                                                                        if (viewU7 != null) {
                                                                                                                                            TextInputEditText textInputEditText4 = (TextInputEditText) ms8.u(viewU7, R.id.et);
                                                                                                                                            if (textInputEditText4 != null) {
                                                                                                                                                TextInputLayout textInputLayout5 = (TextInputLayout) viewU7;
                                                                                                                                                bp0 bp0Var = new bp0(textInputLayout5, textInputEditText4, textInputLayout5);
                                                                                                                                                View viewU8 = ms8.u(viewInflate, R.id.til_port);
                                                                                                                                                if (viewU8 != null) {
                                                                                                                                                    TextInputEditText textInputEditText5 = (TextInputEditText) ms8.u(viewU8, R.id.et);
                                                                                                                                                    if (textInputEditText5 != null) {
                                                                                                                                                        TextInputLayout textInputLayout6 = (TextInputLayout) viewU8;
                                                                                                                                                        ny1 ny1Var = new ny1(5, textInputLayout6, textInputEditText5, textInputLayout6);
                                                                                                                                                        i4 = R.id.til_protocol;
                                                                                                                                                        TextInputLayout textInputLayout7 = (TextInputLayout) ms8.u(viewInflate, R.id.til_protocol);
                                                                                                                                                        if (textInputLayout7 != null) {
                                                                                                                                                            i4 = R.id.til_region;
                                                                                                                                                            View viewU9 = ms8.u(viewInflate, R.id.til_region);
                                                                                                                                                            if (viewU9 != null) {
                                                                                                                                                                TextInputEditText textInputEditText6 = (TextInputEditText) ms8.u(viewU9, R.id.et);
                                                                                                                                                                if (textInputEditText6 != null) {
                                                                                                                                                                    TextInputLayout textInputLayout8 = (TextInputLayout) viewU9;
                                                                                                                                                                    u94 u94Var = new u94(textInputLayout8, textInputEditText6, textInputLayout8);
                                                                                                                                                                    i4 = R.id.til_s3_provider;
                                                                                                                                                                    TextInputLayout textInputLayout9 = (TextInputLayout) ms8.u(viewInflate, R.id.til_s3_provider);
                                                                                                                                                                    if (textInputLayout9 != null) {
                                                                                                                                                                        View viewU10 = ms8.u(viewInflate, R.id.til_server);
                                                                                                                                                                        if (viewU10 != null) {
                                                                                                                                                                            TextInputEditText textInputEditText7 = (TextInputEditText) ms8.u(viewU10, R.id.et);
                                                                                                                                                                            if (textInputEditText7 != null) {
                                                                                                                                                                                TextInputLayout textInputLayout10 = (TextInputLayout) viewU10;
                                                                                                                                                                                e41 e41Var = new e41(1, textInputLayout10, textInputEditText7, textInputLayout10);
                                                                                                                                                                                i4 = R.id.til_username;
                                                                                                                                                                                View viewU11 = ms8.u(viewInflate, R.id.til_username);
                                                                                                                                                                                if (viewU11 != null) {
                                                                                                                                                                                    TextInputEditText textInputEditText8 = (TextInputEditText) ms8.u(viewU11, R.id.et);
                                                                                                                                                                                    if (textInputEditText8 != null) {
                                                                                                                                                                                        TextInputLayout textInputLayout11 = (TextInputLayout) viewU11;
                                                                                                                                                                                        s02 s02Var = new s02();
                                                                                                                                                                                        s02Var.a = textInputLayout11;
                                                                                                                                                                                        s02Var.b = textInputEditText8;
                                                                                                                                                                                        s02Var.c = textInputLayout11;
                                                                                                                                                                                        i4 = R.id.til_webdav_provider;
                                                                                                                                                                                        TextInputLayout textInputLayout12 = (TextInputLayout) ms8.u(viewInflate, R.id.til_webdav_provider);
                                                                                                                                                                                        if (textInputLayout12 != null) {
                                                                                                                                                                                            i4 = R.id.tv_auth_type;
                                                                                                                                                                                            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) ms8.u(viewInflate, R.id.tv_auth_type);
                                                                                                                                                                                            if (autoCompleteTextView != null) {
                                                                                                                                                                                                i4 = R.id.tv_authentication_title;
                                                                                                                                                                                                TextView textView3 = (TextView) ms8.u(viewInflate, R.id.tv_authentication_title);
                                                                                                                                                                                                if (textView3 != null) {
                                                                                                                                                                                                    i4 = R.id.tv_cloudmailru_password_note;
                                                                                                                                                                                                    TextView textView4 = (TextView) ms8.u(viewInflate, R.id.tv_cloudmailru_password_note);
                                                                                                                                                                                                    if (textView4 != null) {
                                                                                                                                                                                                        i4 = R.id.tv_cloudmailru_storage_plan_note;
                                                                                                                                                                                                        TextView textView5 = (TextView) ms8.u(viewInflate, R.id.tv_cloudmailru_storage_plan_note);
                                                                                                                                                                                                        if (textView5 != null) {
                                                                                                                                                                                                            i4 = R.id.tv_leave_blank_anonymoous;
                                                                                                                                                                                                            TextView textView6 = (TextView) ms8.u(viewInflate, R.id.tv_leave_blank_anonymoous);
                                                                                                                                                                                                            if (textView6 != null) {
                                                                                                                                                                                                                i4 = R.id.tv_protocol;
                                                                                                                                                                                                                AutoCompleteTextView autoCompleteTextView2 = (AutoCompleteTextView) ms8.u(viewInflate, R.id.tv_protocol);
                                                                                                                                                                                                                if (autoCompleteTextView2 != null) {
                                                                                                                                                                                                                    i4 = R.id.tv_s3_provider;
                                                                                                                                                                                                                    AutoCompleteTextView autoCompleteTextView3 = (AutoCompleteTextView) ms8.u(viewInflate, R.id.tv_s3_provider);
                                                                                                                                                                                                                    if (autoCompleteTextView3 != null) {
                                                                                                                                                                                                                        i4 = R.id.tv_title;
                                                                                                                                                                                                                        TextView textView7 = (TextView) ms8.u(viewInflate, R.id.tv_title);
                                                                                                                                                                                                                        if (textView7 != null) {
                                                                                                                                                                                                                            i4 = R.id.tv_url;
                                                                                                                                                                                                                            TextView textView8 = (TextView) ms8.u(viewInflate, R.id.tv_url);
                                                                                                                                                                                                                            if (textView8 != null) {
                                                                                                                                                                                                                                i4 = R.id.tv_webdav_provider;
                                                                                                                                                                                                                                AutoCompleteTextView autoCompleteTextView4 = (AutoCompleteTextView) ms8.u(viewInflate, R.id.tv_webdav_provider);
                                                                                                                                                                                                                                if (autoCompleteTextView4 != null) {
                                                                                                                                                                                                                                    return new t52((ConstraintLayout) viewInflate, materialButton, materialButton2, viewU, viewU2, linearLayout, imageView, imageView2, imageView3, imageView4, m86Var, nestedScrollView, linearLayout2, swiftBackupMaterialSwitch, frameLayout, textInputLayout, u00Var, d62Var, drVar, bp0Var, ny1Var, textInputLayout7, u94Var, textInputLayout9, e41Var, s02Var, textInputLayout12, autoCompleteTextView, textView3, textView4, textView5, textView6, autoCompleteTextView2, autoCompleteTextView3, textView7, textView8, autoCompleteTextView4);
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                            }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                }
                                                                                                                                                                                                            }
                                                                                                                                                                                                        }
                                                                                                                                                                                                    }
                                                                                                                                                                                                }
                                                                                                                                                                                            }
                                                                                                                                                                                        }
                                                                                                                                                                                    } else {
                                                                                                                                                                                        f6.n("Missing required view with ID: ".concat(viewU11.getResources().getResourceName(R.id.et)));
                                                                                                                                                                                    }
                                                                                                                                                                                }
                                                                                                                                                                            } else {
                                                                                                                                                                                f6.n("Missing required view with ID: ".concat(viewU10.getResources().getResourceName(R.id.et)));
                                                                                                                                                                            }
                                                                                                                                                                        } else {
                                                                                                                                                                            i4 = R.id.til_server;
                                                                                                                                                                        }
                                                                                                                                                                    }
                                                                                                                                                                } else {
                                                                                                                                                                    f6.n("Missing required view with ID: ".concat(viewU9.getResources().getResourceName(R.id.et)));
                                                                                                                                                                }
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                    } else {
                                                                                                                                                        f6.n("Missing required view with ID: ".concat(viewU8.getResources().getResourceName(R.id.et)));
                                                                                                                                                    }
                                                                                                                                                } else {
                                                                                                                                                    i4 = R.id.til_port;
                                                                                                                                                }
                                                                                                                                            } else {
                                                                                                                                                f6.n("Missing required view with ID: ".concat(viewU7.getResources().getResourceName(R.id.et)));
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    } else {
                                                                                                                                        f6.n("Missing required view with ID: ".concat(viewU6.getResources().getResourceName(R.id.et)));
                                                                                                                                    }
                                                                                                                                } else {
                                                                                                                                    i4 = R.id.til_password;
                                                                                                                                }
                                                                                                                            } else {
                                                                                                                                f6.n("Missing required view with ID: ".concat(viewU5.getResources().getResourceName(R.id.et)));
                                                                                                                            }
                                                                                                                        } else {
                                                                                                                            i4 = R.id.til_key_passphrase;
                                                                                                                        }
                                                                                                                        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
                                                                                                                    } else {
                                                                                                                        f6.n("Missing required view with ID: ".concat(viewU4.getResources().getResourceName(R.id.et)));
                                                                                                                    }
                                                                                                                }
                                                                                                            } else {
                                                                                                                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
                                                                                                            }
                                                                                                        } else {
                                                                                                            f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
                                                                                                        }
                                                                                                    } else {
                                                                                                        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
                                                                                                    }
                                                                                                } else {
                                                                                                    f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
                                                                                                }
                                                                                            } else {
                                                                                                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
                                                                                            }
                                                                                        } else {
                                                                                            f6.n("Missing required view with ID: ".concat(viewU3.getResources().getResourceName(i5)));
                                                                                        }
                                                                                    } else {
                                                                                        f6.n("Missing required view with ID: ".concat(viewU3.getResources().getResourceName(i5)));
                                                                                    }
                                                                                } else {
                                                                                    f6.n("Missing required view with ID: ".concat(viewU3.getResources().getResourceName(i5)));
                                                                                }
                                                                            } else {
                                                                                f6.n("Missing required view with ID: ".concat(viewU3.getResources().getResourceName(i5)));
                                                                            }
                                                                        } else {
                                                                            f6.n("Missing required view with ID: ".concat(viewU3.getResources().getResourceName(i5)));
                                                                        }
                                                                    } else {
                                                                        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
                                                                    }
                                                                } else {
                                                                    f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
                                                                }
                                                            } else {
                                                                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
                                                            }
                                                        } else {
                                                            f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
                                                        }
                                                    } else {
                                                        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
                                                    }
                                                } else {
                                                    f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
                                                }
                                            } else {
                                                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
                                            }
                                        } else {
                                            f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
                                        }
                                    } else {
                                        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
                                    }
                                } else {
                                    f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
                                }
                            } else {
                                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
                            }
                        } else {
                            f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
                        }
                        return null;
                    case 1:
                        int i6 = CsActivity.P0;
                        return (TextInputLayout) csActivity.k0().I.d;
                    default:
                        int i7 = CsActivity.P0;
                        return csActivity.k0().c0;
                }
            }
        });
        this.Z = new gv7(new bt3(this) { // from class: j42
            public final /* synthetic */ CsActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i2 = i;
                CsActivity csActivity = this.b;
                switch (i2) {
                    case 0:
                        int i3 = CsActivity.P0;
                        Intent intent = csActivity.getIntent();
                        dd1 dd1Var = intent != null ? (dd1) intent.getSerializableExtra("cloud_type") : null;
                        dd1Var.getClass();
                        return dd1Var;
                    default:
                        int i4 = CsActivity.P0;
                        return (TextInputEditText) csActivity.k0().I.c;
                }
            }
        });
        final int i2 = 1;
        this.a0 = new gv7(new bt3(this) { // from class: i42
            public final /* synthetic */ CsActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i3 = i2;
                CsActivity csActivity = this.b;
                switch (i3) {
                    case 0:
                        int i4 = CsActivity.P0;
                        return csActivity.k0().b0;
                    case 1:
                        int i5 = CsActivity.P0;
                        return (TextInputLayout) csActivity.k0().Q.d;
                    case 2:
                        int i6 = CsActivity.P0;
                        return csActivity.k0().q;
                    default:
                        int i7 = CsActivity.P0;
                        return (TextInputEditText) csActivity.k0().M.c;
                }
            }
        });
        this.b0 = new gv7(new o42(this, i2));
        this.c0 = new gv7(new bt3(this) { // from class: p42
            public final /* synthetic */ CsActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i3 = i2;
                CsActivity csActivity = this.b;
                switch (i3) {
                    case 0:
                        int i4 = CsActivity.P0;
                        return (TextInputEditText) csActivity.k0().K.c;
                    default:
                        int i5 = CsActivity.P0;
                        return csActivity.k0().P;
                }
            }
        });
        this.d0 = new gv7(new bt3(this) { // from class: r42
            public final /* synthetic */ CsActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i3 = i2;
                CsActivity csActivity = this.b;
                switch (i3) {
                    case 0:
                        int i4 = CsActivity.P0;
                        return csActivity.k0().e;
                    default:
                        int i5 = CsActivity.P0;
                        return csActivity.k0().Z;
                }
            }
        });
        this.e0 = new gv7(new bt3(this) { // from class: s42
            public final /* synthetic */ CsActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i3 = i2;
                CsActivity csActivity = this.b;
                switch (i3) {
                    case 0:
                        int i4 = CsActivity.P0;
                        return (TextInputLayout) csActivity.k0().L.c;
                    default:
                        int i5 = CsActivity.P0;
                        return csActivity.k0().p;
                }
            }
        });
        this.f0 = new gv7(new bt3(this) { // from class: t42
            public final /* synthetic */ CsActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i3 = i2;
                CsActivity csActivity = this.b;
                switch (i3) {
                    case 0:
                        int i4 = CsActivity.P0;
                        return csActivity.k0().d;
                    default:
                        int i5 = CsActivity.P0;
                        return csActivity.k0().S;
                }
            }
        });
        final int i3 = 2;
        this.g0 = new gv7(new bt3(this) { // from class: h42
            public final /* synthetic */ CsActivity b;

            {
                this.b = this;
            }

            /* JADX WARN: Code duplicated, block: B:124:0x038e A[PHI: r1
              0x038e: PHI (r1v17 int) = (r1v16 int), (r1v18 int), (r1v19 int), (r1v20 int), (r1v21 int) binds: [B:33:0x00c1, B:35:0x00ce, B:37:0x00df, B:39:0x00ec, B:41:0x00f9] A[DONT_GENERATE, DONT_INLINE]] */
            /* JADX WARN: Code duplicated, block: B:125:0x039f A[PHI: r1
              0x039f: PHI (r1v4 int) = 
              (r1v3 int)
              (r1v5 int)
              (r1v6 int)
              (r1v7 int)
              (r1v8 int)
              (r1v9 int)
              (r1v10 int)
              (r1v11 int)
              (r1v12 int)
              (r1v13 int)
              (r1v14 int)
              (r1v15 int)
              (r1v22 int)
              (r1v23 int)
              (r1v24 int)
              (r1v25 int)
              (r1v26 int)
              (r1v27 int)
              (r1v29 int)
              (r1v30 int)
              (r1v32 int)
              (r1v37 int)
              (r1v42 int)
              (r1v43 int)
              (r1v47 int)
              (r1v49 int)
              (r1v54 int)
              (r1v58 int)
              (r1v59 int)
              (r1v60 int)
              (r1v61 int)
              (r1v62 int)
              (r1v63 int)
              (r1v64 int)
              (r1v65 int)
              (r1v66 int)
              (r1v67 int)
              (r1v68 int)
             binds: [B:9:0x0039, B:11:0x0045, B:13:0x0051, B:15:0x005a, B:17:0x0063, B:19:0x006f, B:21:0x007a, B:23:0x0086, B:25:0x0092, B:27:0x009e, B:29:0x00ab, B:31:0x00b4, B:43:0x010f, B:45:0x011c, B:47:0x0129, B:49:0x0136, B:51:0x0143, B:53:0x014c, B:122:0x037b, B:120:0x0369, B:65:0x0199, B:117:0x0344, B:73:0x01da, B:75:0x01e3, B:79:0x0202, B:114:0x0319, B:85:0x022d, B:89:0x0252, B:91:0x025f, B:93:0x026c, B:95:0x0279, B:97:0x0286, B:99:0x0293, B:101:0x02a0, B:103:0x02ad, B:105:0x02ba, B:107:0x02c7, B:109:0x02d4] A[DONT_GENERATE, DONT_INLINE]] */
            @Override // defpackage.bt3
            public final Object invoke() {
                int i4 = i3;
                CsActivity csActivity = this.b;
                switch (i4) {
                    case 0:
                        int i5 = CsActivity.P0;
                        View viewInflate = csActivity.getLayoutInflater().inflate(R.layout.cs_activity, (ViewGroup) null, false);
                        int i6 = R.id.auth_header;
                        if (((LinearLayout) ms8.u(viewInflate, R.id.auth_header)) != null) {
                            i6 = R.id.btn_connect_cloud;
                            MaterialButton materialButton = (MaterialButton) ms8.u(viewInflate, R.id.btn_connect_cloud);
                            if (materialButton != null) {
                                i6 = R.id.btn_test_connect;
                                MaterialButton materialButton2 = (MaterialButton) ms8.u(viewInflate, R.id.btn_test_connect);
                                if (materialButton2 != null) {
                                    i6 = R.id.click_listener_key_clear;
                                    View viewU = ms8.u(viewInflate, R.id.click_listener_key_clear);
                                    if (viewU != null) {
                                        i6 = R.id.click_listener_key_file;
                                        View viewU2 = ms8.u(viewInflate, R.id.click_listener_key_file);
                                        if (viewU2 != null) {
                                            i6 = R.id.container_key_file;
                                            LinearLayout linearLayout = (LinearLayout) ms8.u(viewInflate, R.id.container_key_file);
                                            if (linearLayout != null) {
                                                i6 = R.id.custom_action_bar;
                                                if (((ConstraintLayout) ms8.u(viewInflate, R.id.custom_action_bar)) != null) {
                                                    i6 = R.id.iv_icon;
                                                    ImageView imageView = (ImageView) ms8.u(viewInflate, R.id.iv_icon);
                                                    if (imageView != null) {
                                                        i6 = R.id.iv_menu;
                                                        ImageView imageView2 = (ImageView) ms8.u(viewInflate, R.id.iv_menu);
                                                        if (imageView2 != null) {
                                                            i6 = R.id.iv_s3_preset_icon;
                                                            ImageView imageView3 = (ImageView) ms8.u(viewInflate, R.id.iv_s3_preset_icon);
                                                            if (imageView3 != null) {
                                                                i6 = R.id.iv_webdav_preset_icon;
                                                                ImageView imageView4 = (ImageView) ms8.u(viewInflate, R.id.iv_webdav_preset_icon);
                                                                if (imageView4 != null) {
                                                                    i6 = R.id.local_server_discovery_card;
                                                                    View viewU3 = ms8.u(viewInflate, R.id.local_server_discovery_card);
                                                                    if (viewU3 != null) {
                                                                        int i7 = R.id.iv_local_server_discovery;
                                                                        ImageView imageView5 = (ImageView) ms8.u(viewU3, R.id.iv_local_server_discovery);
                                                                        if (imageView5 != null) {
                                                                            i7 = R.id.iv_local_server_discovery_chevron;
                                                                            ImageView imageView6 = (ImageView) ms8.u(viewU3, R.id.iv_local_server_discovery_chevron);
                                                                            if (imageView6 != null) {
                                                                                MaterialCardView materialCardView = (MaterialCardView) viewU3;
                                                                                i7 = R.id.pb_local_server_discovery;
                                                                                ProgressBar progressBar = (ProgressBar) ms8.u(viewU3, R.id.pb_local_server_discovery);
                                                                                if (progressBar != null) {
                                                                                    i7 = R.id.tv_local_server_discovery_subtitle;
                                                                                    TextView textView = (TextView) ms8.u(viewU3, R.id.tv_local_server_discovery_subtitle);
                                                                                    if (textView != null) {
                                                                                        i7 = R.id.tv_local_server_discovery_title;
                                                                                        TextView textView2 = (TextView) ms8.u(viewU3, R.id.tv_local_server_discovery_title);
                                                                                        if (textView2 != null) {
                                                                                            m86 m86Var = new m86(materialCardView, imageView5, imageView6, materialCardView, progressBar, textView, textView2, 1);
                                                                                            i6 = R.id.scroll_view;
                                                                                            NestedScrollView nestedScrollView = (NestedScrollView) ms8.u(viewInflate, R.id.scroll_view);
                                                                                            if (nestedScrollView != null) {
                                                                                                i6 = R.id.server_container;
                                                                                                LinearLayout linearLayout2 = (LinearLayout) ms8.u(viewInflate, R.id.server_container);
                                                                                                if (linearLayout2 != null) {
                                                                                                    i6 = R.id.switch_encryption;
                                                                                                    SwiftBackupMaterialSwitch swiftBackupMaterialSwitch = (SwiftBackupMaterialSwitch) ms8.u(viewInflate, R.id.switch_encryption);
                                                                                                    if (swiftBackupMaterialSwitch != null) {
                                                                                                        i6 = R.id.switch_encryption_container;
                                                                                                        FrameLayout frameLayout = (FrameLayout) ms8.u(viewInflate, R.id.switch_encryption_container);
                                                                                                        if (frameLayout != null) {
                                                                                                            i6 = R.id.til_auth_type;
                                                                                                            TextInputLayout textInputLayout = (TextInputLayout) ms8.u(viewInflate, R.id.til_auth_type);
                                                                                                            if (textInputLayout != null) {
                                                                                                                i6 = R.id.til_key_file;
                                                                                                                View viewU4 = ms8.u(viewInflate, R.id.til_key_file);
                                                                                                                if (viewU4 == null) {
                                                                                                                    f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i6)));
                                                                                                                } else {
                                                                                                                    TextInputEditText textInputEditText = (TextInputEditText) ms8.u(viewU4, R.id.et);
                                                                                                                    if (textInputEditText != null) {
                                                                                                                        TextInputLayout textInputLayout2 = (TextInputLayout) viewU4;
                                                                                                                        u00 u00Var = new u00(1, textInputLayout2, textInputEditText, textInputLayout2);
                                                                                                                        View viewU5 = ms8.u(viewInflate, R.id.til_key_passphrase);
                                                                                                                        if (viewU5 != null) {
                                                                                                                            TextInputEditText textInputEditText2 = (TextInputEditText) ms8.u(viewU5, R.id.et);
                                                                                                                            if (textInputEditText2 != null) {
                                                                                                                                TextInputLayout textInputLayout3 = (TextInputLayout) viewU5;
                                                                                                                                d62 d62Var = new d62(textInputLayout3, textInputEditText2, textInputLayout3, 0);
                                                                                                                                View viewU6 = ms8.u(viewInflate, R.id.til_password);
                                                                                                                                if (viewU6 != null) {
                                                                                                                                    TextInputEditText textInputEditText3 = (TextInputEditText) ms8.u(viewU6, R.id.et);
                                                                                                                                    if (textInputEditText3 != null) {
                                                                                                                                        TextInputLayout textInputLayout4 = (TextInputLayout) viewU6;
                                                                                                                                        dr drVar = new dr(textInputLayout4, textInputEditText3, textInputLayout4, 1);
                                                                                                                                        i6 = R.id.til_path;
                                                                                                                                        View viewU7 = ms8.u(viewInflate, R.id.til_path);
                                                                                                                                        if (viewU7 != null) {
                                                                                                                                            TextInputEditText textInputEditText4 = (TextInputEditText) ms8.u(viewU7, R.id.et);
                                                                                                                                            if (textInputEditText4 != null) {
                                                                                                                                                TextInputLayout textInputLayout5 = (TextInputLayout) viewU7;
                                                                                                                                                bp0 bp0Var = new bp0(textInputLayout5, textInputEditText4, textInputLayout5);
                                                                                                                                                View viewU8 = ms8.u(viewInflate, R.id.til_port);
                                                                                                                                                if (viewU8 != null) {
                                                                                                                                                    TextInputEditText textInputEditText5 = (TextInputEditText) ms8.u(viewU8, R.id.et);
                                                                                                                                                    if (textInputEditText5 != null) {
                                                                                                                                                        TextInputLayout textInputLayout6 = (TextInputLayout) viewU8;
                                                                                                                                                        ny1 ny1Var = new ny1(5, textInputLayout6, textInputEditText5, textInputLayout6);
                                                                                                                                                        i6 = R.id.til_protocol;
                                                                                                                                                        TextInputLayout textInputLayout7 = (TextInputLayout) ms8.u(viewInflate, R.id.til_protocol);
                                                                                                                                                        if (textInputLayout7 != null) {
                                                                                                                                                            i6 = R.id.til_region;
                                                                                                                                                            View viewU9 = ms8.u(viewInflate, R.id.til_region);
                                                                                                                                                            if (viewU9 != null) {
                                                                                                                                                                TextInputEditText textInputEditText6 = (TextInputEditText) ms8.u(viewU9, R.id.et);
                                                                                                                                                                if (textInputEditText6 != null) {
                                                                                                                                                                    TextInputLayout textInputLayout8 = (TextInputLayout) viewU9;
                                                                                                                                                                    u94 u94Var = new u94(textInputLayout8, textInputEditText6, textInputLayout8);
                                                                                                                                                                    i6 = R.id.til_s3_provider;
                                                                                                                                                                    TextInputLayout textInputLayout9 = (TextInputLayout) ms8.u(viewInflate, R.id.til_s3_provider);
                                                                                                                                                                    if (textInputLayout9 != null) {
                                                                                                                                                                        View viewU10 = ms8.u(viewInflate, R.id.til_server);
                                                                                                                                                                        if (viewU10 != null) {
                                                                                                                                                                            TextInputEditText textInputEditText7 = (TextInputEditText) ms8.u(viewU10, R.id.et);
                                                                                                                                                                            if (textInputEditText7 != null) {
                                                                                                                                                                                TextInputLayout textInputLayout10 = (TextInputLayout) viewU10;
                                                                                                                                                                                e41 e41Var = new e41(1, textInputLayout10, textInputEditText7, textInputLayout10);
                                                                                                                                                                                i6 = R.id.til_username;
                                                                                                                                                                                View viewU11 = ms8.u(viewInflate, R.id.til_username);
                                                                                                                                                                                if (viewU11 != null) {
                                                                                                                                                                                    TextInputEditText textInputEditText8 = (TextInputEditText) ms8.u(viewU11, R.id.et);
                                                                                                                                                                                    if (textInputEditText8 != null) {
                                                                                                                                                                                        TextInputLayout textInputLayout11 = (TextInputLayout) viewU11;
                                                                                                                                                                                        s02 s02Var = new s02();
                                                                                                                                                                                        s02Var.a = textInputLayout11;
                                                                                                                                                                                        s02Var.b = textInputEditText8;
                                                                                                                                                                                        s02Var.c = textInputLayout11;
                                                                                                                                                                                        i6 = R.id.til_webdav_provider;
                                                                                                                                                                                        TextInputLayout textInputLayout12 = (TextInputLayout) ms8.u(viewInflate, R.id.til_webdav_provider);
                                                                                                                                                                                        if (textInputLayout12 != null) {
                                                                                                                                                                                            i6 = R.id.tv_auth_type;
                                                                                                                                                                                            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) ms8.u(viewInflate, R.id.tv_auth_type);
                                                                                                                                                                                            if (autoCompleteTextView != null) {
                                                                                                                                                                                                i6 = R.id.tv_authentication_title;
                                                                                                                                                                                                TextView textView3 = (TextView) ms8.u(viewInflate, R.id.tv_authentication_title);
                                                                                                                                                                                                if (textView3 != null) {
                                                                                                                                                                                                    i6 = R.id.tv_cloudmailru_password_note;
                                                                                                                                                                                                    TextView textView4 = (TextView) ms8.u(viewInflate, R.id.tv_cloudmailru_password_note);
                                                                                                                                                                                                    if (textView4 != null) {
                                                                                                                                                                                                        i6 = R.id.tv_cloudmailru_storage_plan_note;
                                                                                                                                                                                                        TextView textView5 = (TextView) ms8.u(viewInflate, R.id.tv_cloudmailru_storage_plan_note);
                                                                                                                                                                                                        if (textView5 != null) {
                                                                                                                                                                                                            i6 = R.id.tv_leave_blank_anonymoous;
                                                                                                                                                                                                            TextView textView6 = (TextView) ms8.u(viewInflate, R.id.tv_leave_blank_anonymoous);
                                                                                                                                                                                                            if (textView6 != null) {
                                                                                                                                                                                                                i6 = R.id.tv_protocol;
                                                                                                                                                                                                                AutoCompleteTextView autoCompleteTextView2 = (AutoCompleteTextView) ms8.u(viewInflate, R.id.tv_protocol);
                                                                                                                                                                                                                if (autoCompleteTextView2 != null) {
                                                                                                                                                                                                                    i6 = R.id.tv_s3_provider;
                                                                                                                                                                                                                    AutoCompleteTextView autoCompleteTextView3 = (AutoCompleteTextView) ms8.u(viewInflate, R.id.tv_s3_provider);
                                                                                                                                                                                                                    if (autoCompleteTextView3 != null) {
                                                                                                                                                                                                                        i6 = R.id.tv_title;
                                                                                                                                                                                                                        TextView textView7 = (TextView) ms8.u(viewInflate, R.id.tv_title);
                                                                                                                                                                                                                        if (textView7 != null) {
                                                                                                                                                                                                                            i6 = R.id.tv_url;
                                                                                                                                                                                                                            TextView textView8 = (TextView) ms8.u(viewInflate, R.id.tv_url);
                                                                                                                                                                                                                            if (textView8 != null) {
                                                                                                                                                                                                                                i6 = R.id.tv_webdav_provider;
                                                                                                                                                                                                                                AutoCompleteTextView autoCompleteTextView4 = (AutoCompleteTextView) ms8.u(viewInflate, R.id.tv_webdav_provider);
                                                                                                                                                                                                                                if (autoCompleteTextView4 != null) {
                                                                                                                                                                                                                                    return new t52((ConstraintLayout) viewInflate, materialButton, materialButton2, viewU, viewU2, linearLayout, imageView, imageView2, imageView3, imageView4, m86Var, nestedScrollView, linearLayout2, swiftBackupMaterialSwitch, frameLayout, textInputLayout, u00Var, d62Var, drVar, bp0Var, ny1Var, textInputLayout7, u94Var, textInputLayout9, e41Var, s02Var, textInputLayout12, autoCompleteTextView, textView3, textView4, textView5, textView6, autoCompleteTextView2, autoCompleteTextView3, textView7, textView8, autoCompleteTextView4);
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                            }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                }
                                                                                                                                                                                                            }
                                                                                                                                                                                                        }
                                                                                                                                                                                                    }
                                                                                                                                                                                                }
                                                                                                                                                                                            }
                                                                                                                                                                                        }
                                                                                                                                                                                    } else {
                                                                                                                                                                                        f6.n("Missing required view with ID: ".concat(viewU11.getResources().getResourceName(R.id.et)));
                                                                                                                                                                                    }
                                                                                                                                                                                }
                                                                                                                                                                            } else {
                                                                                                                                                                                f6.n("Missing required view with ID: ".concat(viewU10.getResources().getResourceName(R.id.et)));
                                                                                                                                                                            }
                                                                                                                                                                        } else {
                                                                                                                                                                            i6 = R.id.til_server;
                                                                                                                                                                        }
                                                                                                                                                                    }
                                                                                                                                                                } else {
                                                                                                                                                                    f6.n("Missing required view with ID: ".concat(viewU9.getResources().getResourceName(R.id.et)));
                                                                                                                                                                }
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                    } else {
                                                                                                                                                        f6.n("Missing required view with ID: ".concat(viewU8.getResources().getResourceName(R.id.et)));
                                                                                                                                                    }
                                                                                                                                                } else {
                                                                                                                                                    i6 = R.id.til_port;
                                                                                                                                                }
                                                                                                                                            } else {
                                                                                                                                                f6.n("Missing required view with ID: ".concat(viewU7.getResources().getResourceName(R.id.et)));
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    } else {
                                                                                                                                        f6.n("Missing required view with ID: ".concat(viewU6.getResources().getResourceName(R.id.et)));
                                                                                                                                    }
                                                                                                                                } else {
                                                                                                                                    i6 = R.id.til_password;
                                                                                                                                }
                                                                                                                            } else {
                                                                                                                                f6.n("Missing required view with ID: ".concat(viewU5.getResources().getResourceName(R.id.et)));
                                                                                                                            }
                                                                                                                        } else {
                                                                                                                            i6 = R.id.til_key_passphrase;
                                                                                                                        }
                                                                                                                        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i6)));
                                                                                                                    } else {
                                                                                                                        f6.n("Missing required view with ID: ".concat(viewU4.getResources().getResourceName(R.id.et)));
                                                                                                                    }
                                                                                                                }
                                                                                                            } else {
                                                                                                                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i6)));
                                                                                                            }
                                                                                                        } else {
                                                                                                            f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i6)));
                                                                                                        }
                                                                                                    } else {
                                                                                                        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i6)));
                                                                                                    }
                                                                                                } else {
                                                                                                    f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i6)));
                                                                                                }
                                                                                            } else {
                                                                                                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i6)));
                                                                                            }
                                                                                        } else {
                                                                                            f6.n("Missing required view with ID: ".concat(viewU3.getResources().getResourceName(i7)));
                                                                                        }
                                                                                    } else {
                                                                                        f6.n("Missing required view with ID: ".concat(viewU3.getResources().getResourceName(i7)));
                                                                                    }
                                                                                } else {
                                                                                    f6.n("Missing required view with ID: ".concat(viewU3.getResources().getResourceName(i7)));
                                                                                }
                                                                            } else {
                                                                                f6.n("Missing required view with ID: ".concat(viewU3.getResources().getResourceName(i7)));
                                                                            }
                                                                        } else {
                                                                            f6.n("Missing required view with ID: ".concat(viewU3.getResources().getResourceName(i7)));
                                                                        }
                                                                    } else {
                                                                        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i6)));
                                                                    }
                                                                } else {
                                                                    f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i6)));
                                                                }
                                                            } else {
                                                                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i6)));
                                                            }
                                                        } else {
                                                            f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i6)));
                                                        }
                                                    } else {
                                                        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i6)));
                                                    }
                                                } else {
                                                    f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i6)));
                                                }
                                            } else {
                                                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i6)));
                                            }
                                        } else {
                                            f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i6)));
                                        }
                                    } else {
                                        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i6)));
                                    }
                                } else {
                                    f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i6)));
                                }
                            } else {
                                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i6)));
                            }
                        } else {
                            f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i6)));
                        }
                        return null;
                    case 1:
                        int i8 = CsActivity.P0;
                        return (TextInputLayout) csActivity.k0().I.d;
                    default:
                        int i9 = CsActivity.P0;
                        return csActivity.k0().c0;
                }
            }
        });
        this.h0 = new gv7(new bt3(this) { // from class: i42
            public final /* synthetic */ CsActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i4 = i3;
                CsActivity csActivity = this.b;
                switch (i4) {
                    case 0:
                        int i5 = CsActivity.P0;
                        return csActivity.k0().b0;
                    case 1:
                        int i6 = CsActivity.P0;
                        return (TextInputLayout) csActivity.k0().Q.d;
                    case 2:
                        int i7 = CsActivity.P0;
                        return csActivity.k0().q;
                    default:
                        int i8 = CsActivity.P0;
                        return (TextInputEditText) csActivity.k0().M.c;
                }
            }
        });
        this.i0 = new gv7(new bt3(this) { // from class: s42
            public final /* synthetic */ CsActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i4 = i;
                CsActivity csActivity = this.b;
                switch (i4) {
                    case 0:
                        int i5 = CsActivity.P0;
                        return (TextInputLayout) csActivity.k0().L.c;
                    default:
                        int i6 = CsActivity.P0;
                        return csActivity.k0().p;
                }
            }
        });
        this.j0 = new gv7(new q42(this, i2));
        this.k0 = new gv7(new o42(this, i3));
        this.l0 = new gv7(new bt3(this) { // from class: m42
            public final /* synthetic */ CsActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i4 = i3;
                CsActivity csActivity = this.b;
                switch (i4) {
                    case 0:
                        int i5 = CsActivity.P0;
                        return (TextInputLayout) csActivity.k0().R.c;
                    case 1:
                        int i6 = CsActivity.P0;
                        return csActivity.k0().b;
                    case 2:
                        int i7 = CsActivity.P0;
                        return csActivity.k0().Y;
                    default:
                        int i8 = CsActivity.P0;
                        return (TextInputLayout) csActivity.k0().O.c;
                }
            }
        });
        this.m0 = new gv7(new bt3(this) { // from class: k42
            public final /* synthetic */ CsActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i4 = i3;
                CsActivity csActivity = this.b;
                switch (i4) {
                    case 0:
                        int i5 = CsActivity.P0;
                        return csActivity.k0().H;
                    case 1:
                        int i6 = CsActivity.P0;
                        return csActivity.k0().J.d;
                    default:
                        int i7 = CsActivity.P0;
                        return (TextInputLayout) csActivity.k0().M.d;
                }
            }
        });
        final int i4 = 3;
        this.n0 = new gv7(new bt3(this) { // from class: i42
            public final /* synthetic */ CsActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i5 = i4;
                CsActivity csActivity = this.b;
                switch (i5) {
                    case 0:
                        int i6 = CsActivity.P0;
                        return csActivity.k0().b0;
                    case 1:
                        int i7 = CsActivity.P0;
                        return (TextInputLayout) csActivity.k0().Q.d;
                    case 2:
                        int i8 = CsActivity.P0;
                        return csActivity.k0().q;
                    default:
                        int i9 = CsActivity.P0;
                        return (TextInputEditText) csActivity.k0().M.c;
                }
            }
        });
        this.o0 = new gv7(new bt3(this) { // from class: l42
            public final /* synthetic */ CsActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i5 = i3;
                CsActivity csActivity = this.b;
                switch (i5) {
                    case 0:
                        int i6 = CsActivity.P0;
                        return csActivity.k0().T;
                    case 1:
                        int i7 = CsActivity.P0;
                        return csActivity.k0().J.c;
                    default:
                        int i8 = CsActivity.P0;
                        return csActivity.k0().G;
                }
            }
        });
        this.p0 = new gv7(new bt3(this) { // from class: m42
            public final /* synthetic */ CsActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i5 = i4;
                CsActivity csActivity = this.b;
                switch (i5) {
                    case 0:
                        int i6 = CsActivity.P0;
                        return (TextInputLayout) csActivity.k0().R.c;
                    case 1:
                        int i7 = CsActivity.P0;
                        return csActivity.k0().b;
                    case 2:
                        int i8 = CsActivity.P0;
                        return csActivity.k0().Y;
                    default:
                        int i9 = CsActivity.P0;
                        return (TextInputLayout) csActivity.k0().O.c;
                }
            }
        });
        this.q0 = new gv7(new n42(this, i4));
        this.r0 = new gv7(new bt3(this) { // from class: i42
            public final /* synthetic */ CsActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i5 = i;
                CsActivity csActivity = this.b;
                switch (i5) {
                    case 0:
                        int i6 = CsActivity.P0;
                        return csActivity.k0().b0;
                    case 1:
                        int i7 = CsActivity.P0;
                        return (TextInputLayout) csActivity.k0().Q.d;
                    case 2:
                        int i8 = CsActivity.P0;
                        return csActivity.k0().q;
                    default:
                        int i9 = CsActivity.P0;
                        return (TextInputEditText) csActivity.k0().M.c;
                }
            }
        });
        this.s0 = new gv7(new bt3(this) { // from class: k42
            public final /* synthetic */ CsActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i5 = i;
                CsActivity csActivity = this.b;
                switch (i5) {
                    case 0:
                        int i6 = CsActivity.P0;
                        return csActivity.k0().H;
                    case 1:
                        int i7 = CsActivity.P0;
                        return csActivity.k0().J.d;
                    default:
                        int i8 = CsActivity.P0;
                        return (TextInputLayout) csActivity.k0().M.d;
                }
            }
        });
        this.t0 = new gv7(new bt3(this) { // from class: l42
            public final /* synthetic */ CsActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i5 = i;
                CsActivity csActivity = this.b;
                switch (i5) {
                    case 0:
                        int i6 = CsActivity.P0;
                        return csActivity.k0().T;
                    case 1:
                        int i7 = CsActivity.P0;
                        return csActivity.k0().J.c;
                    default:
                        int i8 = CsActivity.P0;
                        return csActivity.k0().G;
                }
            }
        });
        this.u0 = new gv7(new bt3(this) { // from class: m42
            public final /* synthetic */ CsActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i5 = i;
                CsActivity csActivity = this.b;
                switch (i5) {
                    case 0:
                        int i6 = CsActivity.P0;
                        return (TextInputLayout) csActivity.k0().R.c;
                    case 1:
                        int i7 = CsActivity.P0;
                        return csActivity.k0().b;
                    case 2:
                        int i8 = CsActivity.P0;
                        return csActivity.k0().Y;
                    default:
                        int i9 = CsActivity.P0;
                        return (TextInputLayout) csActivity.k0().O.c;
                }
            }
        });
        this.v0 = new gv7(new n42(this, i));
        this.w0 = new gv7(new o42(this, i));
        this.x0 = new gv7(new bt3(this) { // from class: p42
            public final /* synthetic */ CsActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i5 = i;
                CsActivity csActivity = this.b;
                switch (i5) {
                    case 0:
                        int i6 = CsActivity.P0;
                        return (TextInputEditText) csActivity.k0().K.c;
                    default:
                        int i7 = CsActivity.P0;
                        return csActivity.k0().P;
                }
            }
        });
        this.y0 = new gv7(new q42(this, i));
        this.z0 = new gv7(new bt3(this) { // from class: r42
            public final /* synthetic */ CsActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i5 = i;
                CsActivity csActivity = this.b;
                switch (i5) {
                    case 0:
                        int i6 = CsActivity.P0;
                        return csActivity.k0().e;
                    default:
                        int i7 = CsActivity.P0;
                        return csActivity.k0().Z;
                }
            }
        });
        this.A0 = new gv7(new bt3(this) { // from class: t42
            public final /* synthetic */ CsActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i5 = i;
                CsActivity csActivity = this.b;
                switch (i5) {
                    case 0:
                        int i6 = CsActivity.P0;
                        return csActivity.k0().d;
                    default:
                        int i7 = CsActivity.P0;
                        return csActivity.k0().S;
                }
            }
        });
        this.B0 = new gv7(new bt3(this) { // from class: h42
            public final /* synthetic */ CsActivity b;

            {
                this.b = this;
            }

            /* JADX WARN: Code duplicated, block: B:124:0x038e A[PHI: r1
              0x038e: PHI (r1v17 int) = (r1v16 int), (r1v18 int), (r1v19 int), (r1v20 int), (r1v21 int) binds: [B:33:0x00c1, B:35:0x00ce, B:37:0x00df, B:39:0x00ec, B:41:0x00f9] A[DONT_GENERATE, DONT_INLINE]] */
            /* JADX WARN: Code duplicated, block: B:125:0x039f A[PHI: r1
              0x039f: PHI (r1v4 int) = 
              (r1v3 int)
              (r1v5 int)
              (r1v6 int)
              (r1v7 int)
              (r1v8 int)
              (r1v9 int)
              (r1v10 int)
              (r1v11 int)
              (r1v12 int)
              (r1v13 int)
              (r1v14 int)
              (r1v15 int)
              (r1v22 int)
              (r1v23 int)
              (r1v24 int)
              (r1v25 int)
              (r1v26 int)
              (r1v27 int)
              (r1v29 int)
              (r1v30 int)
              (r1v32 int)
              (r1v37 int)
              (r1v42 int)
              (r1v43 int)
              (r1v47 int)
              (r1v49 int)
              (r1v54 int)
              (r1v58 int)
              (r1v59 int)
              (r1v60 int)
              (r1v61 int)
              (r1v62 int)
              (r1v63 int)
              (r1v64 int)
              (r1v65 int)
              (r1v66 int)
              (r1v67 int)
              (r1v68 int)
             binds: [B:9:0x0039, B:11:0x0045, B:13:0x0051, B:15:0x005a, B:17:0x0063, B:19:0x006f, B:21:0x007a, B:23:0x0086, B:25:0x0092, B:27:0x009e, B:29:0x00ab, B:31:0x00b4, B:43:0x010f, B:45:0x011c, B:47:0x0129, B:49:0x0136, B:51:0x0143, B:53:0x014c, B:122:0x037b, B:120:0x0369, B:65:0x0199, B:117:0x0344, B:73:0x01da, B:75:0x01e3, B:79:0x0202, B:114:0x0319, B:85:0x022d, B:89:0x0252, B:91:0x025f, B:93:0x026c, B:95:0x0279, B:97:0x0286, B:99:0x0293, B:101:0x02a0, B:103:0x02ad, B:105:0x02ba, B:107:0x02c7, B:109:0x02d4] A[DONT_GENERATE, DONT_INLINE]] */
            @Override // defpackage.bt3
            public final Object invoke() {
                int i5 = i2;
                CsActivity csActivity = this.b;
                switch (i5) {
                    case 0:
                        int i6 = CsActivity.P0;
                        View viewInflate = csActivity.getLayoutInflater().inflate(R.layout.cs_activity, (ViewGroup) null, false);
                        int i7 = R.id.auth_header;
                        if (((LinearLayout) ms8.u(viewInflate, R.id.auth_header)) != null) {
                            i7 = R.id.btn_connect_cloud;
                            MaterialButton materialButton = (MaterialButton) ms8.u(viewInflate, R.id.btn_connect_cloud);
                            if (materialButton != null) {
                                i7 = R.id.btn_test_connect;
                                MaterialButton materialButton2 = (MaterialButton) ms8.u(viewInflate, R.id.btn_test_connect);
                                if (materialButton2 != null) {
                                    i7 = R.id.click_listener_key_clear;
                                    View viewU = ms8.u(viewInflate, R.id.click_listener_key_clear);
                                    if (viewU != null) {
                                        i7 = R.id.click_listener_key_file;
                                        View viewU2 = ms8.u(viewInflate, R.id.click_listener_key_file);
                                        if (viewU2 != null) {
                                            i7 = R.id.container_key_file;
                                            LinearLayout linearLayout = (LinearLayout) ms8.u(viewInflate, R.id.container_key_file);
                                            if (linearLayout != null) {
                                                i7 = R.id.custom_action_bar;
                                                if (((ConstraintLayout) ms8.u(viewInflate, R.id.custom_action_bar)) != null) {
                                                    i7 = R.id.iv_icon;
                                                    ImageView imageView = (ImageView) ms8.u(viewInflate, R.id.iv_icon);
                                                    if (imageView != null) {
                                                        i7 = R.id.iv_menu;
                                                        ImageView imageView2 = (ImageView) ms8.u(viewInflate, R.id.iv_menu);
                                                        if (imageView2 != null) {
                                                            i7 = R.id.iv_s3_preset_icon;
                                                            ImageView imageView3 = (ImageView) ms8.u(viewInflate, R.id.iv_s3_preset_icon);
                                                            if (imageView3 != null) {
                                                                i7 = R.id.iv_webdav_preset_icon;
                                                                ImageView imageView4 = (ImageView) ms8.u(viewInflate, R.id.iv_webdav_preset_icon);
                                                                if (imageView4 != null) {
                                                                    i7 = R.id.local_server_discovery_card;
                                                                    View viewU3 = ms8.u(viewInflate, R.id.local_server_discovery_card);
                                                                    if (viewU3 != null) {
                                                                        int i8 = R.id.iv_local_server_discovery;
                                                                        ImageView imageView5 = (ImageView) ms8.u(viewU3, R.id.iv_local_server_discovery);
                                                                        if (imageView5 != null) {
                                                                            i8 = R.id.iv_local_server_discovery_chevron;
                                                                            ImageView imageView6 = (ImageView) ms8.u(viewU3, R.id.iv_local_server_discovery_chevron);
                                                                            if (imageView6 != null) {
                                                                                MaterialCardView materialCardView = (MaterialCardView) viewU3;
                                                                                i8 = R.id.pb_local_server_discovery;
                                                                                ProgressBar progressBar = (ProgressBar) ms8.u(viewU3, R.id.pb_local_server_discovery);
                                                                                if (progressBar != null) {
                                                                                    i8 = R.id.tv_local_server_discovery_subtitle;
                                                                                    TextView textView = (TextView) ms8.u(viewU3, R.id.tv_local_server_discovery_subtitle);
                                                                                    if (textView != null) {
                                                                                        i8 = R.id.tv_local_server_discovery_title;
                                                                                        TextView textView2 = (TextView) ms8.u(viewU3, R.id.tv_local_server_discovery_title);
                                                                                        if (textView2 != null) {
                                                                                            m86 m86Var = new m86(materialCardView, imageView5, imageView6, materialCardView, progressBar, textView, textView2, 1);
                                                                                            i7 = R.id.scroll_view;
                                                                                            NestedScrollView nestedScrollView = (NestedScrollView) ms8.u(viewInflate, R.id.scroll_view);
                                                                                            if (nestedScrollView != null) {
                                                                                                i7 = R.id.server_container;
                                                                                                LinearLayout linearLayout2 = (LinearLayout) ms8.u(viewInflate, R.id.server_container);
                                                                                                if (linearLayout2 != null) {
                                                                                                    i7 = R.id.switch_encryption;
                                                                                                    SwiftBackupMaterialSwitch swiftBackupMaterialSwitch = (SwiftBackupMaterialSwitch) ms8.u(viewInflate, R.id.switch_encryption);
                                                                                                    if (swiftBackupMaterialSwitch != null) {
                                                                                                        i7 = R.id.switch_encryption_container;
                                                                                                        FrameLayout frameLayout = (FrameLayout) ms8.u(viewInflate, R.id.switch_encryption_container);
                                                                                                        if (frameLayout != null) {
                                                                                                            i7 = R.id.til_auth_type;
                                                                                                            TextInputLayout textInputLayout = (TextInputLayout) ms8.u(viewInflate, R.id.til_auth_type);
                                                                                                            if (textInputLayout != null) {
                                                                                                                i7 = R.id.til_key_file;
                                                                                                                View viewU4 = ms8.u(viewInflate, R.id.til_key_file);
                                                                                                                if (viewU4 == null) {
                                                                                                                    f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i7)));
                                                                                                                } else {
                                                                                                                    TextInputEditText textInputEditText = (TextInputEditText) ms8.u(viewU4, R.id.et);
                                                                                                                    if (textInputEditText != null) {
                                                                                                                        TextInputLayout textInputLayout2 = (TextInputLayout) viewU4;
                                                                                                                        u00 u00Var = new u00(1, textInputLayout2, textInputEditText, textInputLayout2);
                                                                                                                        View viewU5 = ms8.u(viewInflate, R.id.til_key_passphrase);
                                                                                                                        if (viewU5 != null) {
                                                                                                                            TextInputEditText textInputEditText2 = (TextInputEditText) ms8.u(viewU5, R.id.et);
                                                                                                                            if (textInputEditText2 != null) {
                                                                                                                                TextInputLayout textInputLayout3 = (TextInputLayout) viewU5;
                                                                                                                                d62 d62Var = new d62(textInputLayout3, textInputEditText2, textInputLayout3, 0);
                                                                                                                                View viewU6 = ms8.u(viewInflate, R.id.til_password);
                                                                                                                                if (viewU6 != null) {
                                                                                                                                    TextInputEditText textInputEditText3 = (TextInputEditText) ms8.u(viewU6, R.id.et);
                                                                                                                                    if (textInputEditText3 != null) {
                                                                                                                                        TextInputLayout textInputLayout4 = (TextInputLayout) viewU6;
                                                                                                                                        dr drVar = new dr(textInputLayout4, textInputEditText3, textInputLayout4, 1);
                                                                                                                                        i7 = R.id.til_path;
                                                                                                                                        View viewU7 = ms8.u(viewInflate, R.id.til_path);
                                                                                                                                        if (viewU7 != null) {
                                                                                                                                            TextInputEditText textInputEditText4 = (TextInputEditText) ms8.u(viewU7, R.id.et);
                                                                                                                                            if (textInputEditText4 != null) {
                                                                                                                                                TextInputLayout textInputLayout5 = (TextInputLayout) viewU7;
                                                                                                                                                bp0 bp0Var = new bp0(textInputLayout5, textInputEditText4, textInputLayout5);
                                                                                                                                                View viewU8 = ms8.u(viewInflate, R.id.til_port);
                                                                                                                                                if (viewU8 != null) {
                                                                                                                                                    TextInputEditText textInputEditText5 = (TextInputEditText) ms8.u(viewU8, R.id.et);
                                                                                                                                                    if (textInputEditText5 != null) {
                                                                                                                                                        TextInputLayout textInputLayout6 = (TextInputLayout) viewU8;
                                                                                                                                                        ny1 ny1Var = new ny1(5, textInputLayout6, textInputEditText5, textInputLayout6);
                                                                                                                                                        i7 = R.id.til_protocol;
                                                                                                                                                        TextInputLayout textInputLayout7 = (TextInputLayout) ms8.u(viewInflate, R.id.til_protocol);
                                                                                                                                                        if (textInputLayout7 != null) {
                                                                                                                                                            i7 = R.id.til_region;
                                                                                                                                                            View viewU9 = ms8.u(viewInflate, R.id.til_region);
                                                                                                                                                            if (viewU9 != null) {
                                                                                                                                                                TextInputEditText textInputEditText6 = (TextInputEditText) ms8.u(viewU9, R.id.et);
                                                                                                                                                                if (textInputEditText6 != null) {
                                                                                                                                                                    TextInputLayout textInputLayout8 = (TextInputLayout) viewU9;
                                                                                                                                                                    u94 u94Var = new u94(textInputLayout8, textInputEditText6, textInputLayout8);
                                                                                                                                                                    i7 = R.id.til_s3_provider;
                                                                                                                                                                    TextInputLayout textInputLayout9 = (TextInputLayout) ms8.u(viewInflate, R.id.til_s3_provider);
                                                                                                                                                                    if (textInputLayout9 != null) {
                                                                                                                                                                        View viewU10 = ms8.u(viewInflate, R.id.til_server);
                                                                                                                                                                        if (viewU10 != null) {
                                                                                                                                                                            TextInputEditText textInputEditText7 = (TextInputEditText) ms8.u(viewU10, R.id.et);
                                                                                                                                                                            if (textInputEditText7 != null) {
                                                                                                                                                                                TextInputLayout textInputLayout10 = (TextInputLayout) viewU10;
                                                                                                                                                                                e41 e41Var = new e41(1, textInputLayout10, textInputEditText7, textInputLayout10);
                                                                                                                                                                                i7 = R.id.til_username;
                                                                                                                                                                                View viewU11 = ms8.u(viewInflate, R.id.til_username);
                                                                                                                                                                                if (viewU11 != null) {
                                                                                                                                                                                    TextInputEditText textInputEditText8 = (TextInputEditText) ms8.u(viewU11, R.id.et);
                                                                                                                                                                                    if (textInputEditText8 != null) {
                                                                                                                                                                                        TextInputLayout textInputLayout11 = (TextInputLayout) viewU11;
                                                                                                                                                                                        s02 s02Var = new s02();
                                                                                                                                                                                        s02Var.a = textInputLayout11;
                                                                                                                                                                                        s02Var.b = textInputEditText8;
                                                                                                                                                                                        s02Var.c = textInputLayout11;
                                                                                                                                                                                        i7 = R.id.til_webdav_provider;
                                                                                                                                                                                        TextInputLayout textInputLayout12 = (TextInputLayout) ms8.u(viewInflate, R.id.til_webdav_provider);
                                                                                                                                                                                        if (textInputLayout12 != null) {
                                                                                                                                                                                            i7 = R.id.tv_auth_type;
                                                                                                                                                                                            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) ms8.u(viewInflate, R.id.tv_auth_type);
                                                                                                                                                                                            if (autoCompleteTextView != null) {
                                                                                                                                                                                                i7 = R.id.tv_authentication_title;
                                                                                                                                                                                                TextView textView3 = (TextView) ms8.u(viewInflate, R.id.tv_authentication_title);
                                                                                                                                                                                                if (textView3 != null) {
                                                                                                                                                                                                    i7 = R.id.tv_cloudmailru_password_note;
                                                                                                                                                                                                    TextView textView4 = (TextView) ms8.u(viewInflate, R.id.tv_cloudmailru_password_note);
                                                                                                                                                                                                    if (textView4 != null) {
                                                                                                                                                                                                        i7 = R.id.tv_cloudmailru_storage_plan_note;
                                                                                                                                                                                                        TextView textView5 = (TextView) ms8.u(viewInflate, R.id.tv_cloudmailru_storage_plan_note);
                                                                                                                                                                                                        if (textView5 != null) {
                                                                                                                                                                                                            i7 = R.id.tv_leave_blank_anonymoous;
                                                                                                                                                                                                            TextView textView6 = (TextView) ms8.u(viewInflate, R.id.tv_leave_blank_anonymoous);
                                                                                                                                                                                                            if (textView6 != null) {
                                                                                                                                                                                                                i7 = R.id.tv_protocol;
                                                                                                                                                                                                                AutoCompleteTextView autoCompleteTextView2 = (AutoCompleteTextView) ms8.u(viewInflate, R.id.tv_protocol);
                                                                                                                                                                                                                if (autoCompleteTextView2 != null) {
                                                                                                                                                                                                                    i7 = R.id.tv_s3_provider;
                                                                                                                                                                                                                    AutoCompleteTextView autoCompleteTextView3 = (AutoCompleteTextView) ms8.u(viewInflate, R.id.tv_s3_provider);
                                                                                                                                                                                                                    if (autoCompleteTextView3 != null) {
                                                                                                                                                                                                                        i7 = R.id.tv_title;
                                                                                                                                                                                                                        TextView textView7 = (TextView) ms8.u(viewInflate, R.id.tv_title);
                                                                                                                                                                                                                        if (textView7 != null) {
                                                                                                                                                                                                                            i7 = R.id.tv_url;
                                                                                                                                                                                                                            TextView textView8 = (TextView) ms8.u(viewInflate, R.id.tv_url);
                                                                                                                                                                                                                            if (textView8 != null) {
                                                                                                                                                                                                                                i7 = R.id.tv_webdav_provider;
                                                                                                                                                                                                                                AutoCompleteTextView autoCompleteTextView4 = (AutoCompleteTextView) ms8.u(viewInflate, R.id.tv_webdav_provider);
                                                                                                                                                                                                                                if (autoCompleteTextView4 != null) {
                                                                                                                                                                                                                                    return new t52((ConstraintLayout) viewInflate, materialButton, materialButton2, viewU, viewU2, linearLayout, imageView, imageView2, imageView3, imageView4, m86Var, nestedScrollView, linearLayout2, swiftBackupMaterialSwitch, frameLayout, textInputLayout, u00Var, d62Var, drVar, bp0Var, ny1Var, textInputLayout7, u94Var, textInputLayout9, e41Var, s02Var, textInputLayout12, autoCompleteTextView, textView3, textView4, textView5, textView6, autoCompleteTextView2, autoCompleteTextView3, textView7, textView8, autoCompleteTextView4);
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                            }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                }
                                                                                                                                                                                                            }
                                                                                                                                                                                                        }
                                                                                                                                                                                                    }
                                                                                                                                                                                                }
                                                                                                                                                                                            }
                                                                                                                                                                                        }
                                                                                                                                                                                    } else {
                                                                                                                                                                                        f6.n("Missing required view with ID: ".concat(viewU11.getResources().getResourceName(R.id.et)));
                                                                                                                                                                                    }
                                                                                                                                                                                }
                                                                                                                                                                            } else {
                                                                                                                                                                                f6.n("Missing required view with ID: ".concat(viewU10.getResources().getResourceName(R.id.et)));
                                                                                                                                                                            }
                                                                                                                                                                        } else {
                                                                                                                                                                            i7 = R.id.til_server;
                                                                                                                                                                        }
                                                                                                                                                                    }
                                                                                                                                                                } else {
                                                                                                                                                                    f6.n("Missing required view with ID: ".concat(viewU9.getResources().getResourceName(R.id.et)));
                                                                                                                                                                }
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                    } else {
                                                                                                                                                        f6.n("Missing required view with ID: ".concat(viewU8.getResources().getResourceName(R.id.et)));
                                                                                                                                                    }
                                                                                                                                                } else {
                                                                                                                                                    i7 = R.id.til_port;
                                                                                                                                                }
                                                                                                                                            } else {
                                                                                                                                                f6.n("Missing required view with ID: ".concat(viewU7.getResources().getResourceName(R.id.et)));
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    } else {
                                                                                                                                        f6.n("Missing required view with ID: ".concat(viewU6.getResources().getResourceName(R.id.et)));
                                                                                                                                    }
                                                                                                                                } else {
                                                                                                                                    i7 = R.id.til_password;
                                                                                                                                }
                                                                                                                            } else {
                                                                                                                                f6.n("Missing required view with ID: ".concat(viewU5.getResources().getResourceName(R.id.et)));
                                                                                                                            }
                                                                                                                        } else {
                                                                                                                            i7 = R.id.til_key_passphrase;
                                                                                                                        }
                                                                                                                        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i7)));
                                                                                                                    } else {
                                                                                                                        f6.n("Missing required view with ID: ".concat(viewU4.getResources().getResourceName(R.id.et)));
                                                                                                                    }
                                                                                                                }
                                                                                                            } else {
                                                                                                                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i7)));
                                                                                                            }
                                                                                                        } else {
                                                                                                            f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i7)));
                                                                                                        }
                                                                                                    } else {
                                                                                                        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i7)));
                                                                                                    }
                                                                                                } else {
                                                                                                    f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i7)));
                                                                                                }
                                                                                            } else {
                                                                                                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i7)));
                                                                                            }
                                                                                        } else {
                                                                                            f6.n("Missing required view with ID: ".concat(viewU3.getResources().getResourceName(i8)));
                                                                                        }
                                                                                    } else {
                                                                                        f6.n("Missing required view with ID: ".concat(viewU3.getResources().getResourceName(i8)));
                                                                                    }
                                                                                } else {
                                                                                    f6.n("Missing required view with ID: ".concat(viewU3.getResources().getResourceName(i8)));
                                                                                }
                                                                            } else {
                                                                                f6.n("Missing required view with ID: ".concat(viewU3.getResources().getResourceName(i8)));
                                                                            }
                                                                        } else {
                                                                            f6.n("Missing required view with ID: ".concat(viewU3.getResources().getResourceName(i8)));
                                                                        }
                                                                    } else {
                                                                        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i7)));
                                                                    }
                                                                } else {
                                                                    f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i7)));
                                                                }
                                                            } else {
                                                                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i7)));
                                                            }
                                                        } else {
                                                            f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i7)));
                                                        }
                                                    } else {
                                                        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i7)));
                                                    }
                                                } else {
                                                    f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i7)));
                                                }
                                            } else {
                                                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i7)));
                                            }
                                        } else {
                                            f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i7)));
                                        }
                                    } else {
                                        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i7)));
                                    }
                                } else {
                                    f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i7)));
                                }
                            } else {
                                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i7)));
                            }
                        } else {
                            f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i7)));
                        }
                        return null;
                    case 1:
                        int i9 = CsActivity.P0;
                        return (TextInputLayout) csActivity.k0().I.d;
                    default:
                        int i10 = CsActivity.P0;
                        return csActivity.k0().c0;
                }
            }
        });
        this.C0 = new gv7(new bt3(this) { // from class: j42
            public final /* synthetic */ CsActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i5 = i2;
                CsActivity csActivity = this.b;
                switch (i5) {
                    case 0:
                        int i6 = CsActivity.P0;
                        Intent intent = csActivity.getIntent();
                        dd1 dd1Var = intent != null ? (dd1) intent.getSerializableExtra("cloud_type") : null;
                        dd1Var.getClass();
                        return dd1Var;
                    default:
                        int i7 = CsActivity.P0;
                        return (TextInputEditText) csActivity.k0().I.c;
                }
            }
        });
        this.D0 = new gv7(new bt3(this) { // from class: k42
            public final /* synthetic */ CsActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i5 = i2;
                CsActivity csActivity = this.b;
                switch (i5) {
                    case 0:
                        int i6 = CsActivity.P0;
                        return csActivity.k0().H;
                    case 1:
                        int i7 = CsActivity.P0;
                        return csActivity.k0().J.d;
                    default:
                        int i8 = CsActivity.P0;
                        return (TextInputLayout) csActivity.k0().M.d;
                }
            }
        });
        this.E0 = new gv7(new bt3(this) { // from class: l42
            public final /* synthetic */ CsActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i5 = i2;
                CsActivity csActivity = this.b;
                switch (i5) {
                    case 0:
                        int i6 = CsActivity.P0;
                        return csActivity.k0().T;
                    case 1:
                        int i7 = CsActivity.P0;
                        return csActivity.k0().J.c;
                    default:
                        int i8 = CsActivity.P0;
                        return csActivity.k0().G;
                }
            }
        });
        this.F0 = new gv7(new bt3(this) { // from class: m42
            public final /* synthetic */ CsActivity b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i5 = i2;
                CsActivity csActivity = this.b;
                switch (i5) {
                    case 0:
                        int i6 = CsActivity.P0;
                        return (TextInputLayout) csActivity.k0().R.c;
                    case 1:
                        int i7 = CsActivity.P0;
                        return csActivity.k0().b;
                    case 2:
                        int i8 = CsActivity.P0;
                        return csActivity.k0().Y;
                    default:
                        int i9 = CsActivity.P0;
                        return (TextInputLayout) csActivity.k0().O.c;
                }
            }
        });
        this.G0 = new gv7(new n42(this, i2));
    }

    public static void b0(TextInputEditText textInputEditText) {
        int inputType = textInputEditText.getInputType();
        if ((inputType & 15) == 1) {
            inputType |= 524288;
        }
        textInputEditText.setInputType(inputType);
    }

    public static void p0(TextInputLayout textInputLayout, String str) {
        textInputLayout.setHelperTextEnabled(true ^ (str == null || nq7.j0(str)));
        textInputLayout.setHelperText(str);
    }

    public static void q0(TextInputEditText textInputEditText, String str) {
        if (str == null || nq7.j0(str)) {
            textInputEditText.setText((CharSequence) null);
        } else {
            textInputEditText.setText(str);
            textInputEditText.setSelection(str.length());
        }
    }

    public static final void r0(SpannableStringBuilder spannableStringBuilder, String str, String str2) {
        if (str2 != null) {
            if (nq7.j0(str2)) {
                str2 = null;
            }
            if (str2 == null) {
                return;
            }
            if (spannableStringBuilder.length() > 0) {
                spannableStringBuilder.append((CharSequence) "\n\n");
            }
            StyleSpan styleSpan = new StyleSpan(1);
            int length = spannableStringBuilder.length();
            spannableStringBuilder.append((CharSequence) str.concat(": "));
            spannableStringBuilder.setSpan(styleSpan, length, spannableStringBuilder.length(), 17);
            spannableStringBuilder.append((CharSequence) str2);
        }
    }

    public static final void s0(SpannableStringBuilder spannableStringBuilder, String str, String str2) {
        spannableStringBuilder.append("\n\n");
        StyleSpan styleSpan = new StyleSpan(1);
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) str.concat(": "));
        spannableStringBuilder.setSpan(styleSpan, length, spannableStringBuilder.length(), 17);
        spannableStringBuilder.append((CharSequence) str2);
    }

    public final void Y(vi1 vi1Var) {
        if (d0() == dd1.WebDav) {
            oq8 oq8VarK = zh8.k(vi1Var);
            oq8 oq8Var = this.J0;
            this.J0 = oq8VarK;
            ImageView imageView = (ImageView) this.h0.getValue();
            int i = oq8VarK.c;
            String str = oq8VarK.b;
            y13.D(imageView, i, str, 3.0f);
            this.K0 = true;
            try {
                j0().setText((CharSequence) str, false);
                this.K0 = false;
                a0(oq8VarK, oq8Var, false);
            } catch (Throwable th) {
                this.K0 = false;
                throw th;
            }
        }
        if (sz8.I((TextInputLayout) this.k0.getValue())) {
            ((AutoCompleteTextView) this.l0.getValue()).setText((CharSequence) vi1Var.b.getDisplayName(), false);
        }
        TextInputEditText textInputEditTextG0 = g0();
        String str2 = vi1Var.c;
        textInputEditTextG0.setText(str2);
        textInputEditTextG0.setSelection(str2.length());
        TextInputEditText textInputEditText = (TextInputEditText) this.n0.getValue();
        String strValueOf = String.valueOf(vi1Var.d);
        textInputEditText.setText(strValueOf);
        textInputEditText.setSelection(strValueOf.length());
        String str3 = vi1Var.e;
        if (str3 != null) {
            if (nq7.j0(str3)) {
                str3 = null;
            }
            if (str3 != null) {
                TextInputEditText textInputEditTextE0 = e0();
                textInputEditTextE0.setText(str3);
                textInputEditTextE0.setSelection(str3.length());
            }
        }
        a0().l(m0());
    }

    public final void Z(xq6 xq6Var, boolean z) {
        String string;
        String string2;
        wq6 wq6Var;
        String string3;
        if (d0() != dd1.S3) {
            return;
        }
        this.I0 = true;
        try {
            TextInputLayout textInputLayoutH0 = h0();
            Resources resources = getResources();
            resources.getClass();
            String str = xq6Var.g;
            String str2 = xq6Var.f;
            String string4 = resources.getString(str2 != null ? R.string.s3_default_endpoint_value : R.string.s3_endpoint_example_value, str2 == null ? xq6Var.d : str2);
            string4.getClass();
            p0(textInputLayoutH0, string4);
            TextInputLayout textInputLayout = (TextInputLayout) this.p0.getValue();
            Resources resources2 = getResources();
            resources2.getClass();
            String str3 = null;
            if (str != null) {
                string = resources2.getString(R.string.s3_default_region_value, str);
            } else {
                String str4 = xq6Var.h;
                string = str4 != null ? resources2.getString(R.string.s3_region_example_value, str4) : null;
            }
            p0(textInputLayout, string);
            if (z) {
                Editable text = g0().getText();
                if (text != null) {
                    text.toString();
                }
                Editable text2 = f0().getText();
                if (text2 != null) {
                    text2.toString();
                }
                wq6Var = new wq6(str2, str);
            } else {
                Editable text3 = g0().getText();
                String string5 = text3 != null ? text3.toString() : null;
                Editable text4 = f0().getText();
                String string6 = text4 != null ? text4.toString() : null;
                xq6 xq6Var2 = xq6.j;
                if (string5 == null || (string2 = nq7.H0(string5).toString()) == null || string2.length() <= 0) {
                    string2 = null;
                }
                if (string2 != null) {
                    str2 = string2;
                }
                if (string6 != null && (string3 = nq7.H0(string6).toString()) != null && string3.length() > 0) {
                    str3 = string3;
                }
                if (str3 != null) {
                    str = str3;
                }
                wq6Var = new wq6(str2, str);
            }
            q0(g0(), wq6Var.a);
            q0(f0(), wq6Var.b);
        } finally {
            this.I0 = false;
        }
    }

    public final void a0(oq8 oq8Var, oq8 oq8Var2, boolean z) {
        String string;
        String str = oq8Var.e;
        String str2 = oq8Var.f;
        if (d0() != dd1.WebDav) {
            return;
        }
        this.K0 = true;
        try {
            TextInputLayout textInputLayoutH0 = h0();
            Resources resources = getResources();
            resources.getClass();
            p0(textInputLayoutH0, str != null ? resources.getString(R.string.webdav_default_server_value, str) : null);
            TextInputLayout textInputLayout = (TextInputLayout) this.i0.getValue();
            Resources resources2 = getResources();
            resources2.getClass();
            if (str2 != null) {
                string = resources2.getString(R.string.webdav_default_path_value, str2);
            } else {
                String str3 = oq8Var.g;
                string = str3 != null ? resources2.getString(R.string.webdav_path_example_value, str3) : null;
            }
            p0(textInputLayout, string);
            if (z) {
                if ((str == null && str2 == null) ? false : true) {
                    q0(g0(), str);
                    q0(e0(), str2);
                } else if (oq8Var2 != null) {
                    if ((oq8Var2.e == null && oq8Var2.f == null) ? false : true) {
                        g0().setText((CharSequence) null);
                        e0().setText((CharSequence) null);
                    }
                }
            } else {
                Editable text = g0().getText();
                String string2 = text != null ? text.toString() : null;
                Editable text2 = e0().getText();
                nq8 nq8VarA = oq8Var.a(string2, text2 != null ? text2.toString() : null);
                q0(g0(), nq8VarA.a);
                q0(e0(), nq8VarA.b);
            }
        } finally {
            this.K0 = false;
        }
    }

    public final nc1 c0() {
        Object string;
        String string2;
        gv7 gv7Var = new gv7(new o42(this, 3));
        if (!sz8.I((TextInputLayout) this.s0.getValue())) {
            return (nc1) gv7Var.getValue();
        }
        Iterator<T> it = d0().getAuthTypes().iterator();
        while (true) {
            string = null;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            String displayName = ((nc1) next).getDisplayName();
            Editable text = ((AutoCompleteTextView) this.t0.getValue()).getText();
            if (text != null && (string2 = text.toString()) != null) {
                string = nq7.H0(string2).toString();
            }
            if (pe4.d(displayName, string)) {
                string = next;
                break;
            }
        }
        nc1 nc1Var = (nc1) string;
        return nc1Var == null ? (nc1) gv7Var.getValue() : nc1Var;
    }

    public final dd1 d0() {
        return (dd1) this.Z.getValue();
    }

    public final TextInputEditText e0() {
        return (TextInputEditText) this.j0.getValue();
    }

    public final TextInputEditText f0() {
        return (TextInputEditText) this.q0.getValue();
    }

    public final TextInputEditText g0() {
        return (TextInputEditText) this.b0.getValue();
    }

    public final TextInputLayout h0() {
        return (TextInputLayout) this.a0.getValue();
    }

    public final AutoCompleteTextView i0() {
        return (AutoCompleteTextView) this.d0.getValue();
    }

    public final AutoCompleteTextView j0() {
        return (AutoCompleteTextView) this.g0.getValue();
    }

    public final t52 k0() {
        return (t52) this.Y.getValue();
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: l0, reason: merged with bridge method [inline-methods] */
    public final m62 V() {
        return (m62) this.X.getValue();
    }

    public final CloudCredentials m0() {
        fd1 fd1Var;
        CloudCredentials.CloudPrivateKey cloudPrivateKey;
        String str;
        String strA;
        CloudServiceId cloudServiceId;
        na1 na1VarA;
        na1 na1VarA2;
        String string;
        String string2;
        String string3;
        Editable text;
        String string4;
        String string5;
        String string6;
        String string7;
        String string8;
        Object next;
        String displayName;
        Editable text2;
        String string9;
        nc1 nc1VarC0 = c0();
        String constant = d0().getConstant();
        gv7 gv7Var = new gv7(new o42(this, 4));
        if (sz8.I((TextInputLayout) this.k0.getValue())) {
            Iterator<T> it = d0().getProtocols().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                displayName = ((fd1) next).getDisplayName();
                text2 = ((AutoCompleteTextView) this.l0.getValue()).getText();
            } while (!pe4.d(displayName, (text2 == null || (string9 = text2.toString()) == null) ? null : nq7.H0(string9).toString()));
            fd1Var = (fd1) next;
            if (fd1Var == null) {
                fd1Var = (fd1) gv7Var.getValue();
            }
        } else {
            fd1Var = (fd1) gv7Var.getValue();
        }
        fd1 fd1Var2 = fd1Var;
        TextInputEditText textInputEditTextG0 = g0();
        ai6 ai6Var = gc1.a;
        Editable text3 = textInputEditTextG0.getText();
        String strA2 = gc1.a(text3 != null ? text3.toString() : null);
        Editable text4 = e0().getText();
        String string10 = (text4 == null || (string8 = text4.toString()) == null) ? null : nq7.H0(string8).toString();
        Editable text5 = ((TextInputEditText) this.n0.getValue()).getText();
        Integer numW = (text5 == null || (string6 = text5.toString()) == null || (string7 = nq7.H0(string6).toString()) == null) ? null : uq7.W(10, string7);
        boolean zIsChecked = k0().y.isChecked();
        Boolean boolValueOf = zIsChecked ? Boolean.valueOf(zIsChecked) : null;
        Editable text6 = ((TextInputEditText) this.v0.getValue()).getText();
        String string11 = (text6 == null || (string5 = text6.toString()) == null) ? null : nq7.H0(string5).toString();
        String string12 = (nc1VarC0 != nc1.USERNAME_PASSWORD || (text = ((TextInputEditText) this.x0.getValue()).getText()) == null || (string4 = text.toString()) == null) ? null : nq7.H0(string4).toString();
        if (nc1VarC0 == nc1.KEY_BASED) {
            Editable text7 = ((TextInputEditText) this.C0.getValue()).getText();
            String string13 = (text7 == null || (string3 = text7.toString()) == null) ? null : nq7.H0(string3).toString();
            Editable text8 = ((TextInputEditText) this.E0.getValue()).getText();
            cloudPrivateKey = new CloudCredentials.CloudPrivateKey(string13, (text8 == null || (string2 = text8.toString()) == null) ? null : nq7.H0(string2).toString());
        } else {
            cloudPrivateKey = null;
        }
        Editable text9 = f0().getText();
        String string14 = (text9 == null || (string = text9.toString()) == null) ? null : nq7.H0(string).toString();
        dd1 dd1VarD0 = d0();
        int[] iArr = f52.b;
        int i = iArr[dd1VarD0.ordinal()];
        if (i != 1) {
            str = i != 2 ? null : this.J0.a;
        } else {
            str = this.H0.a;
        }
        int i2 = iArr[d0().ordinal()];
        if (i2 == 1 || i2 == 2) {
            strA = null;
        } else {
            Editable text10 = g0().getText();
            strA = gc1.a(text10 != null ? text10.toString() : null);
        }
        CloudCredentials cloudCredentials = new CloudCredentials(constant, fd1Var2, strA2, string10, numW, nc1VarC0, string11, string12, cloudPrivateKey, boolValueOf, null, string14, str, strA, 1024, null);
        CloudCredentials cloudCredentials2 = this.O0;
        if (cloudCredentials2 != null && (cloudServiceId = cloudCredentials2.getCloudServiceId()) != null) {
            CloudServiceId cloudServiceId2 = zm5.u(cloudServiceId) ? cloudServiceId : null;
            if (cloudServiceId2 != null && (na1VarA = z85.a(cloudCredentials)) != null && (na1VarA2 = z85.a(cloudCredentials2)) != null && cloudCredentials.getCloudType() == cloudCredentials2.getCloudType() && cloudCredentials.getProtocol() == cloudCredentials2.getProtocol() && na1VarA.equals(na1VarA2)) {
                dd1 cloudType = cloudCredentials.getCloudType();
                int[] iArr2 = u52.a;
                if (pe4.d(iArr2[cloudType.ordinal()] == 1 ? z85.A(cloudCredentials.getPath()) : null, iArr2[cloudCredentials2.getCloudType().ordinal()] == 1 ? z85.A(cloudCredentials2.getPath()) : null) && pe4.d(z85.A(cloudCredentials.getUsername()), z85.A(cloudCredentials2.getUsername()))) {
                    if (pe4.d(iArr2[cloudCredentials.getCloudType().ordinal()] == 1 ? z85.A(cloudCredentials.getRegion()) : null, iArr2[cloudCredentials2.getCloudType().ordinal()] == 1 ? z85.A(cloudCredentials2.getRegion()) : null)) {
                        return cloudCredentials.copy((16383 & 1) != 0 ? cloudCredentials.cloudTypeConstant : null, (16383 & 2) != 0 ? cloudCredentials.protocol : null, (16383 & 4) != 0 ? cloudCredentials.server : null, (16383 & 8) != 0 ? cloudCredentials.path : null, (16383 & 16) != 0 ? cloudCredentials.port : null, (16383 & 32) != 0 ? cloudCredentials.authType : null, (16383 & 64) != 0 ? cloudCredentials.username : null, (16383 & 128) != 0 ? cloudCredentials.password : null, (16383 & 256) != 0 ? cloudCredentials.key : null, (16383 & 512) != 0 ? cloudCredentials.encryption : null, (16383 & 1024) != 0 ? cloudCredentials.cloudServiceId : cloudServiceId2, (16383 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? cloudCredentials._region : null, (16383 & 4096) != 0 ? cloudCredentials.providerPresetId : null, (16383 & 8192) != 0 ? cloudCredentials.displayName : null);
                    }
                }
            }
        }
        return cloudCredentials;
    }

    public final void n0(nc1 nc1Var) {
        int i = f52.a[nc1Var.ordinal()];
        gv7 gv7Var = this.y0;
        gv7 gv7Var2 = this.w0;
        if (i == 1) {
            sz8.c0((TextInputLayout) gv7Var2.getValue());
            sz8.W((LinearLayout) gv7Var.getValue());
        } else if (i != 2) {
            q.j();
        } else {
            sz8.W((TextInputLayout) gv7Var2.getValue());
            sz8.c0((LinearLayout) gv7Var.getValue());
        }
    }

    public final void o0(String str, v42 v42Var, bt3 bt3Var) {
        dz5 dz5Var = dz5.a;
        if (dz5.h("android.permission.ACCESS_LOCAL_NETWORK")) {
            bt3Var.invoke();
            return;
        }
        mp6 mp6Var = mp6.a;
        if (!mp6.f()) {
            dz5.a(this, new e52(bt3Var, this, str), "android.permission.ACCESS_LOCAL_NETWORK");
            return;
        }
        if (this.N0) {
            return;
        }
        this.N0 = true;
        if (v42Var != null) {
            v42Var.invoke(Boolean.TRUE);
        }
        zn4 zn4Var = zn4.a;
        zn4.b(null, new j52(this, v42Var, bt3Var, str, null));
    }

    @Override // defpackage.er6, defpackage.sa1, androidx.fragment.app.u, defpackage.io1, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        Uri data;
        if (i != 593 || i2 != -1) {
            super.onActivityResult(i, i2, intent);
        } else {
            if (intent == null || (data = intent.getData()) == null) {
                return;
            }
            m62 m62VarA0 = a0();
            zn4 zn4Var = zn4.a;
            zn4.c(new y2(8, m62VarA0, data));
        }
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        if (bundle != null) {
            bundle.clear();
        }
        super.onCreate(bundle);
        setContentView(k0().a);
        Intent intent = getIntent();
        if ((intent != null ? (dd1) intent.getSerializableExtra("cloud_type") : null) != null) {
            B();
            sz8.b(k0().t, 7);
            zn4 zn4Var = zn4.a;
            zn4.b(null, new h52(this, null));
            return;
        }
        vr6.e$default(vr6.INSTANCE, r(), "Null CloudType!", null, 4, null);
        Context applicationContext = getApplicationContext();
        applicationContext.getClass();
        zn4 zn4Var2 = zn4.a;
        zn4.e(new cv(14, applicationContext, "Null CloudType!"));
        finish();
    }

    public final void t0(final boolean z, final boolean z2) {
        CloudCredentials cloudCredentialsM0 = m0();
        Set set = yz4.a;
        dd1 dd1VarD0 = d0();
        String server = cloudCredentialsM0.getServer();
        int i = Build.VERSION.SDK_INT;
        SwiftApp.Companion companion = SwiftApp.d;
        if (!yz4.b(dd1VarD0, server, i, SwiftApp.Companion.c().getApplicationInfo().targetSdkVersion)) {
            a0().k(z, z2);
            return;
        }
        dd1 dd1VarD1 = d0();
        String server2 = cloudCredentialsM0.getServer();
        dd1VarD1.getClass();
        vz4 vz4VarC = yz4.c(server2);
        String str = vz4VarC != null ? vz4VarC.a : null;
        o0((str == null || str.length() == 0) ? eq3.k("Local network permission is required for ", dd1VarD1.getDisplayNameEn(), ".") : eq3.l("Local network permission is required for ", dd1VarD1.getDisplayNameEn(), " server ", str, "."), null, new bt3() { // from class: c52
            @Override // defpackage.bt3
            public final Object invoke() {
                int i2 = CsActivity.P0;
                this.a.a0().k(z, z2);
                return be8.a;
            }
        });
    }

    public final void u0(boolean z) {
        dd1 dd1VarD0 = d0();
        dd1VarD0.getClass();
        if (z85.j(dd1VarD0) == null || this.M0) {
            return;
        }
        m86 m86Var = k0().r;
        MaterialCardView materialCardView = (MaterialCardView) m86Var.e;
        boolean z2 = !z;
        materialCardView.setEnabled(z2);
        materialCardView.setClickable(z2);
        sz8.d0((ProgressBar) m86Var.f, z);
        sz8.d0((ImageView) m86Var.d, z2);
        ((TextView) m86Var.n).setText(getString(z ? R.string.local_server_scan_loading_title : R.string.local_server_scan_title, d0().getDisplayName()));
    }

    public final void v0() {
        gv7 gv7Var = new gv7(new n42(this, 2));
        ((TextInputLayout) this.m0.getValue()).setHint(getString(R.string.port) + " (" + getString(R.string.default_word) + "=" + ((Number) gv7Var.getValue()).intValue() + ")");
    }

    public final void w0() {
        gv7 gv7Var = this.p0;
        if (sz8.I((TextInputLayout) gv7Var.getValue())) {
            CloudCredentials cloudCredentials = a0().g;
            String strExtractRegion = cloudCredentials != null ? cloudCredentials.extractRegion() : null;
            ((TextInputLayout) gv7Var.getValue()).setHint((strExtractRegion == null || strExtractRegion.length() == 0) ? "Region" : eq3.l("Region (", getString(R.string.default_word), "=", strExtractRegion, ")"));
        }
    }
}
