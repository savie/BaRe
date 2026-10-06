package defpackage;

import android.os.Looper;
import android.util.Log;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.view.animation.ScaleAnimation;
import android.widget.ImageView;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.appslist.data.FavoriteApp;
import org.swiftapps.swiftbackup.appslist.data.FavoriteAppsRepo$FavoritesWrapper;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v53 {
    public static boolean b;
    public static Toast d;
    public static final v53 a = new v53();
    public static LinkedHashMap c = new LinkedHashMap();

    public static void a(ImageView imageView) {
        imageView.getClass();
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 1.1f, 1.0f, 1.1f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setDuration(200L);
        scaleAnimation.setFillAfter(true);
        scaleAnimation.start();
        AnimationSet animationSet = new AnimationSet(true);
        animationSet.addAnimation(scaleAnimation);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(200L);
        animationSet.addAnimation(alphaAnimation);
        imageView.startAnimation(animationSet);
        imageView.postDelayed(new u53(imageView), 200L);
    }

    public static q63 d() {
        SwiftApp.Companion companion = SwiftApp.d;
        return new q63(SwiftApp.Companion.c().getFilesDir(), "favorites/cached_favorites", 2);
    }

    public final synchronized Map b() {
        List<FavoriteApp> items;
        try {
            if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
                throw new IllegalThreadStateException("Method called from main thread");
            }
            try {
                gv7 gv7Var = w14.a;
                FavoriteAppsRepo$FavoritesWrapper favoriteAppsRepo$FavoritesWrapper = (FavoriteAppsRepo$FavoritesWrapper) w14.b(d(), FavoriteAppsRepo$FavoritesWrapper.class, true);
                if (favoriteAppsRepo$FavoritesWrapper != null && (items = favoriteAppsRepo$FavoritesWrapper.getItems()) != null && !items.isEmpty()) {
                    Log.d("_FavoriteAppsRepo", "fetchFromFile: " + favoriteAppsRepo$FavoritesWrapper.getItems().size() + " items");
                    List<FavoriteApp> items2 = favoriteAppsRepo$FavoritesWrapper.getItems();
                    int iQ0 = x65.q0(hl1.G0(items2, 10));
                    if (iQ0 < 16) {
                        iQ0 = 16;
                    }
                    LinkedHashMap linkedHashMap = new LinkedHashMap(iQ0);
                    for (Object obj : items2) {
                        linkedHashMap.put(((FavoriteApp) obj).getPackageName(), (FavoriteApp) obj);
                    }
                    c = new LinkedHashMap(linkedHashMap);
                }
            } catch (Exception unused) {
            }
        } catch (Throwable th) {
            throw th;
        }
        return c;
    }

    public final boolean c() {
        Boolean boolValueOf;
        Boolean boolValueOf2;
        LinkedHashMap linkedHashMap;
        Log.d("_FavoriteAppsRepo", "Fetching on demand");
        ai8.b();
        try {
            d45.b.getClass();
            MFirebaseUser mFirebaseUserA = d45.a();
            boolValueOf = mFirebaseUserA != null ? Boolean.valueOf(mFirebaseUserA.isAnonymous()) : null;
        } catch (Exception unused) {
        }
        if (pe4.d(boolValueOf, Boolean.TRUE) || !ai8.h()) {
            b();
            return true;
        }
        zc2 zc2VarD = re3.k().d("favoriteApps");
        try {
            d45.b.getClass();
            MFirebaseUser mFirebaseUserA2 = d45.a();
            boolValueOf2 = mFirebaseUserA2 != null ? Boolean.valueOf(mFirebaseUserA2.isAnonymous()) : null;
        } catch (Exception unused2) {
        }
        zc2 zc2Var = pe4.d(boolValueOf2, Boolean.TRUE) ? null : zc2VarD;
        if (zc2Var == null) {
            vr6.e$default(vr6.INSTANCE, "_FavoriteAppsRepo", "Firebase favorite apps ref unexpectedly null after auth/network checks.", null, 4, null);
            return false;
        }
        l73 l73VarA = cf3.a(zc2Var, true);
        if (!(l73VarA instanceof xe3)) {
            if (!(l73VarA instanceof we3)) {
                q.j();
                return false;
            }
            vr6 vr6Var = vr6.INSTANCE;
            String str = ((we3) l73VarA).n.b;
            str.getClass();
            vr6.e$default(vr6Var, "_FavoriteAppsRepo", str, null, 4, null);
            return false;
        }
        eb2 eb2Var = ((xe3) l73VarA).n;
        sb4 sb4Var = eb2Var.a;
        if (sb4Var.a.z() > 0) {
            Log.d("_FavoriteAppsRepo", "getFavoritesFromSnapshot: " + sb4Var.a.z() + " items");
            db2 db2VarB = eb2Var.b();
            ArrayList<FavoriteApp> arrayList = new ArrayList();
            Iterator it = (Iterator) db2VarB.b;
            while (it.hasNext()) {
                hk5 hk5Var = (hk5) it.next();
                ((eb2) db2VarB.c).b.d(hk5Var.a.a);
                FavoriteApp favoriteApp = (FavoriteApp) t62.b(FavoriteApp.class, sb4.d(hk5Var.b).a.getValue());
                if (favoriteApp != null) {
                    arrayList.add(favoriteApp);
                }
            }
            int iQ0 = x65.q0(hl1.G0(arrayList, 10));
            if (iQ0 < 16) {
                iQ0 = 16;
            }
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(iQ0);
            for (FavoriteApp favoriteApp2 : arrayList) {
                linkedHashMap2.put(favoriteApp2.getPackageName(), favoriteApp2);
            }
            linkedHashMap = new LinkedHashMap(linkedHashMap2);
        } else {
            linkedHashMap = new LinkedHashMap();
        }
        e(el1.v1(linkedHashMap.values()));
        c = linkedHashMap;
        return true;
    }

    public final synchronized void e(List list) {
        list.getClass();
        zn4 zn4Var = zn4.a;
        zn4.d(new t53(0, list));
    }

    public final void f(ji jiVar, boolean z) {
        Boolean boolValueOf;
        jiVar.getClass();
        String packageName = jiVar.getPackageName();
        packageName.getClass();
        boolean zContainsKey = c.containsKey(packageName);
        String name = jiVar.getName();
        StringBuilder sb = new StringBuilder("setFavorite: app=");
        sb.append(name);
        sb.append(", isFavorite=");
        sb.append(!zContainsKey);
        Log.d("_FavoriteAppsRepo", sb.toString());
        FavoriteApp favoriteApp = new FavoriteApp(jiVar.getPackageName(), jiVar.getName());
        zc2 zc2VarD = re3.k().d("favoriteApps");
        try {
            d45.b.getClass();
            MFirebaseUser mFirebaseUserA = d45.a();
            boolValueOf = mFirebaseUserA != null ? Boolean.valueOf(mFirebaseUserA.isAnonymous()) : null;
        } catch (Exception unused) {
        }
        if (pe4.d(boolValueOf, Boolean.TRUE)) {
            zc2VarD = null;
        }
        zc2 zc2VarD2 = zc2VarD != null ? zc2VarD.d(favoriteApp.getPackageId()) : null;
        if (zContainsKey) {
            if (zc2VarD2 != null) {
                zc2VarD2.i(null);
            }
            c.remove(favoriteApp.getPackageName());
        } else {
            if (zc2VarD2 != null) {
                zc2VarD2.i(favoriteApp);
            }
            c.put(favoriteApp.getPackageName(), favoriteApp);
        }
        w13.q(v53.class, jiVar.getPackageName());
        Const.T();
        if (z) {
            int i = !zContainsKey ? R.string.added_to_favorites : R.string.removed_from_favorites;
            String name2 = jiVar.getName();
            SwiftApp.Companion companion = SwiftApp.d;
            String strK = dj7.k(name2, ": ", SwiftApp.Companion.c().getString(i));
            Toast toast = d;
            if (toast != null) {
                toast.cancel();
            }
            Toast toastMakeText = Toast.makeText(SwiftApp.Companion.c(), strK, 0);
            d = toastMakeText;
            if (toastMakeText != null) {
                toastMakeText.show();
            }
        }
        e(el1.v1(c.values()));
    }
}
