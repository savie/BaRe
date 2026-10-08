package defpackage;

import android.content.Context;
import android.util.SparseIntArray;
import android.view.ActionMode;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.material.button.MaterialButton;
import com.jcraft.jsch.SftpATTRS;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import javax.crypto.Mac;
import org.swiftapps.swiftbackup.database.MDatabase_Impl;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class h80 implements ji3, jk8, z23, w23, OnCompleteListener, mr9 {
    public final /* synthetic */ int a;
    public Object b;
    public Object c;

    public h80(int i) {
        this.a = i;
        switch (i) {
            case 17:
                lz3 lz3Var = lz3.d;
                this.b = new SparseIntArray();
                this.c = lz3Var;
                break;
            default:
                this.b = new HashMap();
                this.c = new vk9(6);
                break;
        }
    }

    public byte[] a(String str, String str2) {
        byte[] bytes;
        lv1 lv1Var = (lv1) this.c;
        if (str == null) {
            Charset charset = ip5.a;
            bytes = new byte[0];
        } else {
            bytes = str.getBytes(ip5.a);
        }
        try {
            lv1Var.getClass();
            qg0 qg0Var = new qg0("MD4");
            qg0Var.b(bytes);
            byte[] bArrA = qg0Var.a();
            String upperCase = str2.toUpperCase();
            return ip5.a(lv1Var, bArrA, upperCase == null ? new byte[0] : upperCase.getBytes(ip5.a), new byte[0]);
        } catch (h67 e) {
            throw new hp5(e);
        }
    }

    @Override // defpackage.mr9
    public byte[] b(byte[] bArr, la laVar) {
        byte[] bArrA = ((sr9) this.c).a(((d2a) laVar.a).b(), bArr);
        byte[] bArrN = z85.N(bArr, ((d2a) laVar.b).b());
        byte[] bArrN2 = z85.N(or9.m, or9.b);
        ia9 ia9Var = (ia9) this.b;
        int macLength = Mac.getInstance(ia9Var.b).getMacLength();
        byte[] bArr2 = or9.o;
        Charset charset = au9.a;
        return ia9Var.a(macLength, ia9Var.b(z85.N(bArr2, bArrN2, "eae_prk".getBytes(charset), bArrA), null), z85.N(or9.b(2, macLength), bArr2, bArrN2, "shared_secret".getBytes(charset), bArrN));
    }

    public boolean c() {
        synchronized (this) {
            if (((AtomicBoolean) this.c).get()) {
                return false;
            }
            ((AtomicInteger) this.b).incrementAndGet();
            return true;
        }
    }

    public void d(ArrayList arrayList, int i, ArrayList arrayList2, List list, sb4 sb4Var) {
        k31 k31Var;
        m61 m61VarD;
        ArrayList<k31> arrayList3 = new ArrayList();
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            k31 k31Var2 = (k31) it.next();
            if (dj7.a(k31Var2.a, i)) {
                arrayList3.add(k31Var2);
            }
        }
        Collections.sort(arrayList3, new ty2(this, 0));
        for (k31 k31Var3 : arrayList3) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                ez2 ez2Var = (ez2) it2.next();
                if (ez2Var.g(i)) {
                    if (dj7.a(k31Var3.a, 5) || dj7.a(k31Var3.a, 1)) {
                        k31Var = k31Var3;
                    } else {
                        m61 m61Var = k31Var3.d;
                        qn5 qn5Var = k31Var3.b.a;
                        nb4 nb4Var = (nb4) this.c;
                        nb4 nb4Var2 = sb4Var.c;
                        if (!nb4Var2.equals(no4.a) && !nb4Var2.equals(nb4Var)) {
                            c6.f("Index not available in IndexedNode!");
                            return;
                        }
                        sb4Var.c();
                        if (x13.m(sb4Var.b, sb4.d)) {
                            m61VarD = sb4Var.a.D(m61Var);
                        } else {
                            hk5 hk5Var = (hk5) sb4Var.b.a.i(new hk5(m61Var, qn5Var));
                            m61VarD = hk5Var != null ? hk5Var.a : null;
                        }
                        k31Var = new k31(k31Var3.a, k31Var3.b, k31Var3.d, m61VarD, k31Var3.c);
                    }
                    arrayList.add(ez2Var.b(k31Var, (qc6) this.b));
                }
            }
        }
    }

    public PublicKey e() {
        try {
            try {
                return w16.h((vo4) this.b, (byte[]) this.c).h();
            } catch (InvalidKeySpecException e) {
                e = e;
                y5.k(e);
                return null;
            }
        } catch (NoSuchAlgorithmException | InvalidKeySpecException e2) {
            e = e2;
            y5.k(e);
            return null;
        }
    }

    public boolean f() {
        return ((String) this.b).isEmpty() && ((char[]) this.c).length == 0;
    }

    public void g(s8 s8Var) {
        x91 x91Var = (x91) this.b;
        ((ActionMode.Callback) x91Var.a).onDestroyActionMode(x91Var.e(s8Var));
        fo foVar = (fo) this.c;
        if (foVar.N != null) {
            foVar.t.getDecorView().removeCallbacks(foVar.O);
        }
        if (foVar.M != null) {
            lm8 lm8Var = foVar.P;
            if (lm8Var != null) {
                lm8Var.b();
            }
            lm8 lm8VarA = dl8.a(foVar.M);
            lm8VarA.a(0.0f);
            foVar.P = lm8VarA;
            lm8VarA.d(new sn(this));
        }
        foVar.L = null;
        ViewGroup viewGroup = foVar.R;
        WeakHashMap weakHashMap = dl8.a;
        viewGroup.requestApplyInsets();
        foVar.I();
    }

    @Override // defpackage.ea6
    public Object get() {
        switch (this.a) {
            case 12:
                return new mf5((Context) ((rb) this.b).b, (l22) ((rb) this.c).get());
            default:
                return new b97((a48) ((ca6) this.b).get(), (ni8) ((ca6) this.c).get());
        }
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (MaterialButton) this.b;
    }

    public boolean h(s8 s8Var, Menu menu) {
        ViewGroup viewGroup = ((fo) this.c).R;
        WeakHashMap weakHashMap = dl8.a;
        viewGroup.requestApplyInsets();
        x91 x91Var = (x91) this.b;
        ActionMode.Callback callback = (ActionMode.Callback) x91Var.a;
        gs7 gs7VarE = x91Var.e(s8Var);
        dg7 dg7Var = (dg7) x91Var.d;
        Menu ad5Var = (Menu) dg7Var.get(menu);
        if (ad5Var == null) {
            ad5Var = new ad5((Context) x91Var.c, (fc5) menu);
            dg7Var.put(menu, ad5Var);
        }
        return callback.onPrepareActionMode(gs7VarE, ad5Var);
    }

    public void i(String str) {
        lm2 lm2Var;
        synchronized (this) {
            try {
                Object obj = ((HashMap) this.b).get(str);
                ms8.j(obj, "Argument must not be null");
                lm2Var = (lm2) obj;
                int i = lm2Var.b;
                if (i < 1) {
                    throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + lm2Var.b);
                }
                int i2 = i - 1;
                lm2Var.b = i2;
                if (i2 == 0) {
                    lm2 lm2Var2 = (lm2) ((HashMap) this.b).remove(str);
                    if (!lm2Var2.equals(lm2Var)) {
                        throw new IllegalStateException("Removed the wrong lock, expected to remove: " + lm2Var + ", but actually removed: " + lm2Var2 + ", safeKey: " + str);
                    }
                    vk9 vk9Var = (vk9) this.c;
                    synchronized (((ArrayDeque) vk9Var.b)) {
                        try {
                            if (((ArrayDeque) vk9Var.b).size() < 10) {
                                ((ArrayDeque) vk9Var.b).offer(lm2Var2);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        lm2Var.a.unlock();
    }

    public void k() {
        synchronized (this) {
            ((AtomicInteger) this.b).decrementAndGet();
            if (((AtomicInteger) this.b).get() < 0) {
                throw new IllegalStateException("Unbalanced call to unblock() detected.");
            }
        }
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public void onComplete(Task task) {
        zz8 zz8Var = (zz8) this.b;
        TaskCompletionSource taskCompletionSource = (TaskCompletionSource) this.c;
        synchronized (zz8Var.f) {
            zz8Var.e.remove(taskCompletionSource);
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0080  */
    /* JADX WARN: Code duplicated, block: B:55:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    @Override // defpackage.ji3
    public Object t(li3 li3Var, kv1 kv1Var) throws Throwable {
        oi3 oi3Var;
        int i;
        int i2;
        y28 y28Var;
        sw6 sw6Var;
        sw6 sw6Var2;
        mb2 mb2Var = (mb2) this.c;
        if (kv1Var instanceof oi3) {
            oi3Var = (oi3) kv1Var;
            int i3 = oi3Var.b;
            if ((i3 & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                oi3Var.b = i3 - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                oi3Var = new oi3(this, kv1Var);
            }
        } else {
            oi3Var = new oi3(this, kv1Var);
        }
        Object obj = oi3Var.a;
        int i4 = oi3Var.b;
        yx1 yx1Var = yx1.a;
        if (i4 == 0) {
            lg7.H(obj);
            i = 0;
            try {
                jq6 jq6Var = (jq6) this.b;
                oi3Var.d = li3Var;
                oi3Var.f = 0;
                oi3Var.b = 1;
                if (jq6Var.t(li3Var, oi3Var) != yx1Var) {
                    i2 = 0;
                    sw6Var = new sw6(li3Var, oi3Var.getContext());
                    oi3Var.d = null;
                    oi3Var.e = sw6Var;
                    oi3Var.f = i2;
                    oi3Var.b = 3;
                    if (mb2Var.a(sw6Var, null, oi3Var) != yx1Var) {
                        sw6Var2 = sw6Var;
                        sw6Var2.releaseIntercepted();
                        return be8.a;
                    }
                }
            } catch (Throwable th) {
                th = th;
                y28Var = new y28(th);
                oi3Var.d = null;
                oi3Var.e = th;
                oi3Var.f = i;
                oi3Var.b = 2;
                if (pe4.a(y28Var, mb2Var, th, oi3Var) == yx1Var) {
                    throw th;
                }
            }
            return yx1Var;
        }
        if (i4 != 1) {
            if (i4 == 2) {
                Throwable th2 = (Throwable) oi3Var.e;
                lg7.H(obj);
                throw th2;
            }
            if (i4 != 3) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            sw6Var2 = (sw6) oi3Var.e;
            try {
                lg7.H(obj);
                sw6Var2.releaseIntercepted();
                return be8.a;
            } catch (Throwable th3) {
                th = th3;
                sw6Var2.releaseIntercepted();
                throw th;
            }
        }
        i2 = oi3Var.f;
        li3Var = oi3Var.d;
        try {
            lg7.H(obj);
            sw6Var = new sw6(li3Var, oi3Var.getContext());
            try {
                oi3Var.d = null;
                oi3Var.e = sw6Var;
                oi3Var.f = i2;
                oi3Var.b = 3;
                if (mb2Var.a(sw6Var, null, oi3Var) != yx1Var) {
                    sw6Var2 = sw6Var;
                    sw6Var2.releaseIntercepted();
                    return be8.a;
                }
            } catch (Throwable th4) {
                th = th4;
                sw6Var2 = sw6Var;
                sw6Var2.releaseIntercepted();
                throw th;
            }
        } catch (Throwable th5) {
            i = i2;
            th = th5;
            y28Var = new y28(th);
            oi3Var.d = null;
            oi3Var.e = th;
            oi3Var.f = i;
            oi3Var.b = 2;
            if (pe4.a(y28Var, mb2Var, th, oi3Var) == yx1Var) {
                throw th;
            }
        }
        return yx1Var;
    }

    public String toString() {
        switch (this.a) {
            case 0:
                return dj7.n(new StringBuilder("AuthenticationContext["), (String) this.b, "@null]");
            case 4:
                StringBuilder sb = new StringBuilder("CssProperty{key='");
                sb.append((String) this.b);
                sb.append("', value='");
                return dj7.n(sb, (String) this.c, "'}");
            default:
                return super.toString();
        }
    }

    @Override // defpackage.mr9
    public byte[] zza() throws GeneralSecurityException {
        byte[] bArr;
        switch (((ia9) this.b).b) {
            case "HmacSha256":
                bArr = or9.f;
                break;
            case "HmacSha384":
                bArr = or9.g;
                break;
            case "HmacSha512":
                bArr = or9.h;
                break;
            default:
                m0.h("Could not determine HPKE KDF ID");
                return null;
        }
        if (Arrays.equals(bArr, or9.f)) {
            return or9.b;
        }
        m0.h("Could not determine HPKE KEM ID");
        return null;
    }

    public /* synthetic */ h80(int i, boolean z) {
        this.a = i;
    }

    public /* synthetic */ h80(Object obj, Object obj2, int i, boolean z) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    public h80(ia9 ia9Var) {
        Object cz4Var;
        this.a = 19;
        this.b = ia9Var;
        try {
            cz4Var = jq6.B();
        } catch (GeneralSecurityException unused) {
            cz4Var = new cz4(29);
        }
        this.c = cz4Var;
    }

    public /* synthetic */ h80(int i, Object obj, Object obj2) {
        this.a = i;
        this.c = obj;
        this.b = obj2;
    }

    public h80(String str, char[] cArr) {
        this.a = 0;
        this.b = str;
        this.c = Arrays.copyOf(cArr, cArr.length);
    }

    public h80(MDatabase_Impl mDatabase_Impl) {
        this.a = 10;
        this.b = mDatabase_Impl;
        Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap());
        setNewSetFromMap.getClass();
        this.c = setNewSetFromMap;
    }

    public h80(qc6 qc6Var) {
        this.a = 7;
        this.b = qc6Var;
        this.c = qc6Var.b.e;
    }

    public h80(vo4 vo4Var, k06 k06Var, w88 w88Var, byte[] bArr) {
        this.a = 15;
        this.b = vo4Var;
        this.c = Arrays.copyOf(bArr, bArr.length);
    }

    public h80(p02 p02Var) {
        this.a = 2;
        this.b = new AtomicInteger(0);
        this.c = new AtomicBoolean(false);
    }

    public h80(iu iuVar, List list) {
        this.a = 5;
        iuVar.getClass();
        this.b = iuVar;
        this.c = list;
    }
}
