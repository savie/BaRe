package defpackage;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import java.io.Closeable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wg8 implements Closeable {
    public static final l15 n = o15.b(wg8.class);
    public static final tg8 p = new tg8();
    public final as1 b;
    public final UsbManager c;
    public final UsbDevice d;
    public final int e;
    public final ExecutorService a = Executors.newSingleThreadExecutor();
    public vg8 f = null;
    public Runnable k = null;

    public wg8(UsbManager usbManager, UsbDevice usbDevice) {
        int i;
        if (usbDevice.getVendorId() != 4176) {
            c6.f("Invalid vendor id");
            throw null;
        }
        int productId = usbDevice.getProductId();
        for (int i2 : dj7.C(17)) {
            switch (i2) {
                case 1:
                    i = 16;
                    break;
                case 2:
                    i = 272;
                    break;
                case 3:
                    i = 273;
                    break;
                case 4:
                    i = 274;
                    break;
                case 5:
                    i = 275;
                    break;
                case 6:
                    i = 276;
                    break;
                case 7:
                    i = 277;
                    break;
                case 8:
                    i = 278;
                    break;
                case XmlPullParser.COMMENT /* 9 */:
                    i = 288;
                    break;
                case 10:
                    i = 1025;
                    break;
                case ModuleDescriptor.MODULE_VERSION /* 11 */:
                    i = 1026;
                    break;
                case 12:
                    i = 1027;
                    break;
                case 13:
                    i = 1028;
                    break;
                case 14:
                    i = 1029;
                    break;
                case 15:
                    i = 1030;
                    break;
                case Argon2.V10 /* 16 */:
                    i = 1031;
                    break;
                case 17:
                    i = 1040;
                    break;
                default:
                    throw null;
            }
            if (i == productId) {
                this.e = i2;
                this.b = new as1(usbManager, usbDevice);
                this.d = usbDevice;
                this.c = usbManager;
                return;
            }
        }
        c6.f("invalid pid value");
        throw null;
    }

    public final void a(vz0 vz0Var) {
        if (!this.c.hasPermission(this.d)) {
            l0.e("Device access not permitted");
            return;
        }
        as1 as1Var = this.b;
        as1Var.getClass();
        vd4 vd4VarA = as1.a(rg8.class);
        if (vd4VarA == null || vd4VarA.b(as1Var.b) == null) {
            l0.e("Unsupported connection type");
            return;
        }
        if (xu5.class.isAssignableFrom(rg8.class)) {
            ug8 ug8Var = new ug8(vz0Var);
            vg8 vg8Var = this.f;
            if (vg8Var == null) {
                this.f = new vg8(this, ug8Var);
                return;
            } else {
                vg8Var.a.offer(ug8Var);
                return;
            }
        }
        vg8 vg8Var2 = this.f;
        if (vg8Var2 != null) {
            vg8Var2.close();
            this.f = null;
        }
        this.a.submit(new ln(6, this, vz0Var));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        n.k("Closing YubiKey device");
        vg8 vg8Var = this.f;
        if (vg8Var != null) {
            vg8Var.close();
            this.f = null;
        }
        Runnable runnable = this.k;
        ExecutorService executorService = this.a;
        if (runnable != null) {
            executorService.submit(runnable);
        }
        executorService.shutdown();
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("UsbYubiKeyDevice{usbDevice=");
        sb.append(this.d);
        sb.append(", usbPid=");
        switch (this.e) {
            case 1:
                str = "YKS_OTP";
                break;
            case 2:
                str = "NEO_OTP";
                break;
            case 3:
                str = "NEO_OTP_CCID";
                break;
            case 4:
                str = "NEO_CCID";
                break;
            case 5:
                str = "NEO_FIDO";
                break;
            case 6:
                str = "NEO_OTP_FIDO";
                break;
            case 7:
                str = "NEO_FIDO_CCID";
                break;
            case 8:
                str = "NEO_OTP_FIDO_CCID";
                break;
            case XmlPullParser.COMMENT /* 9 */:
                str = "SKY_FIDO";
                break;
            case 10:
                str = "YK4_OTP";
                break;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                str = "YK4_FIDO";
                break;
            case 12:
                str = "YK4_OTP_FIDO";
                break;
            case 13:
                str = "YK4_CCID";
                break;
            case 14:
                str = "YK4_OTP_CCID";
                break;
            case 15:
                str = "YK4_FIDO_CCID";
                break;
            case Argon2.V10 /* 16 */:
                str = "YK4_OTP_FIDO_CCID";
                break;
            case 17:
                str = "YKP_OTP_FIDO";
                break;
            default:
                str = "null";
                break;
        }
        sb.append(str);
        sb.append('}');
        return sb.toString();
    }
}
