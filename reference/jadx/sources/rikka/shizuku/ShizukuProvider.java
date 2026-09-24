package rikka.shizuku;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.util.Log;
import defpackage.l0;
import defpackage.le7;
import defpackage.qv7;
import defpackage.z85;
import moe.shizuku.api.BinderContainer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ShizukuProvider extends ContentProvider {
    @Override // android.content.ContentProvider
    public final void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (providerInfo.multiprocess) {
            l0.e("android:multiprocess must be false");
        } else {
            if (providerInfo.exported) {
                return;
            }
            l0.e("android:exported must be true");
        }
    }

    @Override // android.content.ContentProvider
    public final Bundle call(String str, String str2, Bundle bundle) {
        IBinder iBinder;
        if (z85.f) {
            Log.w("ShizukuProvider", "Provider called when Sui is available. Are you using Shizuku and Sui at the same time?");
            return new Bundle();
        }
        if (bundle == null) {
            return null;
        }
        bundle.setClassLoader(BinderContainer.class.getClassLoader());
        Bundle bundle2 = new Bundle();
        str.getClass();
        if (str.equals("sendBinder")) {
            if (le7.f()) {
                Log.d("ShizukuProvider", "sendBinder is called when already a living binder");
                return bundle2;
            }
            BinderContainer binderContainer = (BinderContainer) bundle.getParcelable("moe.shizuku.privileged.api.intent.extra.BINDER");
            if (binderContainer != null && (iBinder = binderContainer.a) != null) {
                Log.d("ShizukuProvider", "binder received");
                le7.e(iBinder, getContext().getPackageName());
            }
        } else if (str.equals("getBinder")) {
            IBinder iBinder2 = le7.a;
            if (iBinder2 == null || !iBinder2.pingBinder()) {
                return null;
            }
            BinderContainer binderContainer2 = new BinderContainer();
            binderContainer2.a = iBinder2;
            bundle2.putParcelable("moe.shizuku.privileged.api.intent.extra.BINDER", binderContainer2);
            return bundle2;
        }
        return bundle2;
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        if (!z85.f) {
            String packageName = getContext().getPackageName();
            IBinder iBinderA = qv7.a("activity");
            boolean z = false;
            IBinder iBinder = null;
            if (iBinderA != null) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.app.IActivityManager");
                    parcelObtain.writeInt(2);
                    iBinderA.transact(1599296841, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    IBinder strongBinder = parcelObtain2.readStrongBinder();
                    if (strongBinder != null) {
                        parcelObtain.recycle();
                        parcelObtain2.recycle();
                        iBinder = strongBinder;
                    } else {
                        parcelObtain.recycle();
                        parcelObtain2.recycle();
                    }
                } catch (Throwable th) {
                    try {
                        th.printStackTrace();
                    } catch (Throwable th2) {
                        parcelObtain.recycle();
                        parcelObtain2.recycle();
                        throw th2;
                    }
                }
            }
            if (iBinder != null) {
                le7.e(iBinder, packageName);
                z85.f = true;
                z = true;
            } else {
                z85.f = false;
            }
            Log.d("ShizukuProvider", "Initialize Sui: " + z);
        }
        return true;
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
