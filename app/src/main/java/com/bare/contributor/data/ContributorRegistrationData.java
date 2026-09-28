package com.bare.contributor.data;

/** Direct field port of Reference ContributorRegistration. */
public final class ContributorRegistrationData {
    public enum Type { TRANSLATOR, COMMUNITY_HELPER }
    public final String status;
    public final Type type;
    public final String name;
    public final String locales;
    public final String telegramId;
    public final String crowdinId;
    public final String paypalId;

    public ContributorRegistrationData(String status, Type type, String name, String locales,
                                       String telegramId, String crowdinId, String paypalId) {
        this.status = status; this.type = type; this.name = name; this.locales = locales;
        this.telegramId = telegramId; this.crowdinId = crowdinId; this.paypalId = paypalId;
    }
}
