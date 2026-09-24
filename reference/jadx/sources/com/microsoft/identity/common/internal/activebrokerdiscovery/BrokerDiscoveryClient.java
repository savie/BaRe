package com.microsoft.identity.common.internal.activebrokerdiscovery;

import android.content.Context;
import android.os.Bundle;
import com.jcraft.jsch.SftpATTRS;
import com.microsoft.identity.common.exception.BrokerCommunicationException;
import com.microsoft.identity.common.internal.broker.BrokerData;
import com.microsoft.identity.common.internal.broker.BrokerValidator;
import com.microsoft.identity.common.internal.broker.PackageHelper;
import com.microsoft.identity.common.internal.broker.ipc.BrokerOperationBundle;
import com.microsoft.identity.common.internal.broker.ipc.ContentProviderStrategy;
import com.microsoft.identity.common.internal.broker.ipc.IIpcStrategy;
import com.microsoft.identity.common.internal.cache.ClientActiveBrokerCache;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.interfaces.PlatformComponents;
import com.microsoft.identity.common.java.logging.Logger;
import defpackage.be8;
import defpackage.bt3;
import defpackage.cn2;
import defpackage.dj7;
import defpackage.gs4;
import defpackage.jv1;
import defpackage.kj5;
import defpackage.kv1;
import defpackage.l0;
import defpackage.l73;
import defpackage.lg7;
import defpackage.lv2;
import defpackage.me8;
import defpackage.mj5;
import defpackage.mt3;
import defpackage.nd2;
import defpackage.ph6;
import defpackage.qt3;
import defpackage.rf2;
import defpackage.rx1;
import defpackage.se2;
import defpackage.ws7;
import defpackage.xx1;
import defpackage.yx1;
import java.io.Serializable;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class BrokerDiscoveryClient {
    private static final String TAG = ph6.a(BrokerDiscoveryClient.class).c();
    public static final /* synthetic */ int a = 0;
    private static final mj5 classLevelLock;
    private static final rx1 dispatcher;
    private final Set<BrokerData> brokerCandidates;
    private final ClientActiveBrokerCache cache;
    private final bt3 getActiveBrokerFromAccountManager;
    private final ContentProviderStrategy ipcStrategy;
    private final mt3 isPackageInstalled;
    private final mt3 isValidBroker;

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.activebrokerdiscovery.BrokerDiscoveryClient$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass1 extends gs4 implements bt3 {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Context context) {
            super(0);
            this.$context = context;
        }

        @Override // defpackage.bt3
        public final Object invoke() {
            return new AccountManagerBrokerDiscoveryUtil(this.$context).getActiveBrokerFromAccountManager();
        }
    }

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.activebrokerdiscovery.BrokerDiscoveryClient$2, reason: invalid class name */
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
            BrokerData brokerData = (BrokerData) obj;
            brokerData.getClass();
            return Boolean.valueOf(new PackageHelper(this.$context).isPackageInstalledAndEnabled(brokerData.getPackageName()));
        }
    }

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.activebrokerdiscovery.BrokerDiscoveryClient$3, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass3 extends gs4 implements mt3 {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(Context context) {
            super(1);
            this.$context = context;
        }

        @Override // defpackage.mt3
        public final Object invoke(Object obj) {
            BrokerData brokerData = (BrokerData) obj;
            brokerData.getClass();
            return Boolean.valueOf(new BrokerValidator(this.$context).isSignedByKnownKeys(brokerData));
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class Companion {
        public static final BrokerData access$makeRequest(BrokerData brokerData, IIpcStrategy iIpcStrategy) {
            int i = BrokerDiscoveryClient.a;
            String str = BrokerDiscoveryClient.TAG + ":makeRequest";
            try {
                return extractResult(iIpcStrategy.communicateToBroker(new BrokerOperationBundle(BrokerOperationBundle.Operation.BROKER_DISCOVERY_FROM_SDK, brokerData.getPackageName(), new Bundle())));
            } catch (Throwable th) {
                if ((th instanceof BrokerCommunicationException) && 2 == ((BrokerCommunicationException) th).getCategory()) {
                    Logger.info(str, "Tried broker discovery on " + brokerData + ". It doesn't support the IPC mechanism.");
                    return null;
                }
                if ((th instanceof ClientException) && "ONLY_SUPPORTS_ACCOUNT_MANAGER_ERROR_CODE".equals(((ClientException) th).getErrorCode())) {
                    Logger.info(str, "Tried broker discovery on " + brokerData + ". The Broker side indicates that only AccountManager is supported.");
                    return null;
                }
                Logger.error(str, "Tried broker discovery on " + brokerData + ", get an error", th);
                return null;
            }
        }

        private static BrokerData extractResult(Bundle bundle) throws Throwable {
            if (bundle == null) {
                return null;
            }
            Serializable serializable = bundle.getSerializable("ERROR_BUNDLE_KEY");
            if (serializable != null) {
                throw ((Throwable) serializable);
            }
            String string = bundle.getString("ACTIVE_BROKER_PACKAGE_NAME_BUNDLE_KEY");
            if (string == null) {
                throw new NoSuchElementException("ACTIVE_BROKER_PACKAGE_NAME_BUNDLE_KEY must not be null");
            }
            String string2 = bundle.getString("ACTIVE_BROKER_SIGNING_CERTIFICATE_THUMBPRINT_BUNDLE_KEY");
            if (string2 != null) {
                return new BrokerData(string, string2, null);
            }
            throw new NoSuchElementException("ACTIVE_BROKER_SIGNING_CERTIFICATE_THUMBPRINT_BUNDLE_KEY must not be null");
        }
    }

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.activebrokerdiscovery.BrokerDiscoveryClient$getActiveBroker$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @nd2(c = "com.microsoft.identity.common.internal.activebrokerdiscovery.BrokerDiscoveryClient$getActiveBroker$1", f = "BrokerDiscoveryClient.kt", l = {443, 343}, m = "invokeSuspend")
    final class C00191 extends ws7 implements qt3 {
        kj5 L$0;
        BrokerDiscoveryClient L$1;
        int label;

        public C00191(jv1 jv1Var) {
            super(2, jv1Var);
        }

        @Override // defpackage.ml0
        public final jv1 create(Object obj, jv1 jv1Var) {
            return BrokerDiscoveryClient.this.new C00191(jv1Var);
        }

        @Override // defpackage.qt3
        public final Object invoke(Object obj, Object obj2) {
            return ((C00191) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
        }

        @Override // defpackage.ml0
        public final Object invokeSuspend(Object obj) throws Throwable {
            kj5 kj5Var;
            BrokerDiscoveryClient brokerDiscoveryClient;
            Throwable th;
            kj5 kj5Var2;
            int i = this.label;
            yx1 yx1Var = yx1.a;
            try {
                if (i == 0) {
                    lg7.H(obj);
                    kj5Var = BrokerDiscoveryClient.classLevelLock;
                    this.L$0 = kj5Var;
                    brokerDiscoveryClient = BrokerDiscoveryClient.this;
                    this.L$1 = brokerDiscoveryClient;
                    this.label = 1;
                    if (kj5Var.a(this) != yx1Var) {
                    }
                    return yx1Var;
                }
                if (i != 1) {
                    if (i != 2) {
                        l0.e("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    kj5Var2 = this.L$0;
                    try {
                        lg7.H(obj);
                        kj5Var2.b(null);
                        return obj;
                    } catch (Throwable th2) {
                        th = th2;
                        kj5Var2.b(null);
                        throw th;
                    }
                }
                brokerDiscoveryClient = this.L$1;
                kj5 kj5Var3 = this.L$0;
                lg7.H(obj);
                kj5Var = kj5Var3;
                this.L$0 = kj5Var;
                this.L$1 = null;
                this.label = 2;
                Object objAccess$getActiveBrokerAsync = BrokerDiscoveryClient.access$getActiveBrokerAsync(brokerDiscoveryClient, false, this);
                if (objAccess$getActiveBrokerAsync != yx1Var) {
                    kj5 kj5Var4 = kj5Var;
                    obj = objAccess$getActiveBrokerAsync;
                    kj5Var2 = kj5Var4;
                    kj5Var2.b(null);
                    return obj;
                }
                return yx1Var;
            } catch (Throwable th3) {
                kj5 kj5Var5 = kj5Var;
                th = th3;
                kj5Var2 = kj5Var5;
                kj5Var2.b(null);
                throw th;
            }
        }
    }

    static {
        rf2 rf2Var = cn2.a;
        se2.c.getClass();
        dispatcher = me8.c.n(10);
        classLevelLock = new mj5();
    }

    public BrokerDiscoveryClient(Context context, PlatformComponents platformComponents, ClientActiveBrokerCache clientActiveBrokerCache) {
        context.getClass();
        Set<BrokerData> set = BrokerData.prodBrokers;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(context);
        ContentProviderStrategy contentProviderStrategy = new ContentProviderStrategy(context, platformComponents);
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(context);
        AnonymousClass3 anonymousClass3 = new AnonymousClass3(context);
        set.getClass();
        this.brokerCandidates = set;
        this.getActiveBrokerFromAccountManager = anonymousClass1;
        this.ipcStrategy = contentProviderStrategy;
        this.cache = clientActiveBrokerCache;
        this.isPackageInstalled = anonymousClass2;
        this.isValidBroker = anonymousClass3;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001a  */
    public static final Object access$getActiveBrokerAsync(BrokerDiscoveryClient brokerDiscoveryClient, boolean z, kv1 kv1Var) {
        BrokerDiscoveryClient$getActiveBrokerAsync$1 brokerDiscoveryClient$getActiveBrokerAsync$1;
        BrokerDiscoveryClient brokerDiscoveryClient2;
        String str;
        ClientActiveBrokerCache clientActiveBrokerCache = brokerDiscoveryClient.cache;
        mt3 mt3Var = brokerDiscoveryClient.isValidBroker;
        mt3 mt3Var2 = brokerDiscoveryClient.isPackageInstalled;
        if (kv1Var instanceof BrokerDiscoveryClient$getActiveBrokerAsync$1) {
            brokerDiscoveryClient$getActiveBrokerAsync$1 = (BrokerDiscoveryClient$getActiveBrokerAsync$1) kv1Var;
            int i = brokerDiscoveryClient$getActiveBrokerAsync$1.label;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                brokerDiscoveryClient$getActiveBrokerAsync$1.label = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                brokerDiscoveryClient$getActiveBrokerAsync$1 = new BrokerDiscoveryClient$getActiveBrokerAsync$1(brokerDiscoveryClient, kv1Var);
            }
        } else {
            brokerDiscoveryClient$getActiveBrokerAsync$1 = new BrokerDiscoveryClient$getActiveBrokerAsync$1(brokerDiscoveryClient, kv1Var);
        }
        BrokerDiscoveryClient$getActiveBrokerAsync$1 brokerDiscoveryClient$getActiveBrokerAsync$2 = brokerDiscoveryClient$getActiveBrokerAsync$1;
        Object objK = brokerDiscoveryClient$getActiveBrokerAsync$2.result;
        int i2 = brokerDiscoveryClient$getActiveBrokerAsync$2.label;
        if (i2 == 0) {
            lg7.H(objK);
            String strN = dj7.n(new StringBuilder(), TAG, ":getActiveBrokerAsync");
            if (!z) {
                if (clientActiveBrokerCache.shouldUseAccountManager()) {
                    return ((AnonymousClass1) brokerDiscoveryClient.getActiveBrokerFromAccountManager).invoke();
                }
                System.nanoTime();
                BrokerData cachedActiveBroker = clientActiveBrokerCache.getCachedActiveBroker();
                if (cachedActiveBroker != null) {
                    System.nanoTime();
                    if (((Boolean) ((AnonymousClass2) mt3Var2).invoke(cachedActiveBroker)).booleanValue()) {
                        System.nanoTime();
                        if (((Boolean) ((AnonymousClass3) mt3Var).invoke(cachedActiveBroker)).booleanValue()) {
                            Logger.info(strN, "Returning cached broker: " + cachedActiveBroker);
                            return cachedActiveBroker;
                        }
                        Logger.info(strN, "Clearing cache as the installed app does not have a matching signature hash.");
                        clientActiveBrokerCache.clearCachedActiveBroker();
                    } else {
                        Logger.info(strN, "There is a cached broker: " + cachedActiveBroker + ", but the app is no longer installed.");
                        clientActiveBrokerCache.clearCachedActiveBroker();
                    }
                }
            }
            System.nanoTime();
            Set<BrokerData> set = brokerDiscoveryClient.brokerCandidates;
            ContentProviderStrategy contentProviderStrategy = brokerDiscoveryClient.ipcStrategy;
            brokerDiscoveryClient$getActiveBrokerAsync$2.L$0 = brokerDiscoveryClient;
            brokerDiscoveryClient$getActiveBrokerAsync$2.L$2 = strN;
            brokerDiscoveryClient$getActiveBrokerAsync$2.label = 1;
            objK = l73.k(new BrokerDiscoveryClient$Companion$queryFromBroker$2(set, mt3Var2, mt3Var, contentProviderStrategy, null), brokerDiscoveryClient$getActiveBrokerAsync$2);
            yx1 yx1Var = yx1.a;
            if (objK == yx1Var) {
                return yx1Var;
            }
            brokerDiscoveryClient2 = brokerDiscoveryClient;
            str = strN;
        } else {
            if (i2 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            str = brokerDiscoveryClient$getActiveBrokerAsync$2.L$2;
            brokerDiscoveryClient2 = brokerDiscoveryClient$getActiveBrokerAsync$2.L$0;
            lg7.H(objK);
        }
        BrokerData brokerData = (BrokerData) objK;
        if (brokerData != null) {
            brokerDiscoveryClient2.cache.setCachedActiveBroker(brokerData);
            return brokerData;
        }
        Logger.info(str, "Will skip broker discovery via IPC and fall back to AccountManager for the next 60 minutes.");
        brokerDiscoveryClient2.cache.clearCachedActiveBroker();
        brokerDiscoveryClient2.cache.setShouldUseAccountManagerForTheNextMilliseconds();
        BrokerData brokerData2 = (BrokerData) ((AnonymousClass1) brokerDiscoveryClient2.getActiveBrokerFromAccountManager).invoke();
        StringBuilder sb = new StringBuilder("Tried getting active broker from account manager, get ");
        sb.append(brokerData2 != null ? brokerData2.getPackageName() : null);
        sb.append('.');
        Logger.info(str, sb.toString());
        return brokerData2;
    }

    public final BrokerData getActiveBroker() {
        return (BrokerData) l73.B(lv2.a, new C00191(null));
    }
}
