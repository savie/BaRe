package org.swiftapps.swiftbackup.model.provider;

import android.net.Uri;
import android.os.Build;
import android.provider.CallLog;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import defpackage.eq3;
import defpackage.fl1;
import defpackage.fz5;
import defpackage.jl0;
import defpackage.mt3;
import defpackage.nc8;
import defpackage.nh4;
import defpackage.pe4;
import defpackage.uq7;
import defpackage.xs1;
import defpackage.zl1;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class CallLogItem implements jl0 {
    private static final int ANDROID_13_SDK = 33;
    private static final int ANDROID_17_SDK = 37;
    public static final int ANSWERED_EXTERNALLY_TYPE = 7;
    public static final int BLOCKED_TYPE = 6;
    public static final a Companion = new a(null);
    private static final String INCLUDE_VOIP_CALLS_PARAM_KEY = "include_voip_calls";
    private static final String INCLUDE_VOIP_CALLS_PARAM_VALUE = "true";
    public static final int INCOMING_TYPE = 1;
    public static final int MISSED_TYPE = 3;
    public static final int OUTGOING_TYPE = 2;
    public static final int REJECTED_TYPE = 5;
    private static final String TELEPHONY_PHONE_ACCOUNT_COMPONENT_NAME = "com.android.phone/com.android.services.telephony.TelephonyConnectionService";
    public static final int VOICEMAIL_TYPE = 4;

    @zl1("countryiso")
    private String countryIso;

    @zl1("data_usage")
    private long dataUsage;

    @zl1("date")
    private long date;

    @zl1("duration")
    private long duration;

    @zl1("features")
    private int features;

    @zl1("formatted_number")
    private String formattedNumber;

    @zl1("geocoded_location")
    private String geoCodedLocation;

    @zl1("_id")
    private long id;

    @zl1("is_read")
    private int isRead;

    @zl1("lookup_uri")
    private String lookupUri;

    @zl1("matched_number")
    private String matchedNumber;

    @zl1("name")
    private String name;

    @zl1("new")
    private int newCall;

    @zl1("normalized_number")
    private String normalizedNumber;

    @zl1("number")
    private String number;

    @zl1("presentation")
    private int numberPresentation;

    @zl1("numbertype")
    private int numberType;

    @zl1("subscription_component_name")
    private String phoneAccountComponentName;

    @zl1("subscription_id")
    private String phoneAccountId;

    @zl1("photo_id")
    private long photoId;

    @zl1("photo_uri")
    private String photoUri;
    private String randomId;
    private Integer sourceSimSlotIndex;

    @zl1("type")
    private int type;

    @zl1("voicemail_uri")
    private String voiceMailUri;

    public /* synthetic */ CallLogItem(long j, int i, int i2, String str, int i3, String str2, long j2, long j3, long j4, int i4, String str3, int i5, String str4, int i6, String str5, String str6, String str7, String str8, long j5, String str9, String str10, String str11, String str12, Integer num, int i7, DefaultConstructorMarker defaultConstructorMarker) {
        this((i7 & 1) != 0 ? 0L : j, (i7 & 2) != 0 ? 0 : i, (i7 & 4) != 0 ? 0 : i2, (i7 & 8) != 0 ? null : str, (i7 & 16) != 0 ? 0 : i3, (i7 & 32) != 0 ? null : str2, (i7 & 64) != 0 ? 0L : j2, (i7 & 128) != 0 ? 0L : j3, (i7 & 256) != 0 ? 0L : j4, (i7 & 512) != 0 ? 0 : i4, (i7 & 1024) != 0 ? null : str3, (i7 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? 0 : i5, (i7 & 4096) != 0 ? null : str4, (i7 & 8192) != 0 ? 0 : i6, (i7 & 16384) != 0 ? null : str5, (i7 & 32768) != 0 ? null : str6, (i7 & 65536) != 0 ? null : str7, (i7 & 131072) != 0 ? null : str8, (i7 & 262144) != 0 ? 0L : j5, (i7 & 524288) != 0 ? null : str9, (i7 & 1048576) != 0 ? null : str10, (i7 & 2097152) != 0 ? null : str11, (i7 & 4194304) != 0 ? null : str12, (i7 & 8388608) != 0 ? null : num);
    }

    public static /* synthetic */ CallLogItem copy$default(CallLogItem callLogItem, long j, int i, int i2, String str, int i3, String str2, long j2, long j3, long j4, int i4, String str3, int i5, String str4, int i6, String str5, String str6, String str7, String str8, long j5, String str9, String str10, String str11, String str12, Integer num, int i7, Object obj) {
        Integer num2;
        String str13;
        long j6 = (i7 & 1) != 0 ? callLogItem.id : j;
        int i8 = (i7 & 2) != 0 ? callLogItem.type : i;
        int i9 = (i7 & 4) != 0 ? callLogItem.features : i2;
        String str14 = (i7 & 8) != 0 ? callLogItem.number : str;
        int i10 = (i7 & 16) != 0 ? callLogItem.numberPresentation : i3;
        String str15 = (i7 & 32) != 0 ? callLogItem.countryIso : str2;
        long j7 = (i7 & 64) != 0 ? callLogItem.date : j2;
        long j8 = (i7 & 128) != 0 ? callLogItem.duration : j3;
        long j9 = (i7 & 256) != 0 ? callLogItem.dataUsage : j4;
        int i11 = (i7 & 512) != 0 ? callLogItem.newCall : i4;
        long j10 = j6;
        String str16 = (i7 & 1024) != 0 ? callLogItem.name : str3;
        int i12 = (i7 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? callLogItem.numberType : i5;
        String str17 = str16;
        String str18 = (i7 & 4096) != 0 ? callLogItem.voiceMailUri : str4;
        int i13 = (i7 & 8192) != 0 ? callLogItem.isRead : i6;
        String str19 = (i7 & 16384) != 0 ? callLogItem.geoCodedLocation : str5;
        String str20 = (i7 & 32768) != 0 ? callLogItem.lookupUri : str6;
        String str21 = (i7 & 65536) != 0 ? callLogItem.matchedNumber : str7;
        String str22 = (i7 & 131072) != 0 ? callLogItem.normalizedNumber : str8;
        String str23 = str19;
        long j11 = (i7 & 262144) != 0 ? callLogItem.photoId : j5;
        String str24 = (i7 & 524288) != 0 ? callLogItem.photoUri : str9;
        String str25 = (i7 & 1048576) != 0 ? callLogItem.formattedNumber : str10;
        String str26 = str24;
        String str27 = (i7 & 2097152) != 0 ? callLogItem.phoneAccountComponentName : str11;
        String str28 = (i7 & 4194304) != 0 ? callLogItem.phoneAccountId : str12;
        if ((i7 & 8388608) != 0) {
            str13 = str28;
            num2 = callLogItem.sourceSimSlotIndex;
        } else {
            num2 = num;
            str13 = str28;
        }
        return callLogItem.copy(j10, i8, i9, str14, i10, str15, j7, j8, j9, i11, str17, i12, str18, i13, str23, str20, str21, str22, j11, str26, str25, str27, str13, num2);
    }

    public final long component1() {
        return this.id;
    }

    public final int component10() {
        return this.newCall;
    }

    public final String component11() {
        return this.name;
    }

    public final int component12() {
        return this.numberType;
    }

    public final String component13() {
        return this.voiceMailUri;
    }

    public final int component14() {
        return this.isRead;
    }

    public final String component15() {
        return this.geoCodedLocation;
    }

    public final String component16() {
        return this.lookupUri;
    }

    public final String component17() {
        return this.matchedNumber;
    }

    public final String component18() {
        return this.normalizedNumber;
    }

    public final long component19() {
        return this.photoId;
    }

    public final int component2() {
        return this.type;
    }

    public final String component20() {
        return this.photoUri;
    }

    public final String component21() {
        return this.formattedNumber;
    }

    public final String component22() {
        return this.phoneAccountComponentName;
    }

    public final String component23() {
        return this.phoneAccountId;
    }

    public final Integer component24() {
        return this.sourceSimSlotIndex;
    }

    public final int component3() {
        return this.features;
    }

    public final String component4() {
        return this.number;
    }

    public final int component5() {
        return this.numberPresentation;
    }

    public final String component6() {
        return this.countryIso;
    }

    public final long component7() {
        return this.date;
    }

    public final long component8() {
        return this.duration;
    }

    public final long component9() {
        return this.dataUsage;
    }

    public final CallLogItem copy(long j, int i, int i2, String str, int i3, String str2, long j2, long j3, long j4, int i4, String str3, int i5, String str4, int i6, String str5, String str6, String str7, String str8, long j5, String str9, String str10, String str11, String str12, Integer num) {
        return new CallLogItem(j, i, i2, str, i3, str2, j2, j3, j4, i4, str3, i5, str4, i6, str5, str6, str7, str8, j5, str9, str10, str11, str12, num);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CallLogItem)) {
            return false;
        }
        CallLogItem callLogItem = (CallLogItem) obj;
        return this.id == callLogItem.id && this.type == callLogItem.type && this.features == callLogItem.features && pe4.d(this.number, callLogItem.number) && this.numberPresentation == callLogItem.numberPresentation && pe4.d(this.countryIso, callLogItem.countryIso) && this.date == callLogItem.date && this.duration == callLogItem.duration && this.dataUsage == callLogItem.dataUsage && this.newCall == callLogItem.newCall && pe4.d(this.name, callLogItem.name) && this.numberType == callLogItem.numberType && pe4.d(this.voiceMailUri, callLogItem.voiceMailUri) && this.isRead == callLogItem.isRead && pe4.d(this.geoCodedLocation, callLogItem.geoCodedLocation) && pe4.d(this.lookupUri, callLogItem.lookupUri) && pe4.d(this.matchedNumber, callLogItem.matchedNumber) && pe4.d(this.normalizedNumber, callLogItem.normalizedNumber) && this.photoId == callLogItem.photoId && pe4.d(this.photoUri, callLogItem.photoUri) && pe4.d(this.formattedNumber, callLogItem.formattedNumber) && pe4.d(this.phoneAccountComponentName, callLogItem.phoneAccountComponentName) && pe4.d(this.phoneAccountId, callLogItem.phoneAccountId) && pe4.d(this.sourceSimSlotIndex, callLogItem.sourceSimSlotIndex);
    }

    @Override // defpackage.jl0
    public CallLogItem getCopy() {
        CallLogItem callLogItemCopy$default = copy$default(this, 0L, 0, 0, null, 0, null, 0L, 0L, 0L, 0, null, 0, null, 0, null, null, null, null, 0L, null, null, null, null, null, 16777215, null);
        callLogItemCopy$default.randomId = this.randomId;
        return callLogItemCopy$default;
    }

    public final String getCountryIso() {
        return this.countryIso;
    }

    public final long getDataUsage() {
        return this.dataUsage;
    }

    public final long getDate() {
        return this.date;
    }

    public final long getDuration() {
        return this.duration;
    }

    public final int getFeatures() {
        return this.features;
    }

    public final String getFormattedNumber() {
        return this.formattedNumber;
    }

    public final String getGeoCodedLocation() {
        return this.geoCodedLocation;
    }

    public final long getId() {
        return this.id;
    }

    @Override // defpackage.jl0
    public String getItemId() {
        String str = this.randomId;
        if (str != null) {
            return str;
        }
        String strI = nh4.d.i(6, true, true);
        this.randomId = strI;
        strI.getClass();
        return strI;
    }

    public final String getLookupUri() {
        return this.lookupUri;
    }

    public final String getMatchedNumber() {
        return this.matchedNumber;
    }

    public final String getName() {
        return this.name;
    }

    public final int getNewCall() {
        return this.newCall;
    }

    public final String getNormalizedNumber() {
        return this.normalizedNumber;
    }

    public final String getNumber() {
        return this.number;
    }

    public final int getNumberPresentation() {
        return this.numberPresentation;
    }

    public final int getNumberType() {
        return this.numberType;
    }

    public final String getPhoneAccountComponentName() {
        return this.phoneAccountComponentName;
    }

    public final String getPhoneAccountId() {
        return this.phoneAccountId;
    }

    public final long getPhotoId() {
        return this.photoId;
    }

    public final String getPhotoUri() {
        return this.photoUri;
    }

    public final Integer getSourceSimSlotIndex() {
        return this.sourceSimSlotIndex;
    }

    public final int getType() {
        return this.type;
    }

    public final String getVoiceMailUri() {
        return this.voiceMailUri;
    }

    public int hashCode() {
        int iD = eq3.d(this.features, eq3.d(this.type, Long.hashCode(this.id) * 31, 31), 31);
        String str = this.number;
        int iD2 = eq3.d(this.numberPresentation, (iD + (str == null ? 0 : str.hashCode())) * 31, 31);
        String str2 = this.countryIso;
        int iD3 = eq3.d(this.newCall, xs1.f(this.dataUsage, xs1.f(this.duration, xs1.f(this.date, (iD2 + (str2 == null ? 0 : str2.hashCode())) * 31, 31), 31), 31), 31);
        String str3 = this.name;
        int iD4 = eq3.d(this.numberType, (iD3 + (str3 == null ? 0 : str3.hashCode())) * 31, 31);
        String str4 = this.voiceMailUri;
        int iD5 = eq3.d(this.isRead, (iD4 + (str4 == null ? 0 : str4.hashCode())) * 31, 31);
        String str5 = this.geoCodedLocation;
        int iHashCode = (iD5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.lookupUri;
        int iHashCode2 = (iHashCode + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.matchedNumber;
        int iHashCode3 = (iHashCode2 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.normalizedNumber;
        int iF = xs1.f(this.photoId, (iHashCode3 + (str8 == null ? 0 : str8.hashCode())) * 31, 31);
        String str9 = this.photoUri;
        int iHashCode4 = (iF + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.formattedNumber;
        int iHashCode5 = (iHashCode4 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.phoneAccountComponentName;
        int iHashCode6 = (iHashCode5 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.phoneAccountId;
        int iHashCode7 = (iHashCode6 + (str12 == null ? 0 : str12.hashCode())) * 31;
        Integer num = this.sourceSimSlotIndex;
        return iHashCode7 + (num != null ? num.hashCode() : 0);
    }

    public final int isRead() {
        return this.isRead;
    }

    public final void setCountryIso(String str) {
        this.countryIso = str;
    }

    public final void setDataUsage(long j) {
        this.dataUsage = j;
    }

    public final void setDate(long j) {
        this.date = j;
    }

    public final void setDuration(long j) {
        this.duration = j;
    }

    public final void setFeatures(int i) {
        this.features = i;
    }

    public final void setFormattedNumber(String str) {
        this.formattedNumber = str;
    }

    public final void setGeoCodedLocation(String str) {
        this.geoCodedLocation = str;
    }

    public final void setId(long j) {
        this.id = j;
    }

    public final void setLookupUri(String str) {
        this.lookupUri = str;
    }

    public final void setMatchedNumber(String str) {
        this.matchedNumber = str;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setNewCall(int i) {
        this.newCall = i;
    }

    public final void setNormalizedNumber(String str) {
        this.normalizedNumber = str;
    }

    public final void setNumber(String str) {
        this.number = str;
    }

    public final void setNumberPresentation(int i) {
        this.numberPresentation = i;
    }

    public final void setNumberType(int i) {
        this.numberType = i;
    }

    public final void setPhoneAccountComponentName(String str) {
        this.phoneAccountComponentName = str;
    }

    public final void setPhoneAccountId(String str) {
        this.phoneAccountId = str;
    }

    public final void setPhotoId(long j) {
        this.photoId = j;
    }

    public final void setPhotoUri(String str) {
        this.photoUri = str;
    }

    public final void setRead(int i) {
        this.isRead = i;
    }

    public final void setSourceSimSlotIndex(Integer num) {
        this.sourceSimSlotIndex = num;
    }

    public final void setType(int i) {
        this.type = i;
    }

    public final void setVoiceMailUri(String str) {
        this.voiceMailUri = str;
    }

    public String toString() {
        long j = this.id;
        int i = this.type;
        int i2 = this.features;
        String str = this.number;
        int i3 = this.numberPresentation;
        String str2 = this.countryIso;
        long j2 = this.date;
        long j3 = this.duration;
        long j4 = this.dataUsage;
        int i4 = this.newCall;
        String str3 = this.name;
        int i5 = this.numberType;
        String str4 = this.voiceMailUri;
        int i6 = this.isRead;
        String str5 = this.geoCodedLocation;
        String str6 = this.lookupUri;
        String str7 = this.matchedNumber;
        String str8 = this.normalizedNumber;
        long j5 = this.photoId;
        String str9 = this.photoUri;
        String str10 = this.formattedNumber;
        String str11 = this.phoneAccountComponentName;
        String str12 = this.phoneAccountId;
        Integer num = this.sourceSimSlotIndex;
        StringBuilder sb = new StringBuilder("CallLogItem(id=");
        sb.append(j);
        sb.append(", type=");
        sb.append(i);
        sb.append(", features=");
        sb.append(i2);
        sb.append(", number=");
        sb.append(str);
        sb.append(", numberPresentation=");
        sb.append(i3);
        sb.append(", countryIso=");
        sb.append(str2);
        fz5.r(sb, ", date=", j2, ", duration=");
        sb.append(j3);
        fz5.r(sb, ", dataUsage=", j4, ", newCall=");
        sb.append(i4);
        sb.append(", name=");
        sb.append(str3);
        sb.append(", numberType=");
        sb.append(i5);
        sb.append(", voiceMailUri=");
        sb.append(str4);
        sb.append(", isRead=");
        sb.append(i6);
        sb.append(", geoCodedLocation=");
        sb.append(str5);
        sb.append(", lookupUri=");
        xs1.t(sb, str6, ", matchedNumber=", str7, ", normalizedNumber=");
        sb.append(str8);
        sb.append(", photoId=");
        sb.append(j5);
        xs1.t(sb, ", photoUri=", str9, ", formattedNumber=", str10);
        xs1.t(sb, ", phoneAccountComponentName=", str11, ", phoneAccountId=", str12);
        sb.append(", sourceSimSlotIndex=");
        sb.append(num);
        sb.append(")");
        return sb.toString();
    }

    public final CallLogItem withPhoneAccountForRestore(int i, mt3 mt3Var) {
        Integer num;
        mt3Var.getClass();
        if (i < ANDROID_13_SDK || !pe4.d(this.phoneAccountComponentName, TELEPHONY_PHONE_ACCOUNT_COMPONENT_NAME) || (num = this.sourceSimSlotIndex) == null) {
            return this;
        }
        int iIntValue = ((Number) mt3Var.invoke(num)).intValue();
        return iIntValue >= 0 ? copy$default(this, 0L, 0, 0, null, 0, null, 0L, 0L, 0L, 0, null, 0, null, 0, null, null, null, null, 0L, null, null, null, String.valueOf(iIntValue), null, 12582911, null) : copy$default(this, 0L, 0, 0, null, 0, null, 0L, 0L, 0L, 0, null, 0, null, 0, null, null, null, null, 0L, null, null, null, null, null, 10485759, null);
    }

    public final CallLogItem withSourceSimSlotIndex(int i, mt3 mt3Var) {
        String str;
        Integer numW;
        int iIntValue;
        mt3Var.getClass();
        return (i < ANDROID_13_SDK || !pe4.d(this.phoneAccountComponentName, TELEPHONY_PHONE_ACCOUNT_COMPONENT_NAME) || (str = this.phoneAccountId) == null || (numW = uq7.W(10, str)) == null || (iIntValue = ((Number) mt3Var.invoke(numW)).intValue()) < 0) ? this : copy$default(this, 0L, 0, 0, null, 0, null, 0L, 0L, 0L, 0, null, 0, null, 0, null, null, null, null, 0L, null, null, null, null, Integer.valueOf(iIntValue), 8388607, null);
    }

    public CallLogItem(long j, int i, int i2, String str, int i3, String str2, long j2, long j3, long j4, int i4, String str3, int i5, String str4, int i6, String str5, String str6, String str7, String str8, long j5, String str9, String str10, String str11, String str12, Integer num) {
        this.id = j;
        this.type = i;
        this.features = i2;
        this.number = str;
        this.numberPresentation = i3;
        this.countryIso = str2;
        this.date = j2;
        this.duration = j3;
        this.dataUsage = j4;
        this.newCall = i4;
        this.name = str3;
        this.numberType = i5;
        this.voiceMailUri = str4;
        this.isRead = i6;
        this.geoCodedLocation = str5;
        this.lookupUri = str6;
        this.matchedNumber = str7;
        this.normalizedNumber = str8;
        this.photoId = j5;
        this.photoUri = str9;
        this.formattedNumber = str10;
        this.phoneAccountComponentName = str11;
        this.phoneAccountId = str12;
        this.sourceSimSlotIndex = num;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Uri contentUriForSdk(int i, Uri uri) {
            uri.getClass();
            if (i < CallLogItem.ANDROID_17_SDK) {
                return uri;
            }
            Uri uriBuild = uri.buildUpon().appendQueryParameter(CallLogItem.INCLUDE_VOIP_CALLS_PARAM_KEY, CallLogItem.INCLUDE_VOIP_CALLS_PARAM_VALUE).build();
            uriBuild.getClass();
            return uriBuild;
        }

        public final Uri deleteContentUriForInsertedUri(Uri uri) {
            uri.getClass();
            Uri uriBuild = uri.buildUpon().encodedQuery(null).fragment(null).build();
            uriBuild.getClass();
            return uriBuild;
        }

        public final Uri getCONTENT_URI() {
            return contentUriForSdk(Build.VERSION.SDK_INT);
        }

        public final List<Uri> getRESTORE_CONTENT_URIS() {
            return restoreContentUrisForSdk(Build.VERSION.SDK_INT);
        }

        public final List<Uri> restoreContentUrisForSdk(int i) {
            if (i < CallLogItem.ANDROID_17_SDK) {
                return nc8.I(CallLog.Calls.CONTENT_URI);
            }
            Uri uri = CallLog.Calls.CONTENT_URI_WITH_VOIP_CALLS;
            uri.getClass();
            Uri uri2 = CallLog.Calls.CONTENT_URI;
            uri2.getClass();
            return fl1.A0(uri, uri2);
        }

        private a() {
        }

        public final Uri contentUriForSdk(int i) {
            if (i >= CallLogItem.ANDROID_17_SDK) {
                Uri uri = CallLog.Calls.CONTENT_URI_WITH_VOIP_CALLS;
                uri.getClass();
                return uri;
            }
            Uri uri2 = CallLog.Calls.CONTENT_URI;
            uri2.getClass();
            return uri2;
        }

        public final List<Uri> restoreContentUrisForSdk(int i, Uri uri) {
            uri.getClass();
            if (i >= CallLogItem.ANDROID_17_SDK) {
                return fl1.A0(contentUriForSdk(i, uri), uri);
            }
            return nc8.I(uri);
        }
    }

    public CallLogItem() {
        this(0L, 0, 0, null, 0, null, 0L, 0L, 0L, 0, null, 0, null, 0, null, null, null, null, 0L, null, null, null, null, null, 16777215, null);
    }

    private static /* synthetic */ void getRandomId$annotations() {
    }
}
