package com.microsoft.identity.common.java.flighting;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CommonFlightsManager {
    public static final CommonFlightsManager INSTANCE = new CommonFlightsManager();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class DefaultValueFlightsProvider implements IFlightsProvider {
        public static final DefaultValueFlightsProvider INSTANCE = new DefaultValueFlightsProvider();

        @Override // com.microsoft.identity.common.java.flighting.IFlightsProvider
        public final boolean getBooleanValue(CommonFlight commonFlight) {
            commonFlight.getClass();
            return ((Boolean) commonFlight.getDefaultValue()).booleanValue();
        }

        @Override // com.microsoft.identity.common.java.flighting.IFlightsProvider
        public final int getIntValue(CommonFlight commonFlight) {
            commonFlight.getClass();
            return ((Integer) commonFlight.getDefaultValue()).intValue();
        }

        @Override // com.microsoft.identity.common.java.flighting.IFlightsProvider
        public final boolean isFlightEnabled(CommonFlight commonFlight) {
            commonFlight.getClass();
            return getBooleanValue(commonFlight);
        }
    }

    public final IFlightsProvider getFlightsProviderForTenant(String str) {
        str.getClass();
        return DefaultValueFlightsProvider.INSTANCE;
    }
}
