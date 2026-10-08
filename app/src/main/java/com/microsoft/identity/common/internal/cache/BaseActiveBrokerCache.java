package com.microsoft.identity.common.internal.cache;

import com.microsoft.identity.common.internal.broker.BrokerData;
import com.microsoft.identity.common.internal.util.AbstractSharedPrefNameValueStorage;
import defpackage.be8;
import defpackage.jv1;
import defpackage.kj5;
import defpackage.l0;
import defpackage.l73;
import defpackage.lg7;
import defpackage.lv2;
import defpackage.mj5;
import defpackage.nd2;
import defpackage.qt3;
import defpackage.uq7;
import defpackage.ws7;
import defpackage.xx1;
import defpackage.yx1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class BaseActiveBrokerCache {
    private final mj5 lock;
    private final AbstractSharedPrefNameValueStorage storage;

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.cache.BaseActiveBrokerCache$clearCachedActiveBroker$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @nd2(c = "com.microsoft.identity.common.internal.cache.BaseActiveBrokerCache$clearCachedActiveBroker$1", f = "BaseActiveBrokerCache.kt", l = {134}, m = "invokeSuspend")
    final class AnonymousClass1 extends ws7 implements qt3 {
        kj5 L$0;
        BaseActiveBrokerCache L$1;
        int label;

        public AnonymousClass1(jv1 jv1Var) {
            super(2, jv1Var);
        }

        @Override // defpackage.ml0
        public final jv1 create(Object obj, jv1 jv1Var) {
            return BaseActiveBrokerCache.this.new AnonymousClass1(jv1Var);
        }

        @Override // defpackage.qt3
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
        }

        @Override // defpackage.ml0
        public final Object invokeSuspend(Object obj) {
            BaseActiveBrokerCache baseActiveBrokerCache;
            kj5 kj5Var;
            int i = this.label;
            if (i == 0) {
                lg7.H(obj);
                baseActiveBrokerCache = BaseActiveBrokerCache.this;
                kj5 kj5Var2 = baseActiveBrokerCache.lock;
                this.L$0 = kj5Var2;
                this.L$1 = baseActiveBrokerCache;
                this.label = 1;
                Object objA = ((mj5) kj5Var2).a(this);
                yx1 yx1Var = yx1.a;
                if (objA == yx1Var) {
                    return yx1Var;
                }
                kj5Var = kj5Var2;
            } else {
                if (i != 1) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                baseActiveBrokerCache = this.L$1;
                kj5Var = this.L$0;
                lg7.H(obj);
            }
            try {
                ((AbstractSharedPrefNameValueStorage) baseActiveBrokerCache.storage).remove("ACTIVE_BROKER_CACHE_PACKAGE_NAME_KEY");
                ((AbstractSharedPrefNameValueStorage) baseActiveBrokerCache.storage).remove("ACTIVE_BROKER_CACHE_SIGHASH_KEY");
                ((AbstractSharedPrefNameValueStorage) baseActiveBrokerCache.storage).remove("SHOULD_USE_ACCOUNT_MANAGER_UNTIL_EPOCH_MILLISECONDS_KEY");
                return be8.a;
            } finally {
                kj5Var.b(null);
            }
        }
    }

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.cache.BaseActiveBrokerCache$getCachedActiveBroker$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @nd2(c = "com.microsoft.identity.common.internal.cache.BaseActiveBrokerCache$getCachedActiveBroker$1", f = "BaseActiveBrokerCache.kt", l = {134}, m = "invokeSuspend")
    final class C00201 extends ws7 implements qt3 {
        kj5 L$0;
        BaseActiveBrokerCache L$1;
        int label;

        public C00201(jv1 jv1Var) {
            super(2, jv1Var);
        }

        @Override // defpackage.ml0
        public final jv1 create(Object obj, jv1 jv1Var) {
            return BaseActiveBrokerCache.this.new C00201(jv1Var);
        }

        @Override // defpackage.qt3
        public final Object invoke(Object obj, Object obj2) {
            return ((C00201) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
        }

        @Override // defpackage.ml0
        public final Object invokeSuspend(Object obj) {
            BaseActiveBrokerCache baseActiveBrokerCache;
            kj5 kj5Var;
            int i = this.label;
            if (i == 0) {
                lg7.H(obj);
                baseActiveBrokerCache = BaseActiveBrokerCache.this;
                kj5 kj5Var2 = baseActiveBrokerCache.lock;
                this.L$0 = kj5Var2;
                this.L$1 = baseActiveBrokerCache;
                this.label = 1;
                Object objA = ((mj5) kj5Var2).a(this);
                yx1 yx1Var = yx1.a;
                if (objA == yx1Var) {
                    return yx1Var;
                }
                kj5Var = kj5Var2;
            } else {
                if (i != 1) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                baseActiveBrokerCache = this.L$1;
                kj5Var = this.L$0;
                lg7.H(obj);
            }
            try {
                String str = (String) baseActiveBrokerCache.storage.get("ACTIVE_BROKER_CACHE_PACKAGE_NAME_KEY");
                String str2 = (String) baseActiveBrokerCache.storage.get("ACTIVE_BROKER_CACHE_SIGHASH_KEY");
                if (str != null && str.length() != 0 && str2 != null && str2.length() != 0) {
                    return new BrokerData(str, str2, null);
                }
                return null;
            } finally {
                kj5Var.b(null);
            }
        }
    }

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.cache.BaseActiveBrokerCache$setCachedActiveBroker$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @nd2(c = "com.microsoft.identity.common.internal.cache.BaseActiveBrokerCache$setCachedActiveBroker$1", f = "BaseActiveBrokerCache.kt", l = {134}, m = "invokeSuspend")
    final class C00211 extends ws7 implements qt3 {
        final /* synthetic */ BrokerData $brokerData;
        kj5 L$0;
        BaseActiveBrokerCache L$1;
        BrokerData L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00211(BrokerData brokerData, jv1 jv1Var) {
            super(2, jv1Var);
            this.$brokerData = brokerData;
        }

        @Override // defpackage.ml0
        public final jv1 create(Object obj, jv1 jv1Var) {
            return BaseActiveBrokerCache.this.new C00211(this.$brokerData, jv1Var);
        }

        @Override // defpackage.qt3
        public final Object invoke(Object obj, Object obj2) {
            return ((C00211) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
        }

        @Override // defpackage.ml0
        public final Object invokeSuspend(Object obj) {
            BaseActiveBrokerCache baseActiveBrokerCache;
            kj5 kj5Var;
            BrokerData brokerData;
            int i = this.label;
            if (i == 0) {
                lg7.H(obj);
                BaseActiveBrokerCache baseActiveBrokerCache2 = BaseActiveBrokerCache.this;
                kj5 kj5Var2 = baseActiveBrokerCache2.lock;
                this.L$0 = kj5Var2;
                this.L$1 = baseActiveBrokerCache2;
                BrokerData brokerData2 = this.$brokerData;
                this.L$2 = brokerData2;
                this.label = 1;
                Object objA = ((mj5) kj5Var2).a(this);
                yx1 yx1Var = yx1.a;
                if (objA == yx1Var) {
                    return yx1Var;
                }
                baseActiveBrokerCache = baseActiveBrokerCache2;
                kj5Var = kj5Var2;
                brokerData = brokerData2;
            } else {
                if (i != 1) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                brokerData = this.L$2;
                baseActiveBrokerCache = this.L$1;
                kj5Var = this.L$0;
                lg7.H(obj);
            }
            try {
                baseActiveBrokerCache.setCachedActiveBrokerWithoutLock(brokerData);
                return be8.a;
            } finally {
                kj5Var.b(null);
            }
        }
    }

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.cache.BaseActiveBrokerCache$setShouldUseAccountManagerForTheNextMilliseconds$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @nd2(c = "com.microsoft.identity.common.internal.cache.BaseActiveBrokerCache$setShouldUseAccountManagerForTheNextMilliseconds$1", f = "BaseActiveBrokerCache.kt", l = {134}, m = "invokeSuspend")
    final class C00221 extends ws7 implements qt3 {
        long J$0;
        kj5 L$0;
        BaseActiveBrokerCache L$1;
        int label;

        public C00221(jv1 jv1Var) {
            super(2, jv1Var);
        }

        @Override // defpackage.ml0
        public final jv1 create(Object obj, jv1 jv1Var) {
            return BaseActiveBrokerCache.this.new C00221(jv1Var);
        }

        @Override // defpackage.qt3
        public final Object invoke(Object obj, Object obj2) {
            return ((C00221) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
        }

        @Override // defpackage.ml0
        public final Object invokeSuspend(Object obj) {
            BaseActiveBrokerCache baseActiveBrokerCache;
            kj5 kj5Var;
            long j;
            int i = this.label;
            if (i == 0) {
                lg7.H(obj);
                baseActiveBrokerCache = BaseActiveBrokerCache.this;
                kj5 kj5Var2 = baseActiveBrokerCache.lock;
                this.L$0 = kj5Var2;
                this.L$1 = baseActiveBrokerCache;
                this.J$0 = 3600000L;
                this.label = 1;
                Object objA = ((mj5) kj5Var2).a(this);
                yx1 yx1Var = yx1.a;
                if (objA == yx1Var) {
                    return yx1Var;
                }
                kj5Var = kj5Var2;
                j = 3600000;
            } else {
                if (i != 1) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                j = this.J$0;
                baseActiveBrokerCache = this.L$1;
                kj5Var = this.L$0;
                lg7.H(obj);
            }
            try {
                baseActiveBrokerCache.storage.put(String.valueOf(System.currentTimeMillis() + j), "SHOULD_USE_ACCOUNT_MANAGER_UNTIL_EPOCH_MILLISECONDS_KEY");
                return be8.a;
            } finally {
                kj5Var.b(null);
            }
        }
    }

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.cache.BaseActiveBrokerCache$shouldUseAccountManager$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @nd2(c = "com.microsoft.identity.common.internal.cache.BaseActiveBrokerCache$shouldUseAccountManager$1", f = "BaseActiveBrokerCache.kt", l = {134}, m = "invokeSuspend")
    final class C00231 extends ws7 implements qt3 {
        kj5 L$0;
        BaseActiveBrokerCache L$1;
        int label;

        public C00231(jv1 jv1Var) {
            super(2, jv1Var);
        }

        @Override // defpackage.ml0
        public final jv1 create(Object obj, jv1 jv1Var) {
            return BaseActiveBrokerCache.this.new C00231(jv1Var);
        }

        @Override // defpackage.qt3
        public final Object invoke(Object obj, Object obj2) {
            return ((C00231) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
        }

        @Override // defpackage.ml0
        public final Object invokeSuspend(Object obj) {
            BaseActiveBrokerCache baseActiveBrokerCache;
            kj5 kj5Var;
            Long lY;
            int i = this.label;
            boolean z = true;
            if (i == 0) {
                lg7.H(obj);
                baseActiveBrokerCache = BaseActiveBrokerCache.this;
                kj5 kj5Var2 = baseActiveBrokerCache.lock;
                this.L$0 = kj5Var2;
                this.L$1 = baseActiveBrokerCache;
                this.label = 1;
                Object objA = ((mj5) kj5Var2).a(this);
                yx1 yx1Var = yx1.a;
                if (objA == yx1Var) {
                    return yx1Var;
                }
                kj5Var = kj5Var2;
            } else {
                if (i != 1) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                baseActiveBrokerCache = this.L$1;
                kj5Var = this.L$0;
                lg7.H(obj);
            }
            try {
                String str = (String) baseActiveBrokerCache.storage.get("SHOULD_USE_ACCOUNT_MANAGER_UNTIL_EPOCH_MILLISECONDS_KEY");
                if (str == null || (lY = uq7.Y(str)) == null) {
                    return Boolean.FALSE;
                }
                if (System.currentTimeMillis() >= new Long(lY.longValue()).longValue()) {
                    z = false;
                }
                return Boolean.valueOf(z);
            } finally {
                kj5Var.b(null);
            }
        }
    }

    public BaseActiveBrokerCache(AbstractSharedPrefNameValueStorage abstractSharedPrefNameValueStorage, mj5 mj5Var) {
        this.storage = abstractSharedPrefNameValueStorage;
        this.lock = mj5Var;
    }

    public final void clearCachedActiveBroker() {
        l73.A(new AnonymousClass1(null));
    }

    public final BrokerData getCachedActiveBroker() {
        return (BrokerData) l73.B(lv2.a, new C00201(null));
    }

    public final void setCachedActiveBroker(BrokerData brokerData) {
        l73.A(new C00211(brokerData, null));
    }

    public final void setCachedActiveBrokerWithoutLock(BrokerData brokerData) {
        brokerData.getClass();
        String packageName = brokerData.getPackageName();
        AbstractSharedPrefNameValueStorage abstractSharedPrefNameValueStorage = this.storage;
        abstractSharedPrefNameValueStorage.put(packageName, "ACTIVE_BROKER_CACHE_PACKAGE_NAME_KEY");
        abstractSharedPrefNameValueStorage.put(brokerData.getSigningCertificateThumbprint(), "ACTIVE_BROKER_CACHE_SIGHASH_KEY");
        abstractSharedPrefNameValueStorage.remove("SHOULD_USE_ACCOUNT_MANAGER_UNTIL_EPOCH_MILLISECONDS_KEY");
    }

    public final void setShouldUseAccountManagerForTheNextMilliseconds() {
        l73.A(new C00221(null));
    }

    public final boolean shouldUseAccountManager() {
        return ((Boolean) l73.B(lv2.a, new C00231(null))).booleanValue();
    }
}
