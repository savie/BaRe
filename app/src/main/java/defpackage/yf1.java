package defpackage;

import android.app.Application;
import android.content.Context;
import android.os.RemoteException;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.listitem.ListItemLayout;
import com.google.android.recaptcha.Recaptcha;
import com.google.android.recaptcha.RecaptchaTasksClient;
import com.google.firebase.FirebaseApp;
import com.yubico.yubikit.android.ui.YubiKeyPromptActivity;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPrivateKeySpec;
import java.security.spec.ECPublicKeySpec;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import javax.crypto.Mac;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yf1 implements jk8, SuccessContinuation, wu2, w23, ls5, OnCompleteListener, v49, Continuation, mr9 {
    public final /* synthetic */ int a;
    public Object b;
    public Object c;

    public yf1(YubiKeyPromptActivity yubiKeyPromptActivity) {
        bp0 bp0Var;
        this.a = 14;
        zg8 zg8Var = new zg8(yubiKeyPromptActivity.getApplicationContext());
        try {
            bp0Var = new bp0(yubiKeyPromptActivity.getApplicationContext());
        } catch (rm5 unused) {
            bp0Var = null;
        }
        this.b = zg8Var;
        this.c = bp0Var;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0045 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:35:0x0040 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static yf1 h(Context context) {
        FileChannel channel;
        FileLock fileLockLock;
        try {
            channel = new RandomAccessFile(new File(context.getFilesDir(), "generatefid.lock"), "rw").getChannel();
            try {
                fileLockLock = channel.lock();
                try {
                    return new yf1(4, channel, fileLockLock);
                } catch (IOException e) {
                    e = e;
                    Log.e("CrossProcessLock", "encountered error while creating and acquiring the lock, ignoring", e);
                    if (fileLockLock != null) {
                        try {
                            fileLockLock.release();
                        } catch (IOException unused) {
                        }
                    }
                    if (channel != null) {
                        try {
                            channel.close();
                        } catch (IOException unused2) {
                        }
                    }
                    return null;
                } catch (Error e2) {
                    e = e2;
                    Log.e("CrossProcessLock", "encountered error while creating and acquiring the lock, ignoring", e);
                    if (fileLockLock != null) {
                        fileLockLock.release();
                    }
                    if (channel != null) {
                        channel.close();
                    }
                    return null;
                } catch (OverlappingFileLockException e3) {
                    e = e3;
                    Log.e("CrossProcessLock", "encountered error while creating and acquiring the lock, ignoring", e);
                    if (fileLockLock != null) {
                        fileLockLock.release();
                    }
                    if (channel != null) {
                        channel.close();
                    }
                    return null;
                }
            } catch (IOException | Error | OverlappingFileLockException e4) {
                e = e4;
                fileLockLock = null;
            }
        } catch (IOException | Error | OverlappingFileLockException e5) {
            e = e5;
            channel = null;
            fileLockLock = null;
        }
    }

    public static yf1 s(p1a p1aVar) throws GeneralSecurityException {
        int i = pr9.a[p1aVar.ordinal()];
        boolean z = false;
        int i2 = 18;
        int i3 = 3;
        if (i == 1) {
            return new yf1(new ia9("HmacSha256", i3), p1a.a, i2, z);
        }
        if (i == 2) {
            return new yf1(new ia9("HmacSha384", i3), p1a.b, i2, z);
        }
        if (i == 3) {
            return new yf1(new ia9("HmacSha512", i3), p1a.c, i2, z);
        }
        throw new GeneralSecurityException("invalid curve type: ".concat(String.valueOf(p1aVar)));
    }

    @Override // defpackage.v49
    public void a(Status status) {
        try {
            ((v49) this.b).a(status);
        } catch (RemoteException e) {
            ((u50) this.c).b(e, "RemoteException when sending failure result.", new Object[0]);
        }
    }

    @Override // defpackage.mr9
    public byte[] b(byte[] bArr, la laVar) throws GeneralSecurityException {
        p1a p1aVar = (p1a) this.b;
        byte[] bArrB = ((d2a) laVar.a).b();
        ECPrivateKeySpec eCPrivateKeySpec = new ECPrivateKeySpec(wx3.G(bArrB), zm5.M(p1aVar));
        s1a s1aVar = s1a.f;
        ECPrivateKey eCPrivateKey = (ECPrivateKey) ((KeyFactory) s1aVar.a.zza("EC")).generatePrivate(eCPrivateKeySpec);
        ECParameterSpec eCParameterSpecM = zm5.M(p1aVar);
        byte[] bArrP = zm5.P(eCPrivateKey, (ECPublicKey) ((KeyFactory) s1aVar.a.zza("EC")).generatePublic(new ECPublicKeySpec(zm5.N(eCParameterSpecM.getCurve(), r1a.a, bArr), eCParameterSpecM)));
        byte[] bArrN = z85.N(bArr, ((d2a) laVar.b).b());
        byte[] bArrN2 = z85.N(or9.m, zza());
        ia9 ia9Var = (ia9) this.c;
        int macLength = Mac.getInstance(ia9Var.b).getMacLength();
        byte[] bArr2 = or9.o;
        Charset charset = au9.a;
        return ia9Var.a(macLength, ia9Var.b(z85.N(bArr2, bArrN2, "eae_prk".getBytes(charset), bArrP), null), z85.N(or9.b(2, macLength), bArr2, bArrN2, "shared_secret".getBytes(charset), bArrN));
    }

    @Override // defpackage.v49
    public void c(c69 c69Var) {
        try {
            ((v49) this.b).c(c69Var);
        } catch (RemoteException e) {
            ((u50) this.c).b(e, "RemoteException when sending get recaptcha config response.", new Object[0]);
        }
    }

    @Override // defpackage.wu2
    public boolean d(CharSequence charSequence, int i, int i2, ad8 ad8Var) {
        if ((ad8Var.c & 4) > 0) {
            return true;
        }
        if (((re8) this.b) == null) {
            this.b = new re8(charSequence instanceof Spannable ? (Spannable) charSequence : new SpannableString(charSequence));
        }
        ((fo8) this.c).getClass();
        ((re8) this.b).setSpan(new bd8(ad8Var), i, i2, 33);
        return true;
    }

    @Override // defpackage.v49
    public void e(b69 b69Var) {
        try {
            ((v49) this.b).e(b69Var);
        } catch (RemoteException e) {
            ((u50) this.c).b(e, "RemoteException when sending token result.", new Object[0]);
        }
    }

    @Override // defpackage.v49
    public void f(wc9 wc9Var) {
        try {
            ((v49) this.b).f(wc9Var);
        } catch (RemoteException e) {
            ((u50) this.c).b(e, "RemoteException when sending failure result for mfa", new Object[0]);
        }
    }

    @Override // defpackage.v49
    public void g(bs2 bs2Var) {
        try {
            ((v49) this.b).g(bs2Var);
        } catch (RemoteException e) {
            ((u50) this.c).b(e, "RemoteException when sending failure result with credential", new Object[0]);
        }
    }

    @Override // defpackage.ea6
    public Object get() {
        switch (this.a) {
            case 6:
                Context context = (Context) ((id4) this.b).a;
                ox1 ox1Var = (ox1) ((ca6) this.c).get();
                context.getClass();
                ox1Var.getClass();
                return ge.r(q34.e, new nh(new sh(7), 13), l73.c(ox1Var), new l51(context, 1));
            default:
                return new l97((ra7) ((ca6) this.b).get(), (ra7) ((ca6) this.c).get());
        }
    }

    @Override // defpackage.wu2
    public Object getResult() {
        return (re8) this.b;
    }

    @Override // defpackage.jk8
    public View getRoot() {
        switch (this.a) {
            case 0:
                return (MaterialCardView) this.b;
            case 1:
                return (ConstraintLayout) this.b;
            default:
                return (ListItemLayout) this.b;
        }
    }

    @Override // defpackage.v49
    public void i(b69 b69Var, x59 x59Var) {
        try {
            ((v49) this.b).i(b69Var, x59Var);
        } catch (RemoteException e) {
            ((u50) this.c).b(e, "RemoteException when sending get token and account info user response", new Object[0]);
        }
    }

    @Override // defpackage.v49
    public void j(Status status, xz5 xz5Var) {
        try {
            ((v49) this.b).j(status, xz5Var);
        } catch (RemoteException e) {
            ((u50) this.c).b(e, "RemoteException when sending failure result.", new Object[0]);
        }
    }

    public void k(List list) {
        l75 l75Var = (l75) this.c;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            o64 o64Var = (o64) it.next();
            if (o64Var.d()) {
                ix7 ix7VarI0 = l75Var.i0(o64Var.a);
                if (ix7VarI0 != null) {
                    ix7VarI0.a((bs2) this.b, l75Var, o64Var);
                } else {
                    ArrayList arrayList = o64Var.f;
                    k(arrayList == null ? Collections.EMPTY_LIST : Collections.unmodifiableList(arrayList));
                }
            }
        }
    }

    public qn5 l(m61 m61Var, gz0 gz0Var) {
        vq vqVar = (vq) this.c;
        gy5 gy5Var = (gy5) this.b;
        vqVar.getClass();
        gy5 gy5VarD = gy5Var.d(m61Var);
        qn5 qn5VarK = ((np1) vqVar.b).k(gy5VarD);
        if (qn5VarK != null) {
            return qn5VarK;
        }
        if (gz0Var.a(m61Var)) {
            return ((np1) vqVar.b).g(gy5VarD).e(gz0Var.a.a.m(m61Var));
        }
        return null;
    }

    public qn5 m(qn5 qn5Var) {
        vq vqVar = (vq) this.c;
        gy5 gy5Var = (gy5) this.b;
        vqVar.getClass();
        qn5 qn5VarO = qv2.e;
        qn5<hk5> qn5VarK = ((np1) vqVar.b).k(gy5Var);
        if (qn5VarK != null) {
            if (!qn5VarK.Z()) {
                for (hk5 hk5Var : qn5VarK) {
                    qn5VarO = qn5VarO.O(hk5Var.a, hk5Var.b);
                }
            }
            return qn5VarO;
        }
        np1 np1VarG = ((np1) vqVar.b).g(gy5Var);
        Iterator it = qn5Var.iterator();
        while (it.hasNext()) {
            hk5 hk5Var2 = (hk5) it.next();
            qn5VarO = qn5VarO.O(hk5Var2.a, np1VarG.g(new gy5(hk5Var2.a)).e(hk5Var2.b));
        }
        ArrayList<hk5> arrayList = new ArrayList();
        ua4 ua4Var = np1VarG.a;
        Object obj = ua4Var.a;
        if (obj != null) {
            for (hk5 hk5Var3 : (qn5) obj) {
                arrayList.add(new hk5(hk5Var3.a, hk5Var3.b));
            }
        } else {
            for (Map.Entry entry : ua4Var.b) {
                ua4 ua4Var2 = (ua4) entry.getValue();
                if (ua4Var2.a != null) {
                    arrayList.add(new hk5((m61) entry.getKey(), (qn5) ua4Var2.a));
                }
            }
        }
        for (hk5 hk5Var4 : arrayList) {
            qn5VarO = qn5VarO.O(hk5Var4.a, hk5Var4.b);
        }
        return qn5VarO;
    }

    @Override // defpackage.ls5
    public tv8 n(View view, tv8 tv8Var) {
        um8 um8Var = (um8) this.b;
        vm8 vm8Var = (vm8) this.c;
        vm8 vm8Var2 = new vm8();
        vm8Var2.a = vm8Var.a;
        vm8Var2.b = vm8Var.b;
        vm8Var2.c = vm8Var.c;
        vm8Var2.d = vm8Var.d;
        return um8Var.o(view, tv8Var, vm8Var2);
    }

    public qn5 o(gy5 gy5Var, qn5 qn5Var, qn5 qn5Var2) {
        vq vqVar = (vq) this.c;
        gy5 gy5Var2 = (gy5) this.b;
        vqVar.getClass();
        zm5.r("Either existingEventSnap or existingServerSnap must exist", (qn5Var == null && qn5Var2 == null) ? false : true);
        gy5 gy5VarE = gy5Var2.e(gy5Var);
        if (((np1) vqVar.b).k(gy5VarE) != null) {
            return null;
        }
        np1 np1VarG = ((np1) vqVar.b).g(gy5VarE);
        return np1VarG.a.isEmpty() ? qn5Var2.U(gy5Var) : np1VarG.e(qn5Var2.U(gy5Var));
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public void onComplete(Task task) {
        ((Map) ((w00) this.c).c).remove((TaskCompletionSource) this.b);
    }

    public void p() {
        String str = (String) this.b;
        try {
            ca3 ca3Var = (ca3) this.c;
            ca3Var.getClass();
            new File((File) ca3Var.c, str).createNewFile();
        } catch (IOException e) {
            Log.e("FirebaseCrashlytics", "Error creating marker: ".concat(str), e);
        }
    }

    public void q() {
        try {
            ((FileLock) this.c).release();
            ((FileChannel) this.b).close();
        } catch (IOException e) {
            Log.e("CrossProcessLock", "encountered error while releasing, ignoring", e);
        }
    }

    public qn5 r(gy5 gy5Var) {
        vq vqVar = (vq) this.c;
        return ((np1) vqVar.b).k(((gy5) this.b).e(gy5Var));
    }

    public ot9 t() {
        return new ot9(Collections.unmodifiableMap((HashMap) this.b), Collections.unmodifiableMap((HashMap) this.c), false);
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        if (!task.isSuccessful()) {
            Exception exception = task.getException();
            ly8.h(exception);
            String message = exception.getMessage();
            ly8.h(message);
            return Tasks.forException(new na9(message));
        }
        c69 c69Var = (c69) task.getResult();
        String str = c69Var.a;
        if (str == null || str.isEmpty()) {
            return Tasks.forException(new na9(xs1.j("No Recaptcha Enterprise siteKey configured for tenant/project ", (String) this.b)));
        }
        gl9 gl9Var = new gl9('/');
        nh nhVar = new nh(24);
        nhVar.b = gl9Var;
        List listJ = new fu(nhVar).j(str);
        String str2 = listJ.size() != 4 ? null : (String) listJ.get(3);
        if (TextUtils.isEmpty(str2)) {
            return Tasks.forException(new Exception("Invalid siteKey format ".concat(str)));
        }
        if (Log.isLoggable("RecaptchaHandler", 4)) {
            Log.i("RecaptchaHandler", "Successfully obtained site key for tenant " + ((String) this.b));
        }
        yo1 yo1Var = (yo1) this.c;
        fa9 fa9Var = (fa9) yo1Var.f;
        Application application = (Application) ((FirebaseApp) yo1Var.d).getApplicationContext();
        fa9Var.getClass();
        Task<RecaptchaTasksClient> taskFetchTaskClient = Recaptcha.fetchTaskClient(application, str2);
        yo1 yo1Var2 = (yo1) this.c;
        String str3 = (String) this.b;
        synchronized (yo1Var2.a) {
            yo1Var2.c = c69Var;
            ((HashMap) yo1Var2.b).put(str3, taskFetchTaskClient);
        }
        return taskFetchTaskClient;
    }

    public void u(Enum r2, Object obj) {
        ((HashMap) this.b).put(r2, obj);
        ((HashMap) this.c).put(obj, r2);
    }

    @Override // defpackage.mr9
    public byte[] zza() throws GeneralSecurityException {
        int i = pr9.a[((p1a) this.b).ordinal()];
        if (i == 1) {
            return or9.c;
        }
        if (i == 2) {
            return or9.d;
        }
        if (i == 3) {
            return or9.e;
        }
        m0.h("Could not determine HPKE KEM ID");
        return null;
    }

    public /* synthetic */ yf1(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    public /* synthetic */ yf1(Object obj, Object obj2, int i, boolean z) {
        this.a = i;
        this.c = obj;
        this.b = obj2;
    }

    public yf1(v49 v49Var, u50 u50Var) {
        this.a = 16;
        ly8.h(v49Var);
        this.b = v49Var;
        ly8.h(u50Var);
        this.c = u50Var;
    }

    public yf1(yo1 yo1Var, String str) {
        this.a = 17;
        this.b = str;
        Objects.requireNonNull(yo1Var);
        this.c = yo1Var;
    }

    public /* synthetic */ yf1(int i) {
        this.a = i;
    }

    public yf1(ConstraintLayout constraintLayout, MaterialCardView materialCardView, ny1 ny1Var, ImageView imageView, ImageView imageView2, TextView textView, TextView textView2) {
        this.a = 1;
        this.b = constraintLayout;
        this.c = ny1Var;
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public Task then(Object obj) {
        Boolean bool = (Boolean) obj;
        sy1 sy1Var = (sy1) this.c;
        if (!bool.booleanValue()) {
            if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                Log.v("FirebaseCrashlytics", "Deleting cached crash reports...", null);
            }
            ca3 ca3Var = sy1Var.g;
            Iterator it = ca3.l(((File) ca3Var.c).listFiles(sy1.s)).iterator();
            while (it.hasNext()) {
                ((File) it.next()).delete();
            }
            ca3 ca3Var2 = ((k02) sy1Var.m.b).b;
            k02.a(ca3.l(((File) ca3Var2.e).listFiles()));
            k02.a(ca3.l(((File) ca3Var2.f).listFiles()));
            k02.a(ca3.l(((File) ca3Var2.k).listFiles()));
            sy1Var.q.trySetResult(null);
            return Tasks.forResult(null);
        }
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", "Sending cached crash reports...", null);
        }
        boolean zBooleanValue = bool.booleanValue();
        ka2 ka2Var = sy1Var.b;
        if (zBooleanValue) {
            ka2Var.h.trySetResult(null);
            return ((Task) this.b).onSuccessTask((o02) sy1Var.e.a, new zq8(this, 7));
        }
        ka2Var.getClass();
        l0.e("An invalid data collection token was used.");
        return null;
    }
}
