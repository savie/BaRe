package defpackage;

import android.content.SharedPreferences;
import java.io.File;
import java.io.IOException;
import java.io.UncheckedIOException;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.StringCharacterIterator;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class p93 {
    public static final p93 a = new p93();
    public static final ai6 b = new ai6("^\\s*(\\d+)\\s+(.+)$");

    static {
        new LinkedHashMap();
    }

    public static Double a(Long l, Long l2) {
        if (l == null || l.longValue() <= 0 || l2 == null || l2.longValue() <= 0 || l2.longValue() >= l.longValue()) {
            return null;
        }
        return Double.valueOf(((l.longValue() - l2.longValue()) / l.longValue()) * 100.0d);
    }

    public static String b(double d) {
        BigDecimal scale = BigDecimal.valueOf(d).setScale(2, RoundingMode.HALF_UP);
        if (scale.compareTo(new BigDecimal("100")) >= 0) {
            scale = new BigDecimal("99.99");
        }
        return eq3.j(new DecimalFormat("0.##").format(scale), "%");
    }

    public static String c(Long l) {
        if (l == null || l.longValue() == -1) {
            SwiftApp.Companion companion = SwiftApp.d;
            return dj7.g(R.string.unknown);
        }
        long jAbs = l.longValue() == Long.MIN_VALUE ? Long.MAX_VALUE : Math.abs(l.longValue());
        if (jAbs < 1024) {
            return l + " B";
        }
        StringCharacterIterator stringCharacterIterator = new StringCharacterIterator("KMGTPE");
        long j = jAbs;
        for (int i = 40; i >= 0 && jAbs > (1152865209611504844 >> i); i -= 10) {
            j >>= 10;
            stringCharacterIterator.next();
        }
        return String.format("%s %cB", Arrays.copyOf(new Object[]{new DecimalFormat("##.##").format((j * ((long) Long.signum(l.longValue()))) / 1024.0d), Character.valueOf(stringCharacterIterator.current())}, 2));
    }

    public static String d(int i, int i2) {
        String string;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("app_locale", null);
            NumberFormat numberInstance = NumberFormat.getNumberInstance((string == null || string.length() == 0) ? xx3.h().a() : xx3.g(string).a());
            if (i == 0 && i2 == 0) {
                return "0 items";
            }
            String str = numberInstance.format(Integer.valueOf(i2));
            String str2 = numberInstance.format(Integer.valueOf(i));
            String strJ = eq3.j(str, " folder");
            if (i2 != 1) {
                strJ = null;
            }
            String strJ2 = eq3.j(str, " folders");
            if (i2 <= 1) {
                strJ2 = null;
            }
            String strJ3 = eq3.j(str2, " file");
            if (i != 1) {
                strJ3 = null;
            }
            return el1.Y0(x50.p0(new String[]{strJ, strJ2, strJ3, i > 1 ? eq3.j(str2, " files") : null}), null, null, null, null, 63);
        } catch (ClassCastException unused) {
            string = null;
        }
    }

    public static long g(p93 p93Var, String str) {
        int i;
        String string;
        Object next;
        String str2;
        g00 g00Var = g00.a;
        if (g00.x()) {
            boolean z = g42.a;
            str = uq7.T(str, g42.a("AQLtx28gNYXpyMRmKyV9Yo5p9AR04Uvnp5UkmkR5i39N5ky9ky6+MqOz0sCqR1c="), g42.a("AQI+UbXNmLang25NUR5B3MdXRksgwAYEcSFFo6ICdtsZiBszQUNh5rw="));
        }
        jr7 jr7Var = new jr7(str);
        if (!jr7Var.b("[ -e @@ ]")) {
            return -1L;
        }
        if (jr7Var.b("[ -f @@ ]")) {
            return jr7Var.length();
        }
        System.currentTimeMillis();
        String strJ = xs1.j("toybox du -sk ", jr7Var.getPath());
        Iterator it = (mp6.f() ? mp6.a.h(new String[]{strJ}, ip6.SHIZUKU) : mp6.l(strJ)).iterator();
        while (true) {
            string = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            String str3 = (String) next;
            if (str3 != null) {
                String path = jr7Var.getPath();
                path.getClass();
                if (uq7.O(str3, path, false)) {
                    break;
                }
            }
        }
        String str4 = (String) next;
        if (str4 != null && (str2 = (String) el1.U0(nq7.x0(str4, new String[]{"\t"}, 6))) != null) {
            string = nq7.H0(str2).toString();
        }
        if (string == null || string.length() == 0) {
            return -1L;
        }
        for (i = 0; i < string.length(); i++) {
            if (!Character.isDigit(string.charAt(i))) {
                return -1L;
            }
        }
        try {
            return Long.parseLong(string) * 1024;
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    public final long e(File file) {
        try {
            if (!file.exists() || !file.canRead()) {
                String path = file.getPath();
                path.getClass();
                return g(this, path);
            }
            int i = qa3.a;
            try {
                return new mb(file).b();
            } catch (IOException e) {
                throw new UncheckedIOException(e);
            }
        } catch (Exception e2) {
            vr6.e$default(vr6.INSTANCE, "FileSizeHelper", String.valueOf(e2), null, 4, null);
            return -1L;
        }
    }

    public final long f(String str) {
        str.getClass();
        return e(new File(str));
    }
}
