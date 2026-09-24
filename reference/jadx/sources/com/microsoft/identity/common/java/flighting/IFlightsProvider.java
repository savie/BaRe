package com.microsoft.identity.common.java.flighting;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface IFlightsProvider {
    boolean getBooleanValue(CommonFlight commonFlight);

    int getIntValue(CommonFlight commonFlight);

    boolean isFlightEnabled(CommonFlight commonFlight);
}
