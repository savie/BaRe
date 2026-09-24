package defpackage;

import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import com.nimbusds.jose.crypto.PasswordBasedEncrypter;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rg8 extends sg8 implements ai7 {
    public static final l15 n = o15.b(rg8.class);
    public final UsbDeviceConnection d;
    public final UsbEndpoint e;
    public final UsbEndpoint f;
    public byte k;

    public rg8(UsbDeviceConnection usbDeviceConnection, UsbInterface usbInterface, UsbEndpoint usbEndpoint, UsbEndpoint usbEndpoint2) throws IOException {
        super(usbDeviceConnection, usbInterface);
        this.k = (byte) 0;
        this.d = usbDeviceConnection;
        this.f = usbEndpoint;
        this.e = usbEndpoint2;
        a((byte) 98, new byte[0]);
    }

    @Override // defpackage.ai7
    public final byte[] I(byte[] bArr) {
        return a((byte) 111, bArr);
    }

    public final byte[] a(byte b, byte[] bArr) throws IOException {
        int i;
        l15 l15Var;
        byte[] bArr2;
        int length = bArr.length;
        byte b2 = this.k;
        this.k = (byte) (b2 + 1);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArr.length + 10);
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        byte[] bArrArray = byteBufferAllocate.order(byteOrder).put(ByteBuffer.allocate(10).order(byteOrder).put(b).putInt(length).put((byte) 0).put(b2).put(qg8.g).array()).put(bArr).array();
        int iBulkTransfer = 0;
        int i2 = 0;
        while (true) {
            int length2 = bArrArray.length;
            i = 5;
            l15Var = n;
            if (i2 >= length2 && iBulkTransfer != this.e.getMaxPacketSize()) {
                break;
            }
            iBulkTransfer = this.d.bulkTransfer(this.e, bArrArray, i2, bArrArray.length - i2, PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT);
            if (iBulkTransfer <= 0) {
                if (iBulkTransfer >= 0) {
                    break;
                }
                throw new IOException("Failed to send " + (bArrArray.length - i2) + " bytes");
            }
            ms8.B(5, l15Var, "{} bytes sent over ccid: {}", Integer.valueOf(iBulkTransfer), x13.f(bArrArray, i2, iBulkTransfer));
            i2 += iBulkTransfer;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        UsbEndpoint usbEndpoint = this.f;
        int maxPacketSize = usbEndpoint.getMaxPacketSize();
        byte[] bArr3 = new byte[maxPacketSize];
        boolean z = false;
        boolean z2 = false;
        qg8 qg8Var = null;
        while (true) {
            int iBulkTransfer2 = this.d.bulkTransfer(usbEndpoint, bArr3, maxPacketSize, PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT);
            if (iBulkTransfer2 > 0) {
                bArr2 = null;
                ms8.B(i, l15Var, "{} bytes received: {}", Integer.valueOf(iBulkTransfer2), x13.f(bArr3, 0, iBulkTransfer2));
                if (z) {
                    byteArrayOutputStream.write(bArr3, 0, iBulkTransfer2);
                } else {
                    qg8Var = new qg8();
                    if (maxPacketSize > 10) {
                        ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr3, 0, 10).order(ByteOrder.LITTLE_ENDIAN);
                        qg8Var.a = byteBufferOrder.get();
                        qg8Var.b = byteBufferOrder.getInt();
                        qg8Var.c = byteBufferOrder.get();
                        qg8Var.d = byteBufferOrder.get();
                        qg8Var.e = byteBufferOrder.get();
                        qg8Var.f = byteBufferOrder.get();
                        byteBufferOrder.get();
                    }
                    byte b3 = qg8Var.e;
                    z2 = (b3 & (-128)) == -128;
                    byte b4 = (byte) (this.k - 1);
                    if (qg8Var.a == -128 && qg8Var.c == 0 && qg8Var.d == b4 && b3 == 0) {
                        byteArrayOutputStream.write(bArr3, 0, iBulkTransfer2);
                        z = true;
                    } else if (qg8Var.f != 0 && !z2) {
                        Locale locale = Locale.ROOT;
                        ms8.B(4, l15Var, "Invalid response from card reader bStatus={} and bError={}", String.format(locale, "0x%02X", Byte.valueOf(b3)), String.format(locale, "0x%02X", Byte.valueOf(qg8Var.f)));
                        y5.m("Invalid response from card reader");
                        return null;
                    }
                }
            } else {
                bArr2 = null;
                if (iBulkTransfer2 < 0) {
                    y5.m("Failed to read response");
                    return null;
                }
            }
            if ((iBulkTransfer2 <= 0 || iBulkTransfer2 != maxPacketSize) && !z2) {
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                if (qg8Var != null && byteArray.length >= 10) {
                    return Arrays.copyOfRange(byteArray, 10, Math.min(byteArray.length - 10, qg8Var.b) + 10);
                }
                y5.m("Response is invalid");
                return bArr2;
            }
            i = 5;
        }
    }

    @Override // defpackage.ai7
    public final boolean e0() {
        return true;
    }

    @Override // defpackage.ai7
    public final int l() {
        return 1;
    }
}
