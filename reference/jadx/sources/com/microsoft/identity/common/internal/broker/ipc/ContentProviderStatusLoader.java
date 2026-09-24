package com.microsoft.identity.common.internal.broker.ipc;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.os.Build;
import com.microsoft.identity.common.internal.util.AbstractSharedPrefNameValueStorage;
import com.microsoft.identity.common.java.interfaces.PlatformComponents;
import com.microsoft.identity.common.logging.Logger;
import defpackage.gs4;
import defpackage.mt3;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ContentProviderStatusLoader {
    private final AbstractSharedPrefNameValueStorage fileManager;
    private final mt3 getVersionCode;
    private final mt3 supportedByContentProvider;

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.broker.ipc.ContentProviderStatusLoader$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass1 extends gs4 implements mt3 {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Context context) {
            super(1);
            this.$context = context;
        }

        @Override // defpackage.mt3
        public final Object invoke(Object obj) {
            String str = (String) obj;
            str.getClass();
            return Companion.access$getVersionCode(this.$context, str);
        }
    }

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.broker.ipc.ContentProviderStatusLoader$2, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass2 extends gs4 implements mt3 {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Context context) {
            super(1);
            this.$context = context;
        }

        @Override // defpackage.mt3
        public final Object invoke(Object obj) {
            String str = (String) obj;
            str.getClass();
            Context context = this.$context;
            context.getClass();
            int i = ContentProviderStrategy.a;
            String strConcat = str.concat(".microsoft.identity.broker");
            boolean z = false;
            List<ProviderInfo> listQueryContentProviders = context.getPackageManager().queryContentProviders((String) null, 0, 0);
            listQueryContentProviders.getClass();
            Iterator<ProviderInfo> it = listQueryContentProviders.iterator();
            while (it.hasNext()) {
                String str2 = it.next().authority;
                if (str2 != null && str2.equals(strConcat)) {
                    z = true;
                    break;
                }
            }
            return Boolean.valueOf(z);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class Companion {
        public static final String access$getVersionCode(Context context, String str) throws PackageManager.NameNotFoundException {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
            return Build.VERSION.SDK_INT >= 28 ? String.valueOf(packageInfo.getLongVersionCode()) : String.valueOf(packageInfo.versionCode);
        }
    }

    public ContentProviderStatusLoader(Context context, PlatformComponents platformComponents) {
        context.getClass();
        AbstractSharedPrefNameValueStorage unencryptedNameValueStore = platformComponents.getStorageSupplier().getUnencryptedNameValueStore("com.microsoft.common.ipc.content.provider.query.cache");
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(context);
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(context);
        this.getVersionCode = anonymousClass1;
        this.supportedByContentProvider = anonymousClass2;
        this.fileManager = unencryptedNameValueStore;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean supportsContentProvider(String str) {
        AbstractSharedPrefNameValueStorage abstractSharedPrefNameValueStorage = this.fileManager;
        str.getClass();
        try {
            String str2 = str + ':' + ((String) ((AnonymousClass1) this.getVersionCode).invoke(str));
            String str3 = (String) abstractSharedPrefNameValueStorage.get(str2);
            if (str3 != null) {
                return Boolean.parseBoolean(str3);
            }
            boolean zBooleanValue = ((Boolean) ((AnonymousClass2) this.supportedByContentProvider).invoke(str)).booleanValue();
            abstractSharedPrefNameValueStorage.put(String.valueOf(zBooleanValue), str2);
            return zBooleanValue;
        } catch (Throwable th) {
            String message = th.getMessage();
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("ContentProviderStatusLoader:getResult", message, th);
            return false;
        }
    }
}
