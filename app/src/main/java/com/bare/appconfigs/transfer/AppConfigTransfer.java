package com.bare.appconfigs.transfer;
public final class AppConfigTransfer {
    private final String payload;
    private final boolean valid;
    public AppConfigTransfer(String payload, boolean valid) {
        this.payload = payload;
        this.valid = valid;
    }
    public String getPayload() { return payload; }
    public boolean isValid() { return valid; }
}