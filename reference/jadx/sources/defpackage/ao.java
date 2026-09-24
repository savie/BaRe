package defpackage;

import android.content.Context;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.view.MenuItem;
import java.io.File;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.util.ArrayList;
import javax.crypto.AEADBadTagException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ao implements dh5 {
    public Object a;
    public Object b;

    public ao(byte[] bArr) throws GeneralSecurityException {
        if (!u48.e(1)) {
            m0.h("Can not use ChaCha20Poly1305 in FIPS-mode.");
            throw null;
        }
        this.a = q(bArr, 1);
        this.b = q(bArr, 0);
    }

    public static float h(int i, int i2, int i3) {
        return iz1.c((i - i2) / i3, 0.0f, 1.0f);
    }

    public static byte[] u(byte[] bArr, ByteBuffer byteBuffer) {
        int length = bArr.length % 16 == 0 ? bArr.length : (bArr.length + 16) - (bArr.length % 16);
        int iRemaining = byteBuffer.remaining();
        int i = iRemaining % 16;
        int i2 = (i == 0 ? iRemaining : (iRemaining + 16) - i) + length;
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(i2 + 16).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.put(bArr);
        byteBufferOrder.position(length);
        byteBufferOrder.put(byteBuffer);
        byteBufferOrder.position(i2);
        byteBufferOrder.putLong(bArr.length);
        byteBufferOrder.putLong(iRemaining);
        return byteBufferOrder.array();
    }

    public abstract void c();

    public void d() {
        zn znVar = (zn) this.a;
        if (znVar != null) {
            try {
                ((fo) this.b).r.unregisterReceiver(znVar);
            } catch (IllegalArgumentException unused) {
            }
            this.a = null;
        }
    }

    public abstract Object e(String str);

    public abstract IntentFilter f();

    public abstract int g();

    public MenuItem i(MenuItem menuItem) {
        if (!(menuItem instanceof ls7)) {
            return menuItem;
        }
        ls7 ls7Var = (ls7) menuItem;
        if (((dg7) this.b) == null) {
            this.b = new dg7(0);
        }
        MenuItem menuItem2 = (MenuItem) ((dg7) this.b).get(ls7Var);
        if (menuItem2 != null) {
            return menuItem2;
        }
        nc5 nc5Var = new nc5((Context) this.a, ls7Var);
        ((dg7) this.b).put(ls7Var, nc5Var);
        return nc5Var;
    }

    public abstract void j();

    public abstract void k();

    public abstract void l(im0 im0Var);

    public abstract void m();

    public void n() {
        d();
        IntentFilter intentFilterF = f();
        if (intentFilterF.countActions() == 0) {
            return;
        }
        if (((zn) this.a) == null) {
            this.a = new zn(this);
        }
        ((fo) this.b).r.registerReceiver((zn) this.a, intentFilterF);
    }

    public abstract void o();

    public abstract void p();

    public abstract gk1 q(byte[] bArr, int i);

    public String r(String str, String str2) {
        return u48.n((String) this.a, str, "?key=", str2);
    }

    public void s(ByteBuffer byteBuffer, byte[] bArr, byte[] bArr2, byte[] bArr3) throws GeneralSecurityException {
        if (byteBuffer.remaining() < bArr2.length + 16) {
            c6.f("Given ByteBuffer output is too small");
            return;
        }
        int iPosition = byteBuffer.position();
        gk1 gk1Var = (gk1) this.a;
        gk1Var.getClass();
        if (byteBuffer.remaining() < bArr2.length) {
            c6.f("Given ByteBuffer output is too small");
            return;
        }
        gk1Var.F(bArr, byteBuffer, ByteBuffer.wrap(bArr2));
        byteBuffer.position(iPosition);
        byteBuffer.limit(byteBuffer.limit() - 16);
        if (bArr3 == null) {
            bArr3 = new byte[0];
        }
        ByteBuffer byteBufferD = ((gk1) this.b).D(bArr, 0);
        byte[] bArr4 = new byte[32];
        byteBufferD.get(bArr4);
        byte[] bArrF = iz1.F(bArr4, u(bArr3, byteBuffer));
        byteBuffer.limit(byteBuffer.limit() + 16);
        byteBuffer.put(bArrF);
    }

    public byte[] t(ByteBuffer byteBuffer, byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (byteBuffer.remaining() < 16) {
            m0.h("ciphertext too short");
            return null;
        }
        int iPosition = byteBuffer.position();
        byte[] bArr3 = new byte[16];
        byteBuffer.position(byteBuffer.limit() - 16);
        byteBuffer.get(bArr3);
        byteBuffer.position(iPosition);
        byteBuffer.limit(byteBuffer.limit() - 16);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        try {
            byte[] bArr4 = new byte[32];
            ((gk1) this.b).D(bArr, 0).get(bArr4);
            if (!MessageDigest.isEqual(iz1.F(bArr4, u(bArr2, byteBuffer)), bArr3)) {
                throw new GeneralSecurityException("invalid MAC");
            }
            byteBuffer.position(iPosition);
            gk1 gk1Var = (gk1) this.a;
            gk1Var.getClass();
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(byteBuffer.remaining());
            gk1Var.F(bArr, byteBufferAllocate, byteBuffer);
            return byteBufferAllocate.array();
        } catch (GeneralSecurityException e) {
            throw new AEADBadTagException(e.toString());
        }
    }

    @Override // defpackage.dh5
    public ch5 y(ai5 ai5Var) {
        Context context = (Context) this.a;
        Class cls = (Class) this.b;
        return new kc6(context, ai5Var.a(File.class, cls), ai5Var.a(Uri.class, cls), cls);
    }

    public /* synthetic */ ao(Object obj, Object obj2) {
        this.a = obj;
        this.b = obj2;
    }

    public ao(Bundle bundle, String str) {
        str.getClass();
        bundle.getClass();
        this.a = str;
        this.b = bundle;
    }

    public ao(Context context) {
        this.a = context;
    }

    public ao(int i) {
        this.b = new ArrayList();
        for (int i2 = 0; i2 < i; i2++) {
            ((ArrayList) this.b).add(new sp2());
        }
    }

    public ao(fo foVar) {
        this.b = foVar;
    }
}
