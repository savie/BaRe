package defpackage;

import android.graphics.Bitmap;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rh7 {
    public static final Bitmap.Config[] d;
    public static final Bitmap.Config[] e;
    public static final Bitmap.Config[] f;
    public static final Bitmap.Config[] g;
    public static final Bitmap.Config[] h;
    public final qh7 a = new qh7(7);
    public final cd b = new cd(8);
    public final HashMap c = new HashMap();

    static {
        Bitmap.Config[] configArr = (Bitmap.Config[]) Arrays.copyOf(new Bitmap.Config[]{Bitmap.Config.ARGB_8888, null}, 3);
        configArr[configArr.length - 1] = Bitmap.Config.RGBA_F16;
        d = configArr;
        e = configArr;
        f = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        g = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        h = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    public static String c(int i, Bitmap.Config config) {
        return "[" + i + "](" + config + ")";
    }

    public final void a(Integer num, Bitmap bitmap) {
        NavigableMap navigableMapD = d(bitmap.getConfig());
        Integer num2 = (Integer) navigableMapD.get(num);
        if (num2 != null) {
            if (num2.intValue() == 1) {
                navigableMapD.remove(num);
                return;
            } else {
                navigableMapD.put(num, Integer.valueOf(num2.intValue() - 1));
                return;
            }
        }
        StringBuilder sb = new StringBuilder("Tried to decrement empty size, size: ");
        sb.append(num);
        String strC = c(xh8.l(bitmap), bitmap.getConfig());
        sb.append(", removed: ");
        sb.append(strC);
        sb.append(", this: ");
        sb.append(this);
        throw new NullPointerException(sb.toString());
    }

    public final Bitmap b(int i, int i2, Bitmap.Config config) {
        Bitmap.Config[] configArr;
        int iM = xh8.m(config) * i * i2;
        qh7 qh7Var = this.a;
        s26 s26VarH = (s26) ((ArrayDeque) qh7Var.b).poll();
        if (s26VarH == null) {
            s26VarH = qh7Var.H();
        }
        ph7 ph7Var = (ph7) s26VarH;
        ph7Var.b = iM;
        ph7Var.c = config;
        if (Bitmap.Config.RGBA_F16.equals(config)) {
            configArr = e;
        } else {
            int i3 = oh7.a[config.ordinal()];
            if (i3 == 1) {
                configArr = d;
            } else if (i3 == 2) {
                configArr = f;
            } else if (i3 != 3) {
                configArr = i3 != 4 ? new Bitmap.Config[]{config} : h;
            } else {
                configArr = g;
            }
        }
        for (Bitmap.Config config2 : configArr) {
            Integer num = (Integer) d(config2).ceilingKey(Integer.valueOf(iM));
            if (num != null && num.intValue() <= iM * 8) {
                if (num.intValue() == iM && (config2 != null ? config2.equals(config) : config == null)) {
                    break;
                    break;
                }
                qh7Var.v(ph7Var);
                int iIntValue = num.intValue();
                s26 s26VarH2 = (s26) ((ArrayDeque) qh7Var.b).poll();
                if (s26VarH2 == null) {
                    s26VarH2 = qh7Var.H();
                }
                ph7Var = (ph7) s26VarH2;
                ph7Var.b = iIntValue;
                ph7Var.c = config2;
                break;
            }
        }
        Bitmap bitmap = (Bitmap) this.b.d(ph7Var);
        if (bitmap != null) {
            a(Integer.valueOf(ph7Var.b), bitmap);
            bitmap.reconfigure(i, i2, config);
        }
        return bitmap;
    }

    public final NavigableMap d(Bitmap.Config config) {
        HashMap map = this.c;
        NavigableMap navigableMap = (NavigableMap) map.get(config);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        map.put(config, treeMap);
        return treeMap;
    }

    public final void e(Bitmap bitmap) {
        int iL = xh8.l(bitmap);
        Bitmap.Config config = bitmap.getConfig();
        qh7 qh7Var = this.a;
        s26 s26VarH = (s26) ((ArrayDeque) qh7Var.b).poll();
        if (s26VarH == null) {
            s26VarH = qh7Var.H();
        }
        ph7 ph7Var = (ph7) s26VarH;
        ph7Var.b = iL;
        ph7Var.c = config;
        this.b.i(ph7Var, bitmap);
        NavigableMap navigableMapD = d(bitmap.getConfig());
        Integer num = (Integer) navigableMapD.get(Integer.valueOf(ph7Var.b));
        navigableMapD.put(Integer.valueOf(ph7Var.b), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    public final String toString() {
        StringBuilder sbS = dj7.s("SizeConfigStrategy{groupedMap=");
        sbS.append(this.b);
        sbS.append(", sortedSizes=(");
        HashMap map = this.c;
        for (Map.Entry entry : map.entrySet()) {
            sbS.append(entry.getKey());
            sbS.append('[');
            sbS.append(entry.getValue());
            sbS.append("], ");
        }
        if (!map.isEmpty()) {
            sbS.replace(sbS.length() - 2, sbS.length(), "");
        }
        sbS.append(")}");
        return sbS.toString();
    }
}
