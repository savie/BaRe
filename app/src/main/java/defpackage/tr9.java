package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.preference.PreferenceManager;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.jcraft.jsch.SftpATTRS;
import java.io.DataInput;
import java.io.IOException;
import java.io.Reader;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tr9 implements am6, ls5, z98, jk8, zv5, fa6, ji3, z23, hu5, n59 {
    public static final Object c = new Object();
    public final /* synthetic */ int a;
    public Object b;

    public tr9(int i) throws XmlPullParserException {
        this.a = i;
        switch (i) {
            case 5:
                this.b = new km7(od8.b);
                break;
            case 13:
                XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
                this.b = xmlPullParserFactoryNewInstance;
                xmlPullParserFactoryNewInstance.setNamespaceAware(true);
                break;
            case 14:
                this.b = new LinkedHashMap();
                break;
            case 20:
                this.b = ByteBuffer.allocate(8);
                break;
            default:
                this.b = new AtomicInteger(0);
                break;
        }
    }

    public void a(String str, byte[] bArr) throws IOException {
        byte[] bArrE = e(bArr.length);
        if (Arrays.equals(bArrE, bArr)) {
            return;
        }
        int i = 9;
        String strT0 = x50.t0(bArr, "", new nu(i), 30);
        String strT1 = x50.t0(bArrE, "", new nu(i), 30);
        StringBuilder sbP = u48.p("Bad ", str, " magic: expected=", strT0, ", actual=");
        sbP.append(strT1);
        throw new rz6(sbP.toString(), null);
    }

    @Override // defpackage.hu5
    public void b(byte[] bArr, Object obj, MessageDigest messageDigest) {
        Long l = (Long) obj;
        messageDigest.update(bArr);
        synchronized (((ByteBuffer) this.b)) {
            ((ByteBuffer) this.b).position(0);
            messageDigest.update(((ByteBuffer) this.b).putLong(l.longValue()).array());
        }
    }

    public em7 c() {
        return (em7) ((km7) this.b).d();
    }

    public Object d(int i) {
        String[] strArrM = ((vz7) this.b).m();
        StringBuilder sb = new StringBuilder();
        if (strArrM.length > 0) {
            Arrays.sort(strArrM);
            for (String str : strArrM) {
                sb.append(str);
                sb.append('>');
            }
        }
        String string = sb.toString();
        return i == 0 ? string : new ko4(i, string);
    }

    public byte[] e(int i) throws IOException {
        if (i < 0) {
            c6.f(fz5.j(i, "Negative byte count: "));
            return null;
        }
        byte[] bArr = new byte[i];
        ((DataInput) this.b).readFully(bArr);
        return bArr;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0027  */
    public void f(em7 em7Var) {
        Object objD;
        Object obj;
        em7Var.getClass();
        km7 km7Var = (km7) this.b;
        do {
            objD = km7Var.d();
            em7 em7Var2 = (em7) objD;
            if (em7Var2 instanceof jf6 ? true : pe4.d(em7Var2, od8.b)) {
                obj = em7Var2;
                obj = em7Var;
            } else if (em7Var2 instanceof ga2) {
                if (em7Var.a > em7Var2.a) {
                    obj = em7Var2;
                    obj = em7Var;
                }
            } else if (!(em7Var2 instanceof ne3)) {
                obj = em7Var2;
                q.j();
                return;
            }
            obj = em7Var2;
            obj = em7Var2;
            du9 du9Var = ly8.c;
            if (objD == null) {
                objD = du9Var;
            }
            if (obj == null) {
                obj = du9Var;
            }
        } while (!km7Var.e(objD, obj));
    }

    public synchronized ix0 g() {
        ix0 ix0VarJ;
        ln5 ln5Var = (ln5) this.b;
        synchronized (ln5Var) {
            ix0VarJ = ix0.j((uz9) ((tz9) ln5Var.b).b());
        }
        return ix0VarJ;
    }

    @Override // defpackage.ea6
    public Object get() {
        return new t57(Integer.valueOf(t57.d).intValue(), (Context) ((ea6) this.b).get(), "com.google.android.datatransport.events");
    }

    @Override // defpackage.jk8
    public View getRoot() {
        switch (this.a) {
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return (MaterialCardView) this.b;
            default:
                return (LinearLayout) this.b;
        }
    }

    @Override // defpackage.n59
    public /* synthetic */ void h(f59 f59Var) {
        ((n59) this.b).h((b69) f59Var);
    }

    @Override // defpackage.fa6
    public cz2 i(Reader reader) throws XmlPullParserException {
        XmlPullParser xmlPullParserNewPullParser = ((XmlPullParserFactory) this.b).newPullParser();
        xmlPullParserNewPullParser.setInput(reader);
        ot9 ot9Var = new ot9();
        ot9Var.a = xmlPullParserNewPullParser;
        return ot9Var;
    }

    @Override // defpackage.zv5
    public Object k(od odVar) {
        return ((aw5) this.b).d.c0(odVar);
    }

    @Override // defpackage.am6
    public ll6 m(ll6 ll6Var, ou5 ou5Var) {
        Resources resources = (Resources) this.b;
        if (ll6Var == null) {
            return null;
        }
        return new qs4(resources, ll6Var);
    }

    @Override // defpackage.ls5
    public tv8 n(View view, tv8 tv8Var) {
        u35 u35Var = (u35) this.b;
        nu0 nu0Var = u35Var.y;
        if (nu0Var != null) {
            u35Var.k.a0.remove(nu0Var);
        }
        nu0 nu0Var2 = new nu0(u35Var.q, tv8Var);
        u35Var.y = nu0Var2;
        nu0Var2.e(u35Var.getWindow());
        BottomSheetBehavior bottomSheetBehavior = u35Var.k;
        nu0 nu0Var3 = u35Var.y;
        ArrayList arrayList = bottomSheetBehavior.a0;
        if (!arrayList.contains(nu0Var3)) {
            arrayList.add(nu0Var3);
        }
        return tv8Var;
    }

    @Override // defpackage.z98
    public x98 o(int i) {
        if (i == 5) {
            return lk.b;
        }
        if (((q34) this.b) == null) {
            this.b = new q34(7);
        }
        return (q34) this.b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.ji3
    public Object t(li3 li3Var, kv1 kv1Var) throws Throwable {
        r3 r3Var;
        sw6 sw6Var;
        if (kv1Var instanceof r3) {
            r3Var = (r3) kv1Var;
            int i = r3Var.d;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                r3Var.d = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                r3Var = new r3(this, kv1Var);
            }
        } else {
            r3Var = new r3(this, kv1Var);
        }
        Object obj = r3Var.b;
        int i2 = r3Var.d;
        be8 be8Var = be8.a;
        if (i2 != 0) {
            if (i2 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            sw6Var = r3Var.a;
            try {
                lg7.H(obj);
                sw6Var.releaseIntercepted();
                return be8Var;
            } catch (Throwable th) {
                th = th;
                sw6Var.releaseIntercepted();
                throw th;
            }
        }
        lg7.H(obj);
        sw6 sw6Var2 = new sw6(li3Var, r3Var.getContext());
        try {
            r3Var.a = sw6Var2;
            r3Var.d = 1;
            try {
                Object objInvoke = ((qt3) this.b).invoke(sw6Var2, r3Var);
                yx1 yx1Var = yx1.a;
                if (objInvoke != yx1Var) {
                    objInvoke = be8Var;
                }
                if (objInvoke == yx1Var) {
                    return yx1Var;
                }
                sw6Var = sw6Var2;
                sw6Var.releaseIntercepted();
                return be8Var;
            } catch (Throwable th2) {
                th = th2;
                sw6Var = sw6Var2;
                sw6Var.releaseIntercepted();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public String toString() {
        switch (this.a) {
            case XmlPullParser.COMMENT /* 9 */:
                return fz5.j(((bz2) this.b).G(), "line ");
            default:
                return super.toString();
        }
    }

    @Override // defpackage.n59
    public void zza(String str) {
        ((n59) this.b).zza(str);
    }

    public /* synthetic */ tr9(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    public tr9(ke keVar, n59 n59Var) {
        this.a = 21;
        this.b = n59Var;
    }

    public tr9(so8 so8Var) {
        this.a = 0;
        Context context = (Context) so8Var.a;
        String str = (String) so8Var.b;
        String str2 = (String) so8Var.c;
        if (str != null) {
            Context applicationContext = context.getApplicationContext();
            if (str2 == null) {
                PreferenceManager.getDefaultSharedPreferences(applicationContext).edit();
            } else {
                applicationContext.getSharedPreferences(str2, 0).edit();
            }
            this.b = (ln5) so8Var.n;
            return;
        }
        c6.f("keysetName cannot be null");
        throw null;
    }

    public tr9(LinearLayout linearLayout, MaterialButton materialButton, QuickRecyclerView quickRecyclerView) {
        this.a = 17;
        this.b = linearLayout;
    }

    public /* synthetic */ tr9(int i, boolean z) {
        this.a = i;
    }

    public tr9(MaterialCardView materialCardView, MaterialButton materialButton, TextView textView, TextView textView2, TextView textView3) {
        this.a = 11;
        this.b = materialCardView;
    }
}
