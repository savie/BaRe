package defpackage;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.Looper;
import android.util.Log;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ai8 {
    public static void a(Bitmap bitmap, OutputStream outputStream) {
        b();
        try {
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, outputStream);
        } catch (Exception e) {
            Log.e("Util", "bitmapToFile", e);
        }
    }

    public static void b() {
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
        }
    }

    public static Bitmap c(Drawable drawable) {
        drawable.getClass();
        try {
            try {
                return ((BitmapDrawable) drawable).getBitmap();
            } catch (Exception unused) {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                bitmapCreateBitmap.getClass();
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                drawable.draw(canvas);
                return bitmapCreateBitmap;
            }
        } catch (Exception e) {
            u48.s("getBitmapFromSpecialDrawable: ", e.getMessage(), "Util");
            return null;
        }
    }

    public static String d(String str, String str2) {
        str.getClass();
        Pattern patternCompile = Pattern.compile(".*".concat(str2));
        patternCompile.getClass();
        String strReplaceAll = patternCompile.matcher(str).replaceAll("");
        strReplaceAll.getClass();
        return strReplaceAll;
    }

    public static Intent e(Context context, String str) {
        context.getClass();
        str.getClass();
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        intent.setData(Uri.parse(str));
        try {
            List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 65536);
            listQueryIntentActivities.getClass();
            if (listQueryIntentActivities.isEmpty()) {
                return null;
            }
            return intent;
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "Util", "getOpenLinkIntent:".concat(str), e, null, 8, null);
            return null;
        }
    }

    public static uh8 f() {
        int iOrdinal = uh8.GoogleDns.ordinal();
        Object obj = null;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            iOrdinal = sharedPreferences.getInt("preferred_ics", iOrdinal);
            z3 z3Var = (z3) uh8.getEntries();
            z3Var.getClass();
            w3 w3Var = new w3(z3Var);
            while (w3Var.hasNext()) {
                Object next = w3Var.next();
                if (iOrdinal == ((uh8) next).ordinal()) {
                    obj = next;
                    break;
                }
            }
            uh8 uh8Var = (uh8) obj;
            return uh8Var == null ? uh8.GoogleDns : uh8Var;
        } catch (ClassCastException unused) {
        }
    }

    public static String g(String str, String str2) {
        List listI;
        Collection collectionP1;
        str.getClass();
        Pattern patternCompile = Pattern.compile(str2);
        patternCompile.getClass();
        nq7.t0(0);
        Matcher matcher = patternCompile.matcher(str);
        if (matcher.find()) {
            ArrayList arrayList = new ArrayList(10);
            int iEnd = 0;
            do {
                arrayList.add(str.subSequence(iEnd, matcher.start()).toString());
                iEnd = matcher.end();
            } while (matcher.find());
            arrayList.add(str.subSequence(iEnd, str.length()).toString());
            listI = arrayList;
        } else {
            listI = nc8.I(str.toString());
        }
        if (listI.isEmpty()) {
            collectionP1 = ov2.a;
        } else {
            ListIterator listIterator = listI.listIterator(listI.size());
            while (listIterator.hasPrevious()) {
                if (((String) listIterator.previous()).length() != 0) {
                    collectionP1 = el1.p1(listI, listIterator.nextIndex() + 1);
                }
            }
            collectionP1 = ov2.a;
        }
        return ((String[]) collectionP1.toArray(new String[0]))[0];
    }

    public static boolean h() {
        boolean z;
        l3 l3Var = (l3) uh8.getEntries();
        l3Var.getClass();
        Object[] objArrD = vm4.D(l3Var, new uh8[0]);
        gj1 gj1Var = new gj1(4);
        if (objArrD.length != 0) {
            objArrD = Arrays.copyOf(objArrD, objArrD.length);
            if (objArrD.length > 1) {
                Arrays.sort(objArrD, gj1Var);
            }
        }
        List<uh8> listAsList = Arrays.asList(objArrD);
        listAsList.getClass();
        if (listAsList.isEmpty()) {
            return false;
        }
        for (uh8 uh8Var : listAsList) {
            String host = uh8Var.getHost();
            int port = uh8Var.getPort();
            try {
                Socket socket = new Socket();
                try {
                    socket.connect(new InetSocketAddress(host, port), 1500);
                    socket.close();
                    z = true;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        rs9.c(socket, th);
                        throw th2;
                    }
                }
            } catch (IOException e) {
                vr6.e$default(vr6.INSTANCE, "Util", xs1.j("Internet access issue: ", e.getMessage()), null, 4, null);
                z = false;
            }
            if (z && f() != uh8Var) {
                vr6.i$default(vr6.INSTANCE, "Util", dj7.l("Changing preferred internet check source: ", f().name(), " -> ", uh8Var.name()), null, 4, null);
                int iOrdinal = uh8Var.ordinal();
                SharedPreferences.Editor editor = cz4.k;
                if (editor == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor.putInt("preferred_ics", iOrdinal).apply();
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    public static boolean i(Context context) {
        context.getClass();
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService(ConnectivityManager.class);
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
            if (networkCapabilities == null) {
                return false;
            }
            return networkCapabilities.hasCapability(12);
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "Util", xs1.j("isNetworkAvailable: ", e.getMessage()), e, null, 8, null);
            return false;
        }
    }

    public static void j(Context context, String str) {
        context.getClass();
        if (str == null) {
            return;
        }
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
        if (launchIntentForPackage == null) {
            Log.e("Util", "openApp: Package not found: ".concat(str));
        } else {
            launchIntentForPackage.addFlags(268435456);
            context.startActivity(launchIntentForPackage);
        }
    }

    public static boolean k(Context context, String str) {
        context.getClass();
        str.getClass();
        Intent intentE = e(context, str);
        if (intentE == null) {
            return false;
        }
        try {
            context.startActivity(intentE);
            return true;
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "Util", "openLink:".concat(str), e, null, 8, null);
            return false;
        }
    }

    public static void l(Context context, String str) {
        context.getClass();
        k(context, "https://play.google.com/store/apps/details?id=" + str);
    }

    public static void m(Context context, int i) {
        context.getClass();
        String string = context.getString(i);
        string.getClass();
        n(context, string);
    }

    public static void n(Context context, String str) {
        context.getClass();
        zn4 zn4Var = zn4.a;
        dj7.y(context, str);
    }

    public static void o(long j) {
        b();
        try {
            Thread.sleep(j);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public static void p(Context context, Intent intent) {
        context.getClass();
        try {
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            Context applicationContext = context.getApplicationContext();
            applicationContext.getClass();
            n(applicationContext, String.valueOf(e.getMessage()));
        }
    }

    public static void q(Context context, Class cls) {
        context.getClass();
        p(context, new Intent(context, (Class<?>) cls));
    }
}
