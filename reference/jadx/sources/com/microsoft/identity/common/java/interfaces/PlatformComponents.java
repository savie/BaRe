package com.microsoft.identity.common.java.interfaces;

import com.microsoft.identity.common.components.AndroidClockSkewManager;
import com.microsoft.identity.common.components.AndroidPopManagerSupplier;
import com.microsoft.identity.common.components.AndroidStorageSupplier;
import com.microsoft.identity.common.internal.platform.AndroidBroadcaster;
import com.microsoft.identity.common.internal.platform.AndroidPlatformUtil;
import com.microsoft.identity.common.internal.providers.oauth2.AndroidTaskStateGenerator;
import com.microsoft.identity.common.internal.ui.AndroidAuthorizationStrategyFactory;
import com.microsoft.identity.common.internal.ui.browser.AndroidBrowserSelector;
import com.microsoft.identity.common.java.crypto.IDevicePopManager;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.net.DefaultHttpClientWrapper;
import com.microsoft.identity.common.java.util.IClockSkewManager;
import com.microsoft.identity.common.java.util.IPlatformUtil;
import defpackage.f6;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class PlatformComponents implements IPopManagerSupplier {
    private final AndroidAuthorizationStrategyFactory mAuthorizationStrategyFactory;
    private final IClockSkewManager mClockSkewManager;
    private final IPlatformUtil mPlatformUtil;
    private final IPopManagerSupplier mPopManagerLoader;
    private final AndroidTaskStateGenerator mStateGenerator;
    private final AndroidStorageSupplier mStorageSupplier;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public abstract class PlatformComponentsBuilder<C extends PlatformComponents, B extends PlatformComponentsBuilder<C, B>> {
        private AndroidAuthorizationStrategyFactory authorizationStrategyFactory;
        private AndroidBroadcaster broadcaster;
        private AndroidBrowserSelector browserSelector;
        private AndroidClockSkewManager clockSkewManager;
        private DefaultHttpClientWrapper httpClientWrapper;
        private AndroidPlatformUtil platformUtil;
        private AndroidPopManagerSupplier popManagerLoader;
        private AndroidTaskStateGenerator stateGenerator;
        private AndroidStorageSupplier storageSupplier;

        public final B authorizationStrategyFactory(AndroidAuthorizationStrategyFactory androidAuthorizationStrategyFactory) {
            this.authorizationStrategyFactory = androidAuthorizationStrategyFactory;
            return (PlatformComponentsBuilderImpl) this;
        }

        public final B broadcaster(AndroidBroadcaster androidBroadcaster) {
            this.broadcaster = androidBroadcaster;
            return (PlatformComponentsBuilderImpl) this;
        }

        public final void browserSelector(AndroidBrowserSelector androidBrowserSelector) {
            this.browserSelector = androidBrowserSelector;
        }

        public abstract C build();

        public final PlatformComponentsBuilder clockSkewManager(AndroidClockSkewManager androidClockSkewManager) {
            this.clockSkewManager = androidClockSkewManager;
            return (PlatformComponentsBuilderImpl) this;
        }

        public final B httpClientWrapper(DefaultHttpClientWrapper defaultHttpClientWrapper) {
            this.httpClientWrapper = defaultHttpClientWrapper;
            return (PlatformComponentsBuilderImpl) this;
        }

        public final PlatformComponentsBuilder platformUtil(AndroidPlatformUtil androidPlatformUtil) {
            this.platformUtil = androidPlatformUtil;
            return (PlatformComponentsBuilderImpl) this;
        }

        public final PlatformComponentsBuilder popManagerLoader(AndroidPopManagerSupplier androidPopManagerSupplier) {
            this.popManagerLoader = androidPopManagerSupplier;
            return (PlatformComponentsBuilderImpl) this;
        }

        public final void stateGenerator(AndroidTaskStateGenerator androidTaskStateGenerator) {
            this.stateGenerator = androidTaskStateGenerator;
        }

        public final B storageSupplier(AndroidStorageSupplier androidStorageSupplier) {
            this.storageSupplier = androidStorageSupplier;
            return (PlatformComponentsBuilderImpl) this;
        }

        public final String toString() {
            return "PlatformComponents.PlatformComponentsBuilder(clockSkewManager=" + this.clockSkewManager + ", broadcaster=" + this.broadcaster + ", popManagerLoader=" + this.popManagerLoader + ", storageSupplier=" + this.storageSupplier + ", authorizationStrategyFactory=" + this.authorizationStrategyFactory + ", stateGenerator=" + this.stateGenerator + ", platformUtil=" + this.platformUtil + ", httpClientWrapper=" + this.httpClientWrapper + ", browserSelector=" + this.browserSelector + ")";
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class PlatformComponentsBuilderImpl extends PlatformComponentsBuilder<PlatformComponents, PlatformComponentsBuilderImpl> {
        @Override // com.microsoft.identity.common.java.interfaces.PlatformComponents.PlatformComponentsBuilder
        public final PlatformComponents build() {
            return new PlatformComponents(this);
        }
    }

    public PlatformComponents(PlatformComponentsBuilder<?, ?> platformComponentsBuilder) {
        IClockSkewManager iClockSkewManager = ((PlatformComponentsBuilder) platformComponentsBuilder).clockSkewManager;
        this.mClockSkewManager = iClockSkewManager;
        if (iClockSkewManager == null) {
            f6.n("mClockSkewManager is marked non-null but is null");
            throw null;
        }
        if (((PlatformComponentsBuilder) platformComponentsBuilder).broadcaster == null) {
            f6.n("mBroadcaster is marked non-null but is null");
            throw null;
        }
        IPopManagerSupplier iPopManagerSupplier = ((PlatformComponentsBuilder) platformComponentsBuilder).popManagerLoader;
        this.mPopManagerLoader = iPopManagerSupplier;
        if (iPopManagerSupplier == null) {
            f6.n("mPopManagerLoader is marked non-null but is null");
            throw null;
        }
        AndroidStorageSupplier androidStorageSupplier = ((PlatformComponentsBuilder) platformComponentsBuilder).storageSupplier;
        this.mStorageSupplier = androidStorageSupplier;
        if (androidStorageSupplier == null) {
            f6.n("mStorageSupplier is marked non-null but is null");
            throw null;
        }
        this.mAuthorizationStrategyFactory = ((PlatformComponentsBuilder) platformComponentsBuilder).authorizationStrategyFactory;
        this.mStateGenerator = ((PlatformComponentsBuilder) platformComponentsBuilder).stateGenerator;
        IPlatformUtil iPlatformUtil = ((PlatformComponentsBuilder) platformComponentsBuilder).platformUtil;
        this.mPlatformUtil = iPlatformUtil;
        if (iPlatformUtil == null) {
            f6.n("mPlatformUtil is marked non-null but is null");
            throw null;
        }
        if (((PlatformComponentsBuilder) platformComponentsBuilder).httpClientWrapper == null) {
            f6.n("mHttpClientWrapper is marked non-null but is null");
            throw null;
        }
        if (((PlatformComponentsBuilder) platformComponentsBuilder).browserSelector != null) {
            return;
        }
        f6.n("mBrowserSelector is marked non-null but is null");
        throw null;
    }

    public static PlatformComponentsBuilder<?, ?> builder() {
        return new PlatformComponentsBuilderImpl();
    }

    public final AndroidAuthorizationStrategyFactory getAuthorizationStrategyFactory() {
        return this.mAuthorizationStrategyFactory;
    }

    public final IClockSkewManager getClockSkewManager() {
        return this.mClockSkewManager;
    }

    @Override // com.microsoft.identity.common.java.interfaces.IPopManagerSupplier
    public final IDevicePopManager getDefaultDevicePopManager() throws ClientException {
        return this.mPopManagerLoader.getDefaultDevicePopManager();
    }

    @Override // com.microsoft.identity.common.java.interfaces.IPopManagerSupplier
    public final IDevicePopManager getDevicePopManager() throws ClientException {
        return this.mPopManagerLoader.getDevicePopManager();
    }

    public final IPlatformUtil getPlatformUtil() {
        return this.mPlatformUtil;
    }

    public final AndroidTaskStateGenerator getStateGenerator() {
        return this.mStateGenerator;
    }

    public final AndroidStorageSupplier getStorageSupplier() {
        return this.mStorageSupplier;
    }
}
