package com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory;

import defpackage.y77;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class AzureActiveDirectoryInstanceResponse {

    @y77("api-version")
    private String mApiVersion;

    @y77("metadata")
    private ArrayList<AzureActiveDirectoryCloud> mClouds;

    @y77("tenant_discovery_endpoint")
    private String mTestDiscoveryEndpoint;

    public final ArrayList<AzureActiveDirectoryCloud> getClouds() {
        return this.mClouds;
    }
}
