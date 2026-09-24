package defpackage;

import android.hardware.usb.UsbDevice;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yg8 {
    public final vz0 a;
    public final kg8 b;
    public final HashMap c = new HashMap();
    public final /* synthetic */ zg8 d;

    public yg8(zg8 zg8Var, kg8 kg8Var, vz0 vz0Var) {
        this.d = zg8Var;
        this.b = kg8Var;
        this.a = vz0Var;
    }

    public final void a(UsbDevice usbDevice) {
        zg8 zg8Var = this.d;
        try {
            wg8 wg8Var = new wg8(zg8Var.b, usbDevice);
            this.c.put(usbDevice, wg8Var);
            if (!this.b.a || wg8Var.c.hasPermission(wg8Var.d)) {
                this.a.invoke(wg8Var);
            } else {
                zg8.d.k("request permission");
                ng8.e(zg8Var.a, usbDevice, new xg8(this, wg8Var));
            }
        } catch (IllegalArgumentException unused) {
            ms8.B(4, zg8.d, "Attached usbDevice(vid={},pid={}) is not recognized as a valid YubiKey", Integer.valueOf(usbDevice.getVendorId()), Integer.valueOf(usbDevice.getProductId()));
        }
    }
}
