package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.datatransport.cct.CctBackendFactory;
import com.google.android.datatransport.runtime.backends.TransportBackendDiscovery;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ib implements k58, jk8, qc8, n59 {
    public final /* synthetic */ int a;
    public Object b;
    public Object c;

    public ib(lu5 lu5Var) {
        this.a = 0;
        this.b = lu5Var;
        this.c = new AtomicReference();
        lu5Var.a(new gb(this, 0));
    }

    /* JADX WARN: Code duplicated, block: B:19:0x003a A[Catch: IOException -> 0x006c, TryCatch #0 {IOException -> 0x006c, blocks: (B:2:0x0000, B:3:0x000a, B:5:0x000d, B:7:0x001e, B:9:0x0026, B:21:0x0042, B:19:0x003a, B:20:0x003d, B:23:0x0047, B:24:0x004a, B:25:0x005b), top: B:30:0x0000 }] */
    public static ib k(String... strArr) {
        String str;
        try {
            hy0[] hy0VarArr = new hy0[strArr.length];
            nw0 nw0Var = new nw0();
            for (int i = 0; i < strArr.length; i++) {
                String str2 = strArr[i];
                String[] strArr2 = ul4.e;
                nw0Var.J(34);
                int length = str2.length();
                int i2 = 0;
                for (int i3 = 0; i3 < length; i3++) {
                    char cCharAt = str2.charAt(i3);
                    if (cCharAt < 128) {
                        str = strArr2[cCharAt];
                        if (str != null) {
                            if (i2 < i3) {
                                nw0Var.Y(i2, i3, str2);
                            }
                            nw0Var.Z(str);
                            i2 = i3 + 1;
                        }
                    } else {
                        if (cCharAt == 8232) {
                            str = "\\u2028";
                        } else if (cCharAt == 8233) {
                            str = "\\u2029";
                        }
                        if (i2 < i3) {
                            nw0Var.Y(i2, i3, str2);
                        }
                        nw0Var.Z(str);
                        i2 = i3 + 1;
                    }
                }
                if (i2 < length) {
                    nw0Var.Y(i2, length, str2);
                }
                nw0Var.J(34);
                nw0Var.readByte();
                hy0VarArr[i] = nw0Var.o(nw0Var.b);
            }
            return new ib(6, (String[]) strArr.clone(), wx3.w(hy0VarArr));
        } catch (IOException e) {
            e6.e(e);
            return null;
        }
    }

    @Override // defpackage.k58
    public void a(boolean z, ro roVar) {
        if (((AtomicReference) this.c).get() == null) {
            roVar.q(null);
        } else {
            e6.d();
        }
    }

    public void b(Object obj, String str) {
        int length = str.length();
        String strValueOf = String.valueOf(obj);
        ((ArrayList) this.b).add(eq3.n(new StringBuilder(length + 1 + strValueOf.length()), str, "=", strValueOf));
    }

    @Override // defpackage.qc8
    public gc8 c(Type type) {
        return ((lc8) this.b).b(null, type, (jc8) this.c);
    }

    public void d(StringBuilder sb, Iterator it) {
        String str = (String) this.c;
        sg9 sg9Var = (sg9) this.b;
        if (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            sb.append(sg9.b(entry.getKey()));
            sb.append((CharSequence) str);
            sb.append(sg9.b(entry.getValue()));
            while (it.hasNext()) {
                sb.append((CharSequence) sg9Var.b);
                Map.Entry entry2 = (Map.Entry) it.next();
                sb.append(sg9.b(entry2.getKey()));
                sb.append((CharSequence) str);
                sb.append(sg9.b(entry2.getValue()));
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x003e  */
    /* JADX WARN: Code duplicated, block: B:17:0x0046  */
    /* JADX WARN: Code duplicated, block: B:20:0x0059  */
    public CctBackendFactory e(String str) {
        Bundle bundle;
        Map map;
        Object obj;
        if (((Map) this.c) == null) {
            Context context = (Context) this.b;
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    Log.w("BackendRegistry", "Context has no PackageManager.");
                } else {
                    ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, (Class<?>) TransportBackendDiscovery.class), 128);
                    if (serviceInfo == null) {
                        Log.w("BackendRegistry", "TransportBackendDiscovery has no service info.");
                    } else {
                        bundle = serviceInfo.metaData;
                    }
                    if (bundle == null) {
                        Log.w("BackendRegistry", "Could not retrieve metadata, returning empty list of transport backends.");
                        map = Collections.EMPTY_MAP;
                    } else {
                        HashMap map2 = new HashMap();
                        for (String str2 : bundle.keySet()) {
                            obj = bundle.get(str2);
                            if (!(obj instanceof String) && str2.startsWith("backend:")) {
                                for (String str3 : ((String) obj).split(",", -1)) {
                                    String strTrim = str3.trim();
                                    if (!strTrim.isEmpty()) {
                                        map2.put(strTrim, str2.substring(8));
                                    }
                                }
                            }
                        }
                        map = map2;
                    }
                    this.c = map;
                }
            } catch (PackageManager.NameNotFoundException unused) {
                Log.w("BackendRegistry", "Application info not found.");
            }
            bundle = null;
            if (bundle == null) {
                Log.w("BackendRegistry", "Could not retrieve metadata, returning empty list of transport backends.");
                map = Collections.EMPTY_MAP;
            } else {
                HashMap map3 = new HashMap();
                while (r6.hasNext()) {
                    obj = bundle.get(str2);
                    if (!(obj instanceof String)) {
                    }
                }
                map = map3;
            }
            this.c = map;
        }
        String str4 = (String) ((Map) this.c).get(str);
        if (str4 == null) {
            return null;
        }
        try {
            return (CctBackendFactory) Class.forName(str4).asSubclass(CctBackendFactory.class).getDeclaredConstructor(null).newInstance(null);
        } catch (ClassNotFoundException e) {
            Log.w("BackendRegistry", "Class " + str4 + " is not found.", e);
            return null;
        } catch (IllegalAccessException e2) {
            Log.w("BackendRegistry", "Could not instantiate " + str4 + ".", e2);
            return null;
        } catch (InstantiationException e3) {
            Log.w("BackendRegistry", "Could not instantiate " + str4 + ".", e3);
            return null;
        } catch (NoSuchMethodException e4) {
            Log.w("BackendRegistry", "Could not instantiate ".concat(str4), e4);
            return null;
        } catch (InvocationTargetException e5) {
            Log.w("BackendRegistry", "Could not instantiate ".concat(str4), e5);
            return null;
        }
    }

    public qn5 f() {
        gz0 gz0Var = (gz0) this.b;
        if (gz0Var.b) {
            return gz0Var.a.a;
        }
        return null;
    }

    public qn5 g() {
        gz0 gz0Var = (gz0) this.c;
        if (gz0Var.b) {
            return gz0Var.a.a;
        }
        return null;
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (MaterialCardView) this.b;
    }

    @Override // defpackage.n59
    public void h(f59 f59Var) {
        yf1 yf1Var = (yf1) this.b;
        k69 k69Var = (k69) f59Var;
        if (TextUtils.isEmpty(k69Var.H)) {
            ke.q((ke) this.c, k69Var, yf1Var, this);
        } else {
            yf1Var.f(new wc9(k69Var.H, k69Var.G, k69Var.a()));
        }
    }

    public KeyListener i(KeyListener keyListener) {
        if (keyListener instanceof NumberKeyListener) {
            return keyListener;
        }
        ((ro) ((km5) this.c).b).getClass();
        if (keyListener instanceof vu2) {
            return keyListener;
        }
        if (keyListener == null) {
            return null;
        }
        return keyListener instanceof NumberKeyListener ? keyListener : new vu2(keyListener);
    }

    public void j(AttributeSet attributeSet, int i) {
        TypedArray typedArrayObtainStyledAttributes = ((EditText) this.b).getContext().obtainStyledAttributes(attributeSet, ge6.i, i, 0);
        try {
            boolean z = typedArrayObtainStyledAttributes.hasValue(14) ? typedArrayObtainStyledAttributes.getBoolean(14, true) : true;
            typedArrayObtainStyledAttributes.recycle();
            n(z);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public su2 l(InputConnection inputConnection, EditorInfo editorInfo) {
        InputConnection inputConnection2;
        km5 km5Var = (km5) this.c;
        if (inputConnection == null) {
            km5Var.getClass();
            inputConnection2 = null;
        } else {
            ro roVar = (ro) km5Var.b;
            roVar.getClass();
            if (!(inputConnection instanceof su2)) {
                inputConnection = new su2(editorInfo, inputConnection, (EditText) roVar.b);
            }
            inputConnection2 = inputConnection;
        }
        return (su2) inputConnection2;
    }

    /* JADX WARN: Code duplicated, block: B:113:0x0110 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x0109 A[Catch: IOException -> 0x0091, XmlPullParserException -> 0x0094, TryCatch #2 {IOException -> 0x0091, XmlPullParserException -> 0x0094, blocks: (B:20:0x0062, B:97:0x0209, B:28:0x0074, B:29:0x0082, B:31:0x0087, B:38:0x0097, B:46:0x00b1, B:41:0x00a0, B:44:0x00a9, B:47:0x00bf, B:51:0x00ce, B:53:0x00d6, B:54:0x00e0, B:63:0x0109, B:64:0x0110, B:65:0x0128, B:57:0x00e9, B:59:0x00f1, B:60:0x00ff, B:66:0x0129, B:68:0x0131, B:69:0x013f, B:72:0x0149, B:73:0x0154, B:74:0x016c, B:75:0x016d, B:78:0x0177, B:79:0x0182, B:80:0x019a, B:81:0x019b, B:83:0x01a3, B:84:0x01ac, B:87:0x01b6, B:88:0x01c0, B:89:0x01d8, B:90:0x01d9, B:93:0x01e3, B:94:0x01ed, B:95:0x0205, B:96:0x0206), top: B:105:0x0062 }] */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public void m(Context context, XmlPullParser xmlPullParser) {
        nt1 nt1Var = new nt1();
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            String attributeName = xmlPullParser.getAttributeName(i);
            String attributeValue = xmlPullParser.getAttributeValue(i);
            if (attributeName != null && attributeValue != null && "id".equals(attributeName)) {
                int identifier = attributeValue.contains("/") ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), "id", context.getPackageName()) : -1;
                if (identifier == -1) {
                    if (attributeValue.length() > 1) {
                        identifier = Integer.parseInt(attributeValue.substring(1));
                    } else {
                        Log.e("ConstraintLayoutStates", "error in parsing id");
                    }
                }
                try {
                    int eventType = xmlPullParser.getEventType();
                    it1 it1VarF = null;
                    while (eventType != 1) {
                        if (eventType == 0) {
                            xmlPullParser.getName();
                        } else if (eventType == 2) {
                            String name = xmlPullParser.getName();
                            switch (name.hashCode()) {
                                case -2025855158:
                                    if (name.equals("Layout")) {
                                        if (it1VarF == null) {
                                            throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                        }
                                        it1VarF.d.a(context, Xml.asAttributeSet(xmlPullParser));
                                    } else {
                                        continue;
                                    }
                                    break;
                                case -1984451626:
                                    if (name.equals("Motion")) {
                                        if (it1VarF == null) {
                                            throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                        }
                                        it1VarF.c.a(context, Xml.asAttributeSet(xmlPullParser));
                                    } else {
                                        continue;
                                    }
                                    break;
                                case -1962203927:
                                    if (name.equals("ConstraintOverride")) {
                                        it1VarF = nt1.f(context, Xml.asAttributeSet(xmlPullParser), true);
                                    }
                                    break;
                                case -1269513683:
                                    if (name.equals("PropertySet")) {
                                        if (it1VarF == null) {
                                            throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                        }
                                        it1VarF.b.a(context, Xml.asAttributeSet(xmlPullParser));
                                    } else {
                                        continue;
                                    }
                                    break;
                                case -1238332596:
                                    if (name.equals("Transform")) {
                                        if (it1VarF == null) {
                                            throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                        }
                                        it1VarF.e.a(context, Xml.asAttributeSet(xmlPullParser));
                                    } else {
                                        continue;
                                    }
                                    break;
                                case -71750448:
                                    if (name.equals("Guideline")) {
                                        it1VarF = nt1.f(context, Xml.asAttributeSet(xmlPullParser), false);
                                        it1VarF.d.a = true;
                                    }
                                    break;
                                case 366511058:
                                    if (name.equals("CustomMethod")) {
                                        if (it1VarF != null) {
                                            throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                        }
                                        zs1.a(context, xmlPullParser, it1VarF.f);
                                    } else {
                                        continue;
                                    }
                                    break;
                                case 1331510167:
                                    if (name.equals("Barrier")) {
                                        it1VarF = nt1.f(context, Xml.asAttributeSet(xmlPullParser), false);
                                        it1VarF.d.h0 = 1;
                                    }
                                    break;
                                case 1791837707:
                                    if (name.equals("CustomAttribute")) {
                                        if (it1VarF != null) {
                                            throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                        }
                                        zs1.a(context, xmlPullParser, it1VarF.f);
                                    } else {
                                        continue;
                                    }
                                    break;
                                case 1803088381:
                                    if (name.equals("Constraint")) {
                                        it1VarF = nt1.f(context, Xml.asAttributeSet(xmlPullParser), false);
                                    }
                                    break;
                            }
                        } else if (eventType == 3) {
                            String lowerCase = xmlPullParser.getName().toLowerCase(Locale.ROOT);
                            switch (lowerCase.hashCode()) {
                                case -2075718416:
                                    if (lowerCase.equals("guideline")) {
                                        nt1Var.c.put(Integer.valueOf(it1VarF.a), it1VarF);
                                        it1VarF = null;
                                    }
                                    break;
                                case -190376483:
                                    if (lowerCase.equals("constraint")) {
                                        nt1Var.c.put(Integer.valueOf(it1VarF.a), it1VarF);
                                        it1VarF = null;
                                    }
                                    break;
                                case 426575017:
                                    if (lowerCase.equals("constraintoverride")) {
                                        nt1Var.c.put(Integer.valueOf(it1VarF.a), it1VarF);
                                        it1VarF = null;
                                    }
                                    break;
                                case 2146106725:
                                    if (lowerCase.equals("constraintset")) {
                                        ((SparseArray) this.c).put(identifier, nt1Var);
                                        return;
                                    }
                                    break;
                                    break;
                                default:
                                    break;
                            }
                        }
                        eventType = xmlPullParser.next();
                    }
                } catch (IOException e) {
                    Log.e("ConstraintSet", "Error parsing XML resource", e);
                } catch (XmlPullParserException e2) {
                    Log.e("ConstraintSet", "Error parsing XML resource", e2);
                }
                ((SparseArray) this.c).put(identifier, nt1Var);
                return;
            }
        }
    }

    public void n(boolean z) {
        bv2 bv2Var = (bv2) ((ro) ((km5) this.c).b).c;
        if (bv2Var.c != z) {
            if (bv2Var.b != null) {
                ku2 ku2VarA = ku2.a();
                av2 av2Var = bv2Var.b;
                ku2VarA.getClass();
                yc9.f(av2Var, "initCallback cannot be null");
                ReentrantReadWriteLock reentrantReadWriteLock = ku2VarA.a;
                reentrantReadWriteLock.writeLock().lock();
                try {
                    ku2VarA.b.remove(av2Var);
                    reentrantReadWriteLock.writeLock().unlock();
                } catch (Throwable th) {
                    reentrantReadWriteLock.writeLock().unlock();
                    throw th;
                }
            }
            bv2Var.c = z;
            if (z) {
                bv2.a(bv2Var.a, ku2.a().b());
            }
        }
    }

    public ib o(sb4 sb4Var, boolean z, boolean z2) {
        return new ib(14, new gz0(sb4Var, z, z2), (gz0) this.c);
    }

    public String toString() {
        switch (this.a) {
            case 8:
                StringBuilder sb = new StringBuilder(100);
                sb.append(this.c.getClass().getSimpleName());
                sb.append('{');
                ArrayList arrayList = (ArrayList) this.b;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    sb.append((String) arrayList.get(i));
                    if (i < size - 1) {
                        sb.append(", ");
                    }
                }
                sb.append('}');
                return sb.toString();
            default:
                return super.toString();
        }
    }

    @Override // defpackage.n59
    public void zza(String str) {
        ((yf1) this.b).a(zv1.t(str));
    }

    public /* synthetic */ ib(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    public ib(ke keVar, yf1 yf1Var) {
        this.a = 16;
        this.b = yf1Var;
        Objects.requireNonNull(keVar);
        this.c = keVar;
    }

    public /* synthetic */ ib(Object obj) {
        this.a = 8;
        this.c = obj;
        this.b = new ArrayList();
    }

    public /* synthetic */ ib(int i) {
        this.a = i;
    }

    public ib(TextView textView) {
        this.a = 12;
        this.c = textView;
        this.b = new ib0(this, 8);
    }

    public ib(EditText editText) {
        this.a = 1;
        this.b = editText;
        this.c = new km5(editText);
    }

    public ib(MaterialCardView materialCardView, MaterialCardView materialCardView2, ImageView imageView, LinearProgressIndicator linearProgressIndicator, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.a = 11;
        this.b = materialCardView;
        this.c = textView;
    }

    public ib(Context context) {
        this.a = 7;
        this.c = null;
        this.b = context;
    }
}
