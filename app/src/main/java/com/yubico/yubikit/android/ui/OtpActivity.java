package com.yubico.yubikit.android.ui;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.util.SparseArray;
import android.view.InputDevice;
import android.view.KeyEvent;
import com.yubico.yubikit.android.ui.OtpActivity;
import defpackage.kg8;
import defpackage.s79;
import defpackage.vq;
import defpackage.vz0;
import defpackage.wu5;
import defpackage.yf1;
import defpackage.zg8;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class OtpActivity extends YubiKeyPromptActivity {
    public static final /* synthetic */ int x = 0;
    public vq r;
    public int t = 0;

    @Override // com.yubico.yubikit.android.ui.YubiKeyPromptActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        getIntent().putExtra("ACTION_CLASS", wu5.class);
        getIntent().putExtra("ALLOW_USB", false);
        super.onCreate(bundle);
        yf1 yf1Var = this.b;
        kg8 kg8Var = new kg8();
        kg8Var.a = false;
        ((zg8) yf1Var.b).b(kg8Var, new vz0() { // from class: vu5
            @Override // defpackage.vz0
            public final void invoke(Object obj) {
                wg8 wg8Var = (wg8) obj;
                OtpActivity otpActivity = this.a;
                int i = 1;
                otpActivity.t++;
                in inVar = new in(otpActivity, i);
                if (wg8Var.a.isTerminated()) {
                    inVar.run();
                } else {
                    wg8Var.k = inVar;
                }
                otpActivity.runOnUiThread(new mr3(otpActivity, i));
            }
        });
        this.r = new vq(new s79(this, 4));
    }

    @Override // com.yubico.yubikit.android.ui.YubiKeyPromptActivity, android.app.Activity
    public final void onDestroy() {
        ((zg8) this.b.b).a();
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        final vq vqVar = this.r;
        s79 s79Var = (s79) vqVar.d;
        SparseArray sparseArray = (SparseArray) vqVar.b;
        InputDevice device = keyEvent.getDevice();
        if (device == null || device.getVendorId() != 4176) {
            return false;
        }
        if (keyEvent.getAction() == 1) {
            final int deviceId = keyEvent.getDeviceId();
            StringBuilder sb = (StringBuilder) sparseArray.get(deviceId, new StringBuilder());
            if (keyEvent.getKeyCode() != 66 && keyEvent.getKeyCode() != 160) {
                if (sb.length() == 0) {
                    ((Handler) vqVar.c).postDelayed(new Runnable() { // from class: zu5
                        @Override // java.lang.Runnable
                        public final void run() {
                            vq vqVar2 = vqVar;
                            SparseArray sparseArray2 = (SparseArray) vqVar2.b;
                            StringBuilder sb2 = new StringBuilder();
                            int i2 = deviceId;
                            StringBuilder sb3 = (StringBuilder) sparseArray2.get(i2, sb2);
                            if (sb3.length() > 0) {
                                s79 s79Var2 = (s79) vqVar2.d;
                                String string = sb3.toString();
                                s79Var2.getClass();
                                Intent intent = new Intent();
                                intent.putExtra("otp", string);
                                OtpActivity otpActivity = (OtpActivity) s79Var2.b;
                                otpActivity.setResult(-1, intent);
                                otpActivity.finish();
                                sparseArray2.delete(i2);
                            }
                        }
                    }, 1000L);
                    ((OtpActivity) s79Var.b).k.setText(R.string.yubikit_prompt_wait);
                }
                sb.append((char) keyEvent.getUnicodeChar());
                sparseArray.put(deviceId, sb);
                return true;
            }
            String string = sb.toString();
            s79Var.getClass();
            Intent intent = new Intent();
            intent.putExtra("otp", string);
            OtpActivity otpActivity = (OtpActivity) s79Var.b;
            otpActivity.setResult(-1, intent);
            otpActivity.finish();
            sparseArray.delete(deviceId);
        }
        return true;
    }
}
