package defpackage;

import android.content.SharedPreferences;
import android.os.Parcel;
import android.view.animation.Animation;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.jcraft.jsch.SftpATTRS;
import com.nimbusds.jose.crypto.PasswordBasedEncrypter;
import java.io.IOException;
import java.lang.ref.ReferenceQueue;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.ReentrantLock;
import javax.crypto.AEADBadTagException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class la implements ji3, aj8, yi6 {
    public Object a;
    public Object b;

    public la(int i) {
        switch (i) {
            case 7:
                this.a = new ReentrantLock();
                this.b = new HashMap();
                break;
            case XmlPullParser.COMMENT /* 9 */:
                new ReentrantLock();
                this.a = new ConcurrentHashMap();
                this.b = new ReferenceQueue();
                break;
            case 10:
                this.a = new dg7(0);
                this.b = new v15();
                break;
            case 14:
                this.a = new HashMap();
                this.b = new HashMap();
                break;
            default:
                this.b = new AtomicReference();
                this.a = new wp4(Math.min(64, PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT), 4000);
                break;
        }
    }

    public void a(fh6 fh6Var, mg6 mg6Var) {
        dg7 dg7Var = (dg7) this.a;
        rl8 rl8VarA = (rl8) dg7Var.get(fh6Var);
        if (rl8VarA == null) {
            rl8VarA = rl8.a();
            dg7Var.put(fh6Var, rl8VarA);
        }
        rl8VarA.c = mg6Var;
        rl8VarA.a |= 8;
    }

    @Override // defpackage.yi6
    public void accept(Object obj, Object obj2) {
        t29 t29Var = new t29((u29) this.a, (TaskCompletionSource) obj2);
        n39 n39Var = (n39) ((v29) obj).p();
        ax3 ax3Var = (ax3) this.b;
        ef efVar = new ef(new qn1(-1, -1, 0, true), false);
        efVar.c = false;
        Parcel parcelF = n39Var.f();
        int i = z29.a;
        parcelF.writeStrongBinder(t29Var);
        z29.b(parcelF, ax3Var);
        z29.b(parcelF, efVar);
        n39Var.g(parcelF, 3);
    }

    public byte[] b(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length < 16) {
            m0.h("Ciphertext too short");
            return null;
        }
        byte[] bArrK0 = x50.k0(bArr, 0, 16);
        byte[] bArrCopyOf = Arrays.copyOf(bArrK0, bArrK0.length);
        bArrCopyOf[8] = (byte) (bArrCopyOf[8] & 127);
        bArrCopyOf[12] = (byte) (bArrCopyOf[12] & 127);
        Cipher cipher = Cipher.getInstance("AES/CTR/NoPadding");
        cipher.init(2, new SecretKeySpec((byte[]) this.b, "AES"), new IvParameterSpec(bArrCopyOf));
        byte[] bArrDoFinal = cipher.doFinal(bArr, 16, bArr.length - 16);
        bArrDoFinal.getClass();
        if (Arrays.equals(bArrK0, h(bArr2, bArrDoFinal))) {
            return bArrDoFinal;
        }
        throw new AEADBadTagException("Integrity check failed.");
    }

    public j87 c(Long l) {
        ReentrantLock reentrantLock = (ReentrantLock) this.a;
        reentrantLock.lock();
        try {
            return (j87) ((HashMap) this.b).get(l);
        } finally {
            reentrantLock.unlock();
        }
    }

    public mg6 d(fh6 fh6Var, int i) {
        rl8 rl8Var;
        mg6 mg6Var;
        dg7 dg7Var = (dg7) this.a;
        int iE = dg7Var.e(fh6Var);
        if (iE >= 0 && (rl8Var = (rl8) dg7Var.k(iE)) != null) {
            int i2 = rl8Var.a;
            if ((i2 & i) != 0) {
                int i3 = i2 & (~i);
                rl8Var.a = i3;
                if (i == 4) {
                    mg6Var = rl8Var.b;
                } else if (i == 8) {
                    mg6Var = rl8Var.c;
                } else {
                    c6.f("Must provide flag PRE or POST");
                }
                if ((i3 & 12) == 0) {
                    dg7Var.i(iE);
                    rl8Var.a = 0;
                    rl8Var.b = null;
                    rl8Var.c = null;
                    rl8.d.c(rl8Var);
                }
                return mg6Var;
            }
        }
        return null;
    }

    public void e(fh6 fh6Var) {
        rl8 rl8Var = (rl8) ((dg7) this.a).get(fh6Var);
        if (rl8Var == null) {
            return;
        }
        rl8Var.a &= -2;
    }

    public void f(Long l) {
        ReentrantLock reentrantLock = (ReentrantLock) this.a;
        reentrantLock.lock();
        try {
        } finally {
            reentrantLock.unlock();
        }
    }

    public void g(fh6 fh6Var) {
        v15 v15Var = (v15) this.b;
        for (int iF = v15Var.f() - 1; iF >= 0; iF--) {
            if (fh6Var == v15Var.h(iF)) {
                Object[] objArr = v15Var.c;
                Object obj = objArr[iF];
                Object obj2 = z85.c;
                if (obj == obj2) {
                    break;
                }
                objArr[iF] = obj2;
                v15Var.a = true;
                break;
            }
        }
        rl8 rl8Var = (rl8) ((dg7) this.a).remove(fh6Var);
        if (rl8Var != null) {
            rl8Var.a = 0;
            rl8Var.b = null;
            rl8Var.c = null;
            rl8.d.c(rl8Var);
        }
    }

    public byte[] h(byte[]... bArr) {
        Iterable iterableI;
        byte[] bArrB;
        ka kaVar = (ka) this.a;
        byte[] bArrC = kaVar.c(rs9.a);
        int length = bArr.length - 1;
        if (length < 0) {
            length = 0;
        }
        if (length < 0) {
            f6.g(xs1.h(length, "Requested element count ", " is less than zero."));
            return null;
        }
        if (length == 0) {
            iterableI = ov2.a;
        } else if (length >= bArr.length) {
            iterableI = x50.z0(bArr);
        } else if (length == 1) {
            iterableI = nc8.I(bArr[0]);
        } else {
            ArrayList arrayList = new ArrayList(length);
            int i = 0;
            for (byte[] bArr2 : bArr) {
                arrayList.add(bArr2);
                i++;
                if (i == length) {
                    break;
                }
            }
            iterableI = arrayList;
        }
        Iterator it = iterableI.iterator();
        while (it.hasNext()) {
            bArrC = rs9.b(rs9.a(bArrC), kaVar.c((byte[]) it.next()));
        }
        byte[] bArr3 = bArr.length == 0 ? null : bArr[bArr.length - 1];
        if (bArr3 == null) {
            bArr3 = rs9.b;
        }
        if (bArr3.length >= 16) {
            if (bArr3.length < bArrC.length) {
                c6.f("Input must be at least XOR value size");
                return null;
            }
            bArrB = Arrays.copyOf(bArr3, bArr3.length);
            int length2 = bArrB.length - bArrC.length;
            Iterator it2 = new nd4(0, bArrC.length - 1, 1).iterator();
            while (true) {
                md4 md4Var = (md4) it2;
                if (!md4Var.c) {
                    break;
                }
                int iNextInt = md4Var.nextInt();
                int i2 = length2 + iNextInt;
                bArrB[i2] = (byte) (bArrC[iNextInt] ^ bArrB[i2]);
            }
        } else {
            if (bArr3.length >= 16) {
                c6.f("Value must be smaller than an AES block");
                return null;
            }
            byte[] bArrCopyOf = Arrays.copyOf(bArr3, 16);
            bArrCopyOf[bArr3.length] = -128;
            bArrB = rs9.b(bArrCopyOf, rs9.a(bArrC));
        }
        return kaVar.c(bArrB);
    }

    public em4 i(gc8 gc8Var) {
        em4 em4Var;
        synchronized (this) {
            wp4 wp4Var = (wp4) this.a;
            em4Var = (em4) wp4Var.a.get(new oc8(gc8Var));
        }
        return em4Var;
    }

    public em4 k(Class cls) {
        em4 em4Var;
        synchronized (this) {
            wp4 wp4Var = (wp4) this.a;
            em4Var = (em4) wp4Var.a.get(new oc8(cls, false));
        }
        return em4Var;
    }

    public void l(kt9 kt9Var) throws GeneralSecurityException {
        HashMap map = (HashMap) this.a;
        if (kt9Var == null) {
            f6.n("primitive constructor must be non-null");
            return;
        }
        mt9 mt9Var = new mt9(kt9Var.a, kt9Var.b);
        if (!map.containsKey(mt9Var)) {
            map.put(mt9Var, kt9Var);
            return;
        }
        kt9 kt9Var2 = (kt9) map.get(mt9Var);
        if (!kt9Var2.equals(kt9Var) || kt9Var != kt9Var2) {
            throw new GeneralSecurityException("Attempt to register non-equal PrimitiveConstructor object for already existing object of type: ".concat(String.valueOf(mt9Var)));
        }
    }

    public void m(uz9 uz9Var) throws IOException {
        if (((SharedPreferences.Editor) this.a).putString((String) this.b, ho6.a0(uz9Var.c())).commit()) {
            return;
        }
        y5.m("Failed to write to SharedPreferences");
    }

    @Override // defpackage.aj8
    public void onCancelled(wc2 wc2Var) {
        ((aj8) this.a).onCancelled(wc2Var);
    }

    @Override // defpackage.aj8
    public void onDataChange(eb2 eb2Var) {
        ((zc2) this.b).g(this);
        ((aj8) this.a).onDataChange(eb2Var);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0053  */
    /* JADX WARN: Code duplicated, block: B:30:0x005d  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.ji3
    public Object t(li3 li3Var, kv1 kv1Var) {
        wi3 wi3Var;
        yi3 yi3Var;
        if (kv1Var instanceof wi3) {
            wi3Var = (wi3) kv1Var;
            int i = wi3Var.b;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                wi3Var.b = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                wi3Var = new wi3(this, kv1Var);
            }
        } else {
            wi3Var = new wi3(this, kv1Var);
        }
        Object obj = wi3Var.a;
        int i2 = wi3Var.b;
        if (i2 == 0) {
            lg7.H(obj);
            cd cdVar = (cd) this.a;
            yi3 yi3Var2 = new yi3((wm) this.b, li3Var);
            try {
                wi3Var.d = yi3Var2;
                wi3Var.b = 1;
                Object objT = cdVar.t(yi3Var2, wi3Var);
                yx1 yx1Var = yx1.a;
                if (objT == yx1Var) {
                    return yx1Var;
                }
            } catch (u2 e) {
                e = e;
                yi3Var = yi3Var2;
                if (e.a == yi3Var) {
                    throw e;
                }
                sz8.p(wi3Var.getContext());
            }
        } else {
            if (i2 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            yi3Var = wi3Var.d;
            try {
                lg7.H(obj);
            } catch (u2 e2) {
                e = e2;
                if (e.a == yi3Var) {
                    throw e;
                }
                sz8.p(wi3Var.getContext());
            }
        }
        return be8.a;
    }

    public /* synthetic */ la(Object obj, Object obj2, boolean z) {
        this.b = obj;
        this.a = obj2;
    }

    public la(lt9 lt9Var) {
        this.a = new HashMap(lt9Var.a);
        this.b = new HashMap(lt9Var.b);
    }

    public /* synthetic */ la(Object obj, Object obj2) {
        this.a = obj;
        this.b = obj2;
    }

    public la(Animation animation) {
        this.a = animation;
        this.b = null;
    }

    public la(byte[] bArr) {
        bArr.getClass();
        this.a = new ka(x50.k0(bArr, 0, bArr.length / 2));
        this.b = x50.k0(bArr, bArr.length / 2, bArr.length);
        if (bArr.length == 64) {
            return;
        }
        c6.f("AES-SIV key must have 64 bytes");
        throw null;
    }
}
