package defpackage;

import android.accounts.Account;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.view.View;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.google.gson.a;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.cloud.protocols.filen.FilenSession;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ka implements jk8, qp9 {
    public final Object a;
    public final Object b;
    public final Object c;

    public ka(FilenSession filenSession) {
        this.a = filenSession;
        this.b = new a();
        List<String> metadataKeysHex = filenSession.getMetadataKeysHex();
        ArrayList arrayList = new ArrayList(hl1.G0(metadataKeysHex, 10));
        Iterator<T> it = metadataKeysHex.iterator();
        while (it.hasNext()) {
            arrayList.add(hb3.q((String) it.next()));
        }
        this.c = arrayList;
    }

    public static ka b(View view) {
        TextInputEditText textInputEditText = (TextInputEditText) ms8.u(view, R.id.et);
        if (textInputEditText != null) {
            TextInputLayout textInputLayout = (TextInputLayout) view;
            return new ka(textInputLayout, textInputEditText, textInputLayout);
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.et)));
        return null;
    }

    public static String f(fl4 fl4Var, String str) {
        String strG = g(fl4Var, str);
        if (nq7.j0(strG)) {
            strG = null;
        }
        if (strG != null) {
            return strG;
        }
        c6.f("Missing Filen item field: ".concat(str));
        return null;
    }

    public static String g(fl4 fl4Var, String str) {
        String strO;
        qj4 qj4VarX = fl4Var.x(str);
        if (qj4VarX != null) {
            if (qj4VarX instanceof el4) {
                qj4VarX = null;
            }
            if (qj4VarX != null && (strO = qj4VarX.o()) != null) {
                return strO;
            }
        }
        c6.f("Missing Filen item field: ".concat(str));
        return null;
    }

    public static String h(int i, String str) {
        char lowerCase;
        if (str == null) {
            str = "";
        }
        if (str.length() != i) {
            str = null;
            break;
        }
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (!Character.isDigit(cCharAt) && ('a' > (lowerCase = Character.toLowerCase(cCharAt)) || lowerCase >= 'g')) {
                str = null;
                break;
            }
        }
        return str == null ? "" : str;
    }

    @Override // defpackage.qp9
    public Object a(IBinder iBinder) throws IOException {
        sh9 ee9Var;
        Account account = (Account) this.a;
        Bundle bundle = (Bundle) this.b;
        Context context = (Context) this.c;
        int i = zf9.b;
        if (iBinder == null) {
            ee9Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.auth.IAuthManagerService");
            ee9Var = iInterfaceQueryLocalInterface instanceof sh9 ? (sh9) iInterfaceQueryLocalInterface : new ee9(iBinder, "com.google.android.auth.IAuthManagerService", 3);
        }
        ee9 ee9Var2 = (ee9) ee9Var;
        ee9Var2.getClass();
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(ee9Var2.c);
        xa9.b(parcelObtain, account);
        parcelObtain.writeString("oauth2:https://www.googleapis.com/auth/drive.file");
        xa9.b(parcelObtain, bundle);
        Parcel parcelJ = ee9Var2.j(parcelObtain, 5);
        Bundle bundle2 = (Bundle) xa9.a(parcelJ, Bundle.CREATOR);
        parcelJ.recycle();
        if (bundle2 != null) {
            return sz3.c(context, bundle2);
        }
        y5.m("Service call returned null");
        return null;
    }

    public byte[] c(byte[] bArr) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException {
        byte[] bArrB;
        bArr.getClass();
        Cipher cipher = Cipher.getInstance("AES/ECB/NoPadding");
        cipher.getClass();
        cipher.init(1, (SecretKeySpec) this.a);
        int iMax = Math.max(1, (bArr.length + 15) / 16);
        int i = iMax * 16;
        if (i == bArr.length) {
            bArrB = rs9.b(x50.k0(bArr, (iMax - 1) * 16, i), (byte[]) this.b);
        } else {
            byte[] bArrK0 = x50.k0(bArr, (iMax - 1) * 16, bArr.length);
            if (bArrK0.length >= 16) {
                c6.f("Value must be smaller than an AES block");
                return null;
            }
            byte[] bArrCopyOf = Arrays.copyOf(bArrK0, 16);
            bArrCopyOf[bArrK0.length] = -128;
            bArrB = rs9.b(bArrCopyOf, (byte[]) this.c);
        }
        byte[] bArrDoFinal = new byte[16];
        int i2 = iMax - 1;
        int i3 = 0;
        while (i3 < i2) {
            int i4 = i3 * 16;
            i3++;
            bArrDoFinal = cipher.doFinal(rs9.b(bArrDoFinal, x50.k0(bArr, i4, i3 * 16)));
            bArrDoFinal.getClass();
        }
        byte[] bArrDoFinal2 = cipher.doFinal(rs9.b(bArrB, bArrDoFinal));
        bArrDoFinal2.getClass();
        return bArrDoFinal2;
    }

    public Object d(String str, mt3 mt3Var) {
        ArrayList arrayList = new ArrayList();
        Iterator it = ((ArrayList) this.c).iterator();
        while (it.hasNext()) {
            try {
                return mt3Var.invoke(hb3.c(str, (byte[]) it.next()));
            } catch (Exception e) {
                arrayList.add(e);
            }
        }
        throw new SecurityException("No Filen metadata key could decrypt the item", (Throwable) el1.b1(arrayList));
    }

    public String e(String str, byte[] bArr) {
        ArrayList arrayList = (ArrayList) this.c;
        bArr.getClass();
        if (((FilenSession) this.a).getAuthVersion() == eb3.V3.getValue()) {
            byte[] bArr2 = hb3.a;
            return hb3.l(str, (byte[]) el1.S0(arrayList), bArr);
        }
        byte[] bArr3 = hb3.a;
        return hb3.k(str, (byte[]) el1.S0(arrayList), bArr);
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (TextInputLayout) this.a;
    }

    public /* synthetic */ ka(Object obj, Object obj2, Object obj3) {
        this.a = obj;
        this.b = obj2;
        this.c = obj3;
    }

    public ka(a85 a85Var, View view) {
        Object c85Var;
        int i = Build.VERSION.SDK_INT;
        if (i >= 34) {
            c85Var = new e85();
        } else {
            c85Var = i >= 33 ? new c85() : null;
        }
        this.a = c85Var;
        this.b = a85Var;
        this.c = view;
    }

    public ka(Runnable runnable) {
        this.b = new CopyOnWriteArrayList();
        this.c = new HashMap();
        this.a = runnable;
    }

    public ka(byte[] bArr) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException {
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        this.a = secretKeySpec;
        Cipher cipher = Cipher.getInstance("AES/ECB/NoPadding");
        cipher.getClass();
        cipher.init(1, secretKeySpec);
        byte[] bArrDoFinal = cipher.doFinal(new byte[16]);
        bArrDoFinal.getClass();
        byte[] bArrA = rs9.a(bArrDoFinal);
        this.b = bArrA;
        this.c = rs9.a(bArrA);
    }
}
