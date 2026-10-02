package com.bare.appconfigs.transfer;
public final class AppConfigReplacement {
    private final String configId;
    private final boolean replaceExisting;
    public AppConfigReplacement(String configId, boolean replaceExisting) {
        this.configId = configId;
        this.replaceExisting = replaceExisting;
    }
    public String getConfigId() { return configId; }
    public boolean isReplaceExisting() { return replaceExisting; }
}