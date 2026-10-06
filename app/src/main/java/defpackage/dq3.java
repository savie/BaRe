package defpackage;

import android.content.ContentProviderClient;
import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.RemoteException;
import android.os.Trace;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class dq3 {
    public static final p35 a = new p35(2);
    public static final bq3 b = new bq3();

    public static ph3 a(Context context, List list) {
        String str;
        Typeface typefaceC;
        iz1.b("FontProvider.getFontFamilyResult");
        try {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                fq3 fq3Var = (fq3) list.get(i);
                if (Build.VERSION.SDK_INT < 31 || (typefaceC = vc8.c((str = fq3Var.e))) == null || vc8.d(typefaceC) == null) {
                    ProviderInfo providerInfoB = b(context.getPackageManager(), fq3Var, context.getResources());
                    if (providerInfoB == null) {
                        ph3 ph3Var = new ph3();
                        ph3Var.a = 1;
                        ph3Var.b = Collections.singletonList(null);
                        return ph3Var;
                    }
                    arrayList.add(c(context, fq3Var, providerInfoB.authority));
                } else {
                    arrayList.add(new sq3[]{new sq3(str, fq3Var.f)});
                }
            }
            ph3 ph3Var2 = new ph3();
            ph3Var2.a = 0;
            ph3Var2.b = arrayList;
            return ph3Var2;
        } finally {
            Trace.endSection();
        }
    }

    public static ProviderInfo b(PackageManager packageManager, fq3 fq3Var, Resources resources) {
        bq3 bq3Var = b;
        p35 p35Var = a;
        iz1.b("FontProvider.getProvider");
        try {
            List listD = fq3Var.d;
            String str = fq3Var.a;
            String str2 = fq3Var.b;
            if (listD == null) {
                listD = zh8.D(resources, 0);
            }
            cq3 cq3Var = new cq3();
            cq3Var.a = str;
            cq3Var.b = str2;
            cq3Var.c = listD;
            ProviderInfo providerInfo = (ProviderInfo) p35Var.h(cq3Var);
            if (providerInfo != null) {
                Trace.endSection();
                return providerInfo;
            }
            ProviderInfo providerInfoResolveContentProvider = packageManager.resolveContentProvider(str, 0);
            if (providerInfoResolveContentProvider == null) {
                throw new PackageManager.NameNotFoundException("No package found for authority: " + str);
            }
            if (!providerInfoResolveContentProvider.packageName.equals(str2)) {
                throw new PackageManager.NameNotFoundException("Found content provider " + str + ", but package was not " + str2);
            }
            Signature[] signatureArr = packageManager.getPackageInfo(providerInfoResolveContentProvider.packageName, 64).signatures;
            ArrayList arrayList = new ArrayList();
            for (Signature signature : signatureArr) {
                arrayList.add(signature.toByteArray());
            }
            Collections.sort(arrayList, bq3Var);
            for (int i = 0; i < listD.size(); i++) {
                ArrayList arrayList2 = new ArrayList((Collection) listD.get(i));
                Collections.sort(arrayList2, bq3Var);
                if (arrayList.size() == arrayList2.size()) {
                    int i2 = 0;
                    while (true) {
                        if (i2 >= arrayList.size()) {
                            p35Var.l(cq3Var, providerInfoResolveContentProvider);
                            Trace.endSection();
                            return providerInfoResolveContentProvider;
                        }
                        if (!Arrays.equals((byte[]) arrayList.get(i2), (byte[]) arrayList2.get(i2))) {
                            break;
                        }
                        i2++;
                    }
                }
            }
            Trace.endSection();
            return null;
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    public static sq3[] c(Context context, fq3 fq3Var, String str) {
        iz1.b("FontProvider.query");
        try {
            ArrayList arrayList = new ArrayList();
            Uri uriBuild = new Uri.Builder().scheme("content").authority(str).build();
            Uri uriBuild2 = new Uri.Builder().scheme("content").authority(str).appendPath("file").build();
            ContentProviderClient contentProviderClientAcquireUnstableContentProviderClient = context.getContentResolver().acquireUnstableContentProviderClient(uriBuild);
            Cursor cursorQuery = null;
            try {
                String[] strArr = {"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"};
                iz1.b("ContentQueryWrapper.query");
                try {
                    String[] strArr2 = {fq3Var.c};
                    if (contentProviderClientAcquireUnstableContentProviderClient != null) {
                        try {
                            cursorQuery = contentProviderClientAcquireUnstableContentProviderClient.query(uriBuild, strArr, "query = ?", strArr2, null, null);
                        } catch (RemoteException e) {
                            Log.w("FontsProvider", "Unable to query the content provider", e);
                        }
                    }
                    Trace.endSection();
                    if (cursorQuery != null && cursorQuery.getCount() > 0) {
                        int columnIndex = cursorQuery.getColumnIndex("result_code");
                        ArrayList arrayList2 = new ArrayList();
                        int columnIndex2 = cursorQuery.getColumnIndex("_id");
                        int columnIndex3 = cursorQuery.getColumnIndex("file_id");
                        int columnIndex4 = cursorQuery.getColumnIndex("font_ttc_index");
                        int columnIndex5 = cursorQuery.getColumnIndex("font_weight");
                        int columnIndex6 = cursorQuery.getColumnIndex("font_italic");
                        while (cursorQuery.moveToNext()) {
                            int i = columnIndex != -1 ? cursorQuery.getInt(columnIndex) : 0;
                            arrayList2.add(new sq3(columnIndex3 == -1 ? ContentUris.withAppendedId(uriBuild, cursorQuery.getLong(columnIndex2)) : ContentUris.withAppendedId(uriBuild2, cursorQuery.getLong(columnIndex3)), columnIndex4 != -1 ? cursorQuery.getInt(columnIndex4) : 0, columnIndex5 != -1 ? cursorQuery.getInt(columnIndex5) : 400, columnIndex6 != -1 && cursorQuery.getInt(columnIndex6) == 1, fq3Var.f, i));
                        }
                        arrayList = arrayList2;
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    if (contentProviderClientAcquireUnstableContentProviderClient != null) {
                        contentProviderClientAcquireUnstableContentProviderClient.close();
                    }
                    sq3[] sq3VarArr = (sq3[]) arrayList.toArray(new sq3[0]);
                    Trace.endSection();
                    return sq3VarArr;
                } catch (Throwable th) {
                    Trace.endSection();
                    throw th;
                }
            } catch (Throwable th2) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                if (contentProviderClientAcquireUnstableContentProviderClient != null) {
                    contentProviderClientAcquireUnstableContentProviderClient.close();
                }
                throw th2;
            }
        } catch (Throwable th3) {
            Trace.endSection();
            throw th3;
        }
    }
}
