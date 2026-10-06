package defpackage;

import android.text.Editable;
import android.text.Selection;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.textfield.TextInputLayout;
import java.net.URI;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.AppListItemLayout;
import org.swiftapps.swiftbackup.appslist.ui.AppRowLabelsView;
import org.swiftapps.swiftbackup.appslist.ui.AppSwipeActionRevealLayout;
import org.swiftapps.swiftbackup.views.MCheckBox;
import org.swiftapps.swiftbackup.views.SwiftListItemCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dr implements jk8 {
    public final /* synthetic */ int a;
    public Object b;
    public Object c;
    public Object d;

    public dr(kb2 kb2Var, fo8 fo8Var, je2 je2Var, Set set) {
        this.a = 2;
        this.b = fo8Var;
        this.c = kb2Var;
        this.d = je2Var;
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            int[] iArr = (int[]) it.next();
            String str = new String(iArr, 0, iArr.length);
            f(str, 0, str.length(), 1, true, new ci9(str, 1));
        }
    }

    public static dr a(View view) {
        ImageView imageView = (ImageView) ms8.u(view, R.id.iv_selected_indicator);
        if (imageView != null) {
            MaterialCardView materialCardView = (MaterialCardView) view;
            return new dr(materialCardView, imageView, materialCardView, 4);
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.iv_selected_indicator)));
        return null;
    }

    public static boolean c(Editable editable, KeyEvent keyEvent, boolean z) {
        bd8[] bd8VarArr;
        if (KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState())) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (selectionStart != -1 && selectionEnd != -1 && selectionStart == selectionEnd && (bd8VarArr = (bd8[]) editable.getSpans(selectionStart, selectionEnd, bd8.class)) != null && bd8VarArr.length > 0) {
                for (bd8 bd8Var : bd8VarArr) {
                    int spanStart = editable.getSpanStart(bd8Var);
                    int spanEnd = editable.getSpanEnd(bd8Var);
                    if ((z && spanStart == selectionStart) || ((!z && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                        editable.delete(spanStart, spanEnd);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static void g(HashMap map) {
        if (!"websocket".equals(map.get("upgrade"))) {
            throw new br8("connection failed: missing header field in server handshake: Upgrade");
        }
        if (!"upgrade".equals(map.get("connection"))) {
            throw new br8("connection failed: missing header field in server handshake: Connection");
        }
    }

    public static void h(String str) {
        int i = Integer.parseInt(str.substring(9, 12));
        if (i == 407) {
            throw new br8("connection failed: proxy authentication not supported");
        }
        if (i == 404) {
            throw new br8("connection failed: 404 not found");
        }
        if (i != 101) {
            throw new br8(fz5.j(i, "connection failed: unknown status code "));
        }
    }

    public s03 b(String str) {
        lu4 lu4Var = (lu4) this.b;
        s03 s03Var = (s03) lu4Var.get(str);
        if (s03Var != null) {
            return s03Var;
        }
        my5 my5Var = new my5(str, new ln5((Class) this.d, 4), (vq3) this.c);
        if (lu4Var != null) {
            lu4Var.put(str, my5Var);
        }
        return my5Var;
    }

    public byte[] d() {
        HashMap map = (HashMap) this.d;
        URI uri = (URI) this.b;
        String path = uri.getPath();
        String query = uri.getQuery();
        StringBuilder sbS = dj7.s(path);
        sbS.append(query == null ? "" : "?".concat(query));
        String string = sbS.toString();
        String host = uri.getHost();
        if (uri.getPort() != -1) {
            StringBuilder sbN = fz5.n(host, ":");
            sbN.append(uri.getPort());
            host = sbN.toString();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("Host", host);
        linkedHashMap.put("Upgrade", "websocket");
        linkedHashMap.put("Connection", "Upgrade");
        linkedHashMap.put("Sec-WebSocket-Version", "13");
        linkedHashMap.put("Sec-WebSocket-Key", (String) this.c);
        for (String str : map.keySet()) {
            if (!linkedHashMap.containsKey(str)) {
                linkedHashMap.put(str, (String) map.get(str));
            }
        }
        StringBuilder sbS2 = dj7.s(eq3.k("GET ", string, " HTTP/1.1\r\n"));
        String str2 = new String();
        for (String str3 : linkedHashMap.keySet()) {
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append(str3);
            sb.append(": ");
            str2 = dj7.n(sb, (String) linkedHashMap.get(str3), "\r\n");
        }
        sbS2.append(str2);
        byte[] bytes = sbS2.toString().concat("\r\n").getBytes(Charset.defaultCharset());
        byte[] bArr = new byte[bytes.length];
        System.arraycopy(bytes, 0, bArr, 0, bytes.length);
        return bArr;
    }

    public boolean e(CharSequence charSequence, int i, int i2, ad8 ad8Var) {
        if ((ad8Var.c & 3) == 0) {
            je2 je2Var = (je2) this.d;
            nf5 nf5VarB = ad8Var.b();
            int iA = nf5VarB.a(8);
            if (iA != 0) {
                ((ByteBuffer) nf5VarB.d).getShort(iA + nf5VarB.a);
            }
            je2Var.getClass();
            ThreadLocal threadLocal = je2.b;
            if (threadLocal.get() == null) {
                threadLocal.set(new StringBuilder());
            }
            StringBuilder sb = (StringBuilder) threadLocal.get();
            sb.setLength(0);
            while (i < i2) {
                sb.append(charSequence.charAt(i));
                i++;
            }
            boolean zHasGlyph = je2Var.a.hasGlyph(sb.toString());
            int i3 = ad8Var.c & 4;
            ad8Var.c = zHasGlyph ? i3 | 2 : i3 | 1;
        }
        return (ad8Var.c & 3) == 2;
    }

    public Object f(CharSequence charSequence, int i, int i2, int i3, boolean z, wu2 wu2Var) {
        int i4;
        char c;
        xu2 xu2Var = new xu2((pf5) ((kb2) this.c).c);
        int iCodePointAt = Character.codePointAt(charSequence, i);
        int i5 = 0;
        boolean zD = true;
        int iCharCount = i;
        loop0: while (true) {
            i4 = iCharCount;
            while (true) {
                if (iCharCount < i2 && i5 < i3 && zD) {
                    SparseArray sparseArray = xu2Var.c.a;
                    pf5 pf5Var = sparseArray == null ? null : (pf5) sparseArray.get(iCodePointAt);
                    if (xu2Var.a == 2) {
                        if (pf5Var != null) {
                            xu2Var.c = pf5Var;
                            xu2Var.f++;
                        } else {
                            if (iCodePointAt == 65038) {
                                xu2Var.a();
                            } else if (iCodePointAt != 65039) {
                                pf5 pf5Var2 = xu2Var.c;
                                if (pf5Var2.b != null) {
                                    if (xu2Var.f != 1) {
                                        xu2Var.d = pf5Var2;
                                        xu2Var.a();
                                    } else if (xu2Var.b()) {
                                        xu2Var.d = xu2Var.c;
                                        xu2Var.a();
                                    } else {
                                        xu2Var.a();
                                    }
                                    c = 3;
                                } else {
                                    xu2Var.a();
                                }
                            }
                            c = 1;
                        }
                        c = 2;
                    } else if (pf5Var == null) {
                        xu2Var.a();
                        c = 1;
                    } else {
                        xu2Var.a = 2;
                        xu2Var.c = pf5Var;
                        xu2Var.f = 1;
                        c = 2;
                    }
                    xu2Var.e = iCodePointAt;
                    if (c == 1) {
                        iCharCount = Character.charCount(Character.codePointAt(charSequence, i4)) + i4;
                        if (iCharCount >= i2) {
                            break;
                        }
                        iCodePointAt = Character.codePointAt(charSequence, iCharCount);
                        break;
                    }
                    if (c == 2) {
                        int iCharCount2 = Character.charCount(iCodePointAt) + iCharCount;
                        if (iCharCount2 < i2) {
                            iCodePointAt = Character.codePointAt(charSequence, iCharCount2);
                        }
                        iCharCount = iCharCount2;
                    } else if (c == 3) {
                        if (!z && e(charSequence, i4, iCharCount, xu2Var.d.b)) {
                            break;
                        }
                        zD = wu2Var.d(charSequence, i4, iCharCount, xu2Var.d.b);
                        i5++;
                        break;
                    }
                } else {
                    break loop0;
                }
            }
        }
        if (xu2Var.a == 2 && xu2Var.c.b != null && ((xu2Var.f > 1 || xu2Var.b()) && i5 < i3 && zD && (z || !e(charSequence, i4, iCharCount, xu2Var.c.b)))) {
            wu2Var.d(charSequence, i4, iCharCount, xu2Var.c.b);
        }
        return wu2Var.getResult();
    }

    @Override // defpackage.jk8
    public View getRoot() {
        switch (this.a) {
            case 0:
                return (AppListItemLayout) this.b;
            case 1:
                return (TextInputLayout) this.b;
            default:
                return (MaterialCardView) this.b;
        }
    }

    public to9 i() {
        km8 km8Var;
        d2a d2aVarB;
        dp9 dp9Var = (dp9) this.b;
        if (dp9Var == null || (km8Var = (km8) this.c) == null) {
            c6.f("Cannot build without parameters and/or key material");
            return null;
        }
        if (dp9Var.a != ((d2a) km8Var.a).a.length) {
            m0.h("Key size mismatch");
            return null;
        }
        if (dp9Var.a() && ((Integer) this.d) == null) {
            m0.h("Cannot create key without ID requirement with parameters with ID requirement");
            return null;
        }
        if (!((dp9) this.b).a() && ((Integer) this.d) != null) {
            m0.h("Cannot create key with ID requirement with parameters without ID requirement");
            return null;
        }
        cp9 cp9Var = ((dp9) this.b).b;
        if (cp9Var == cp9.d) {
            d2aVarB = zs9.a;
        } else if (cp9Var == cp9.c) {
            d2aVarB = zs9.a(((Integer) this.d).intValue());
        } else {
            if (cp9Var != cp9.b) {
                l0.e("Unknown AesSivParameters.Variant: ".concat(String.valueOf(cp9Var)));
                return null;
            }
            d2aVarB = zs9.b(((Integer) this.d).intValue());
        }
        return new to9((dp9) this.b, (km8) this.c, d2aVarB, (Integer) this.d);
    }

    public /* synthetic */ dr(ViewGroup viewGroup, View view, ViewGroup viewGroup2, int i) {
        this.a = i;
        this.b = viewGroup;
        this.c = view;
        this.d = viewGroup2;
    }

    public dr(ri2 ri2Var, x44 x44Var) {
        this.a = 3;
        this.b = new lu4();
        this.c = (vq3) x44Var.n;
        this.d = ri2Var.getType();
    }

    public dr(AppListItemLayout appListItemLayout, MaterialButton materialButton, MaterialButton materialButton2, MaterialButton materialButton3, MaterialButton materialButton4, MCheckBox mCheckBox, AppListItemLayout appListItemLayout2, ImageView imageView, SwiftListItemCardView swiftListItemCardView, ImageView imageView2, ImageView imageView3, View view, AppSwipeActionRevealLayout appSwipeActionRevealLayout, AppSwipeActionRevealLayout appSwipeActionRevealLayout2, AppRowLabelsView appRowLabelsView, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.a = 0;
        this.b = appListItemLayout;
        this.c = appListItemLayout2;
        this.d = swiftListItemCardView;
    }

    public /* synthetic */ dr(int i) {
        this.a = i;
    }

    public dr(Class cls, Class cls2, Class cls3) {
        this.a = 5;
        this.c = cls2;
        this.b = cls3;
        this.d = cls;
    }
}
