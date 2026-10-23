package defpackage;

import android.database.Cursor;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.Reader;
import java.lang.reflect.Constructor;
import java.security.GeneralSecurityException;
import java.security.ProviderException;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import javax.crypto.AEADBadTagException;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ty3 implements fa6, js1 {
    public static volatile ty3 b;
    public static final Object c = new Object();
    public Object a;

    public ty3(int i) {
        switch (i) {
            case 2:
                this.a = new ByteArrayOutputStream();
                break;
            case 3:
                this.a = new bq1();
                break;
            case 4:
                DocumentBuilderFactory documentBuilderFactoryNewInstance = DocumentBuilderFactory.newInstance();
                this.a = documentBuilderFactoryNewInstance;
                documentBuilderFactoryNewInstance.setNamespaceAware(true);
                break;
            default:
                this.a = new HashSet();
                break;
        }
    }

    @Override // defpackage.js1
    public void B(String str) {
        ((TaskCompletionSource) this.a).setException(new Exception(str));
    }

    public void a(wv2 wv2Var) {
        try {
            ((ByteArrayOutputStream) this.a).write(wv2Var.getEncoded());
        } catch (Exception e) {
            e6.i(e.getMessage(), e);
        }
    }

    public void b(byte[] bArr) {
        try {
            ((ByteArrayOutputStream) this.a).write(bArr);
        } catch (Exception e) {
            e6.i(e.getMessage(), e);
        }
    }

    public byte[] c(byte[] bArr, byte[] bArr2) throws AEADBadTagException {
        bArr.getClass();
        try {
            return d(bArr, bArr2);
        } catch (ProviderException unused) {
            us2.v();
            return d(bArr, bArr2);
        } catch (AEADBadTagException e) {
            throw e;
        } catch (GeneralSecurityException unused2) {
            us2.v();
            return d(bArr, bArr2);
        }
    }

    public byte[] d(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length < 28) {
            m0.h("Ciphertext too short");
            return null;
        }
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(2, (SecretKey) this.a, new GCMParameterSpec(128, bArr, 0, 12));
        if (bArr2.length != 0) {
            cipher.updateAAD(bArr2);
        }
        byte[] bArrDoFinal = cipher.doFinal(bArr, 12, bArr.length - 12);
        bArrDoFinal.getClass();
        return bArrDoFinal;
    }

    public byte[] e(byte[] bArr, byte[] bArr2) {
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(1, (SecretKey) this.a);
        if (bArr2.length != 0) {
            cipher.updateAAD(bArr2);
        }
        byte[] iv = cipher.getIV();
        iv.getClass();
        byte[] bArrDoFinal = cipher.doFinal(bArr);
        bArrDoFinal.getClass();
        return x50.u0(iv, bArrDoFinal);
    }

    public aw1 f(xv1 xv1Var) throws yv1, NoSuchMethodException {
        Class clsValue = xv1Var.value();
        if (clsValue.isInterface()) {
            throw new yv1("Can not instantiate %s", clsValue);
        }
        bq1 bq1Var = (bq1) this.a;
        aw1 aw1Var = (aw1) bq1Var.get(clsValue);
        if (aw1Var == null) {
            Constructor declaredConstructor = clsValue.getDeclaredConstructor(null);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            aw1Var = (aw1) declaredConstructor.newInstance(null);
            if (aw1Var != null) {
                bq1Var.put(clsValue, aw1Var);
            }
        }
        return aw1Var;
    }

    public void g(int i) {
        ByteArrayOutputStream byteArrayOutputStream = (ByteArrayOutputStream) this.a;
        byteArrayOutputStream.write((byte) (i >>> 24));
        byteArrayOutputStream.write((byte) (i >>> 16));
        byteArrayOutputStream.write((byte) (i >>> 8));
        byteArrayOutputStream.write((byte) i);
    }

    public Object h() {
        tb9 tb9Var = (tb9) this.a;
        Cursor cursorQuery = tb9Var.a.query(tb9Var.b, tb9.h, null, null, null);
        if (cursorQuery == null) {
            return Collections.EMPTY_MAP;
        }
        try {
            int count = cursorQuery.getCount();
            if (count == 0) {
                return Collections.EMPTY_MAP;
            }
            Map k50Var = count <= 256 ? new k50(count) : new HashMap(count, 1.0f);
            while (cursorQuery.moveToNext()) {
                k50Var.put(cursorQuery.getString(0), cursorQuery.getString(1));
            }
            return k50Var;
        } finally {
            cursorQuery.close();
        }
    }

    @Override // defpackage.fa6
    public cz2 i(Reader reader) throws SAXException, IOException {
        Document document = ((DocumentBuilderFactory) this.a).newDocumentBuilder().parse(new InputSource(reader));
        bp0 bp0Var = new bp0();
        tn5 tn5Var = new tn5();
        Element documentElement = document.getDocumentElement();
        if (documentElement != null) {
            tn5Var.offer(documentElement);
            tn5Var.c(documentElement);
        }
        bp0Var.a = tn5Var;
        yn5 yn5Var = new yn5(6);
        bp0Var.b = yn5Var;
        yn5Var.add(document);
        return bp0Var;
    }

    @Override // defpackage.js1
    public void onSuccess(String str) {
        ((TaskCompletionSource) this.a).setResult(str);
    }

    public /* synthetic */ ty3(Object obj) {
        this.a = obj;
    }
}
