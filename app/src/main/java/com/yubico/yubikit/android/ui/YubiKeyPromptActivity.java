package com.yubico.yubikit.android.ui;

import android.app.Activity;
import android.nfc.NfcAdapter;
import android.os.Build;
import android.os.Bundle;
import android.widget.Button;
import android.widget.TextView;
import com.yubico.yubikit.android.ui.YubiKeyPromptActivity;
import defpackage.bp0;
import defpackage.bq4;
import defpackage.g7;
import defpackage.ke;
import defpackage.kg8;
import defpackage.l15;
import defpackage.ly8;
import defpackage.ms8;
import defpackage.o15;
import defpackage.of;
import defpackage.oy8;
import defpackage.rm5;
import defpackage.vz0;
import defpackage.xs1;
import defpackage.yf1;
import defpackage.zg8;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class YubiKeyPromptActivity extends Activity {
    public static final l15 q = o15.b(YubiKeyPromptActivity.class);
    public yf1 b;
    public Button e;
    public Button f;
    public TextView k;
    public boolean n;
    public boolean p;
    public final oy8 a = new oy8();
    public boolean c = true;
    public int d = 0;

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle extras = getIntent().getExtras();
        Objects.requireNonNull(extras);
        this.n = extras.getBoolean("ALLOW_USB", true);
        this.p = extras.getBoolean("ALLOW_NFC", true);
        Class cls = Build.VERSION.SDK_INT >= 33 ? (Class) extras.getSerializable("ACTION_CLASS", Class.class) : (Class) extras.getSerializable("ACTION_CLASS");
        if (cls != null) {
            try {
                if (ly8.class.isAssignableFrom(cls)) {
                    xs1.r(cls.getDeclaredConstructor(null).newInstance(null));
                    setContentView(extras.getInt("CONTENT_VIEW_ID", R.layout.yubikit_yubikey_prompt_content));
                    if (extras.containsKey("TITLE_ID")) {
                        setTitle(extras.getInt("TITLE_ID"));
                    }
                    TextView textView = (TextView) findViewById(R.id.yubikit_prompt_title);
                    if (textView != null) {
                        textView.setText(getTitle());
                    }
                    this.k = (TextView) findViewById(extras.getInt("HELP_TEXT_VIEW_ID", R.id.yubikit_prompt_help_text_view));
                    Button button = (Button) findViewById(extras.getInt("CANCEL_BUTTON_ID", R.id.yubikit_prompt_cancel_btn));
                    this.e = button;
                    button.setFocusable(false);
                    this.e.setOnClickListener(new g7(this, 17));
                    yf1 yf1Var = new yf1(this);
                    this.b = yf1Var;
                    if (this.n) {
                        ((zg8) yf1Var.b).b(new kg8(), new vz0() { // from class: my8
                            @Override // defpackage.vz0
                            public final void invoke(Object obj) {
                                wg8 wg8Var = (wg8) obj;
                                YubiKeyPromptActivity yubiKeyPromptActivity = this.a;
                                yubiKeyPromptActivity.d++;
                                v12 v12Var = new v12(yubiKeyPromptActivity, 4);
                                if (wg8Var.a.isTerminated()) {
                                    v12Var.run();
                                } else {
                                    wg8Var.k = v12Var;
                                }
                                yubiKeyPromptActivity.runOnUiThread(new jy2(yubiKeyPromptActivity, 5));
                                yubiKeyPromptActivity.getIntent().getExtras();
                                throw null;
                            }
                        });
                    }
                    if (this.p) {
                        Button button2 = (Button) findViewById(extras.getInt("ENABLE_NFC_BUTTON_ID", R.id.yubikit_prompt_enable_nfc_btn));
                        this.f = button2;
                        button2.setFocusable(false);
                        this.f.setOnClickListener(new of(this, 12));
                        return;
                    }
                    return;
                }
            } catch (IllegalAccessException e) {
                e = e;
                ms8.A(1, q, "Unable to instantiate ConnectionAction", e);
                finish();
            } catch (IllegalStateException e2) {
                e = e2;
                ms8.A(1, q, "Unable to instantiate ConnectionAction", e);
                finish();
            } catch (InstantiationException e3) {
                e = e3;
                ms8.A(1, q, "Unable to instantiate ConnectionAction", e);
                finish();
            } catch (NoSuchMethodException e4) {
                e = e4;
                ms8.A(1, q, "Unable to instantiate ConnectionAction", e);
                finish();
            } catch (InvocationTargetException e5) {
                e = e5;
                ms8.A(1, q, "Unable to instantiate ConnectionAction", e);
                finish();
            }
        }
        throw new IllegalStateException("Missing or invalid ConnectionAction class");
    }

    @Override // android.app.Activity
    public void onDestroy() {
        if (this.n) {
            ((zg8) this.b.b).a();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public final void onPause() {
        bp0 bp0Var;
        if (this.p && (bp0Var = (bp0) this.b.c) != null) {
            ExecutorService executorService = (ExecutorService) bp0Var.c;
            if (executorService != null) {
                executorService.shutdown();
                bp0Var.c = null;
            }
            ((NfcAdapter) ((ke) bp0Var.b).b).disableReaderMode(this);
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        if (this.p) {
            this.f.setVisibility(8);
            try {
                yf1 yf1Var = this.b;
                bq4 bq4Var = new bq4();
                vz0 vz0Var = new vz0() { // from class: ny8
                    @Override // defpackage.vz0
                    public final void invoke(Object obj) {
                        l15 l15Var = YubiKeyPromptActivity.q;
                        this.a.getIntent().getExtras();
                        throw null;
                    }
                };
                bp0 bp0Var = (bp0) yf1Var.c;
                if (bp0Var == null) {
                    throw new rm5("NFC is not available on this device", false);
                }
                bp0Var.a(this, bq4Var, vz0Var);
            } catch (rm5 e) {
                this.c = false;
                this.k.setText(R.string.yubikit_prompt_plug_in);
                if (e.a) {
                    this.f.setVisibility(0);
                }
            }
        }
    }
}
