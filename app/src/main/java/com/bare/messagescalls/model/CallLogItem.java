package com.bare.messagescalls.model;

/**
 * Reference provider model reconstructed from Swift Backup 5.1.0 (620) CallLogItem.
 * No Android provider query is performed here; this is the persisted/domain shape.
 */
public final class CallLogItem {
    public static final int INCOMING_TYPE = 1;
    public static final int OUTGOING_TYPE = 2;
    public static final int MISSED_TYPE = 3;
    public static final int VOICEMAIL_TYPE = 4;
    public static final int REJECTED_TYPE = 5;
    public static final int BLOCKED_TYPE = 6;
    public static final int ANSWERED_EXTERNALLY_TYPE = 7;

    public final long id;
    public final int type;
    public final int features;
    public final String number;
    public final int numberPresentation;
    public final String countryIso;
    public final long date;
    public final long duration;
    public final long dataUsage;
    public final int newCall;
    public final String name;
    public final int numberType;
    public final String voiceMailUri;
    public final int isRead;
    public final String geoCodedLocation;
    public final String lookupUri;
    public final String matchedNumber;
    public final String normalizedNumber;
    public final long photoId;
    public final String photoUri;
    public final String formattedNumber;
    public final String phoneAccountComponentName;
    public final String phoneAccountId;
    public final Integer sourceSimSlotIndex;

    public CallLogItem(
            long id, int type, int features, String number, int numberPresentation,
            String countryIso, long date, long duration, long dataUsage, int newCall,
            String name, int numberType, String voiceMailUri, int isRead,
            String geoCodedLocation, String lookupUri, String matchedNumber,
            String normalizedNumber, long photoId, String photoUri, String formattedNumber,
            String phoneAccountComponentName, String phoneAccountId, Integer sourceSimSlotIndex) {
        this.id = id;
        this.type = type;
        this.features = features;
        this.number = number;
        this.numberPresentation = numberPresentation;
        this.countryIso = countryIso;
        this.date = date;
        this.duration = duration;
        this.dataUsage = dataUsage;
        this.newCall = newCall;
        this.name = name;
        this.numberType = numberType;
        this.voiceMailUri = voiceMailUri;
        this.isRead = isRead;
        this.geoCodedLocation = geoCodedLocation;
        this.lookupUri = lookupUri;
        this.matchedNumber = matchedNumber;
        this.normalizedNumber = normalizedNumber;
        this.photoId = photoId;
        this.photoUri = photoUri;
        this.formattedNumber = formattedNumber;
        this.phoneAccountComponentName = phoneAccountComponentName;
        this.phoneAccountId = phoneAccountId;
        this.sourceSimSlotIndex = sourceSimSlotIndex;
    }

    public boolean isIncoming() { return type == INCOMING_TYPE; }
    public boolean isOutgoing() { return type == OUTGOING_TYPE; }
    public boolean isMissed() { return type == MISSED_TYPE; }
    public boolean isVoicemail() { return type == VOICEMAIL_TYPE; }
    public boolean isRejected() { return type == REJECTED_TYPE; }
    public boolean isBlocked() { return type == BLOCKED_TYPE; }
    public boolean isAnsweredExternally() { return type == ANSWERED_EXTERNALLY_TYPE; }
}
