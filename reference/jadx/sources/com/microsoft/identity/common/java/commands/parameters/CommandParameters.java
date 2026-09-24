package com.microsoft.identity.common.java.commands.parameters;

import com.microsoft.identity.common.java.cache.MsalOAuth2TokenCache;
import com.microsoft.identity.common.java.interfaces.PlatformComponents;
import com.microsoft.identity.common.java.opentelemetry.SerializableSpanContext;
import com.microsoft.identity.common.java.request.SdkType;
import com.microsoft.identity.common.java.util.StringUtil;
import defpackage.dj7;
import defpackage.f6;
import defpackage.q03;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class CommandParameters {

    @q03
    private String applicationName;

    @q03
    private String applicationVersion;

    @q03
    private String callerPackageName;

    @q03
    private String callerSignature;

    @q03
    private String childClientId;

    @q03
    private String childRedirectUri;

    @q03
    private String clientId;

    @q03
    private String correlationId;
    private final transient Map<String, String> flightInformation;
    private final transient boolean isSharedDevice;
    private final transient MsalOAuth2TokenCache oAuth2TokenCache;
    private final transient PlatformComponents platformComponents;

    @q03
    private boolean powerOptCheckEnabled;

    @q03
    private String redirectUri;

    @q03
    private String requiredBrokerProtocolVersion;

    @q03
    private SdkType sdkType;

    @q03
    private String sdkVersion;

    @q03
    private SerializableSpanContext spanContext;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public abstract class CommandParametersBuilder<C extends CommandParameters, B extends CommandParametersBuilder<C, B>> {
        private String applicationName;
        private String applicationVersion;
        private String callerPackageName;
        private String callerSignature;
        private String childClientId;
        private String childRedirectUri;
        private String clientId;
        private String correlationId;
        private boolean flightInformation$set;
        private Map<String, String> flightInformation$value;
        private boolean isSharedDevice;
        private MsalOAuth2TokenCache oAuth2TokenCache;
        private PlatformComponents platformComponents;
        private boolean powerOptCheckEnabled;
        private String redirectUri;
        private String requiredBrokerProtocolVersion;
        private SdkType sdkType;
        private String sdkVersion;
        private SerializableSpanContext spanContext;

        public final void $fillValuesFrom(TokenCommandParameters tokenCommandParameters) {
            platformComponents(((CommandParameters) tokenCommandParameters).platformComponents);
            oAuth2TokenCache(((CommandParameters) tokenCommandParameters).oAuth2TokenCache);
            isSharedDevice(((CommandParameters) tokenCommandParameters).isSharedDevice);
            applicationName(((CommandParameters) tokenCommandParameters).applicationName);
            applicationVersion(((CommandParameters) tokenCommandParameters).applicationVersion);
            requiredBrokerProtocolVersion(((CommandParameters) tokenCommandParameters).requiredBrokerProtocolVersion);
            sdkType(((CommandParameters) tokenCommandParameters).sdkType);
            sdkVersion(((CommandParameters) tokenCommandParameters).sdkVersion);
            clientId(((CommandParameters) tokenCommandParameters).clientId);
            redirectUri(((CommandParameters) tokenCommandParameters).redirectUri);
            this.childClientId = ((CommandParameters) tokenCommandParameters).childClientId;
            this.childRedirectUri = ((CommandParameters) tokenCommandParameters).childRedirectUri;
            powerOptCheckEnabled(((CommandParameters) tokenCommandParameters).powerOptCheckEnabled);
            this.callerPackageName = ((CommandParameters) tokenCommandParameters).callerPackageName;
            this.callerSignature = ((CommandParameters) tokenCommandParameters).callerSignature;
            this.flightInformation$value = ((CommandParameters) tokenCommandParameters).flightInformation;
            this.flightInformation$set = true;
            correlationId(((CommandParameters) tokenCommandParameters).correlationId);
            this.spanContext = ((CommandParameters) tokenCommandParameters).spanContext;
        }

        public final B applicationName(String str) {
            this.applicationName = str;
            return (B) self();
        }

        public final B applicationVersion(String str) {
            this.applicationVersion = str;
            return (B) self();
        }

        public abstract C build();

        public final B clientId(String str) {
            this.clientId = str;
            return (B) self();
        }

        public final B correlationId(String str) {
            this.correlationId = str;
            return (B) self();
        }

        public final B isSharedDevice(boolean z) {
            this.isSharedDevice = z;
            return (B) self();
        }

        public final B oAuth2TokenCache(MsalOAuth2TokenCache msalOAuth2TokenCache) {
            this.oAuth2TokenCache = msalOAuth2TokenCache;
            return (B) self();
        }

        public final B platformComponents(PlatformComponents platformComponents) {
            if (platformComponents != null) {
                this.platformComponents = platformComponents;
                return (B) self();
            }
            f6.n("platformComponents is marked non-null but is null");
            return null;
        }

        public final B powerOptCheckEnabled(boolean z) {
            this.powerOptCheckEnabled = z;
            return (B) self();
        }

        public final B redirectUri(String str) {
            this.redirectUri = str;
            return (B) self();
        }

        public final B requiredBrokerProtocolVersion(String str) {
            this.requiredBrokerProtocolVersion = str;
            return (B) self();
        }

        public final B sdkType(SdkType sdkType) {
            this.sdkType = sdkType;
            return (B) self();
        }

        public final B sdkVersion(String str) {
            this.sdkVersion = str;
            return (B) self();
        }

        public abstract B self();

        public String toString() {
            return "CommandParameters.CommandParametersBuilder(platformComponents=" + this.platformComponents + ", oAuth2TokenCache=" + this.oAuth2TokenCache + ", isSharedDevice=" + this.isSharedDevice + ", applicationName=" + this.applicationName + ", applicationVersion=" + this.applicationVersion + ", requiredBrokerProtocolVersion=" + this.requiredBrokerProtocolVersion + ", sdkType=" + this.sdkType + ", sdkVersion=" + this.sdkVersion + ", clientId=" + this.clientId + ", redirectUri=" + this.redirectUri + ", childClientId=" + this.childClientId + ", childRedirectUri=" + this.childRedirectUri + ", powerOptCheckEnabled=" + this.powerOptCheckEnabled + ", callerPackageName=" + this.callerPackageName + ", callerSignature=" + this.callerSignature + ", flightInformation$value=" + this.flightInformation$value + ", correlationId=" + this.correlationId + ", spanContext=" + this.spanContext + ")";
        }
    }

    public CommandParameters(CommandParametersBuilder<?, ?> commandParametersBuilder) {
        PlatformComponents platformComponents = ((CommandParametersBuilder) commandParametersBuilder).platformComponents;
        this.platformComponents = platformComponents;
        if (platformComponents == null) {
            f6.n("platformComponents is marked non-null but is null");
            throw null;
        }
        this.oAuth2TokenCache = ((CommandParametersBuilder) commandParametersBuilder).oAuth2TokenCache;
        this.isSharedDevice = ((CommandParametersBuilder) commandParametersBuilder).isSharedDevice;
        this.applicationName = ((CommandParametersBuilder) commandParametersBuilder).applicationName;
        this.applicationVersion = ((CommandParametersBuilder) commandParametersBuilder).applicationVersion;
        this.requiredBrokerProtocolVersion = ((CommandParametersBuilder) commandParametersBuilder).requiredBrokerProtocolVersion;
        this.sdkType = ((CommandParametersBuilder) commandParametersBuilder).sdkType;
        this.sdkVersion = ((CommandParametersBuilder) commandParametersBuilder).sdkVersion;
        this.clientId = ((CommandParametersBuilder) commandParametersBuilder).clientId;
        this.redirectUri = ((CommandParametersBuilder) commandParametersBuilder).redirectUri;
        this.childClientId = ((CommandParametersBuilder) commandParametersBuilder).childClientId;
        this.childRedirectUri = ((CommandParametersBuilder) commandParametersBuilder).childRedirectUri;
        this.powerOptCheckEnabled = ((CommandParametersBuilder) commandParametersBuilder).powerOptCheckEnabled;
        this.callerPackageName = ((CommandParametersBuilder) commandParametersBuilder).callerPackageName;
        this.callerSignature = ((CommandParametersBuilder) commandParametersBuilder).callerSignature;
        this.flightInformation = ((CommandParametersBuilder) commandParametersBuilder).flightInformation$set ? ((CommandParametersBuilder) commandParametersBuilder).flightInformation$value : Collections.EMPTY_MAP;
        this.correlationId = ((CommandParametersBuilder) commandParametersBuilder).correlationId;
        this.spanContext = ((CommandParametersBuilder) commandParametersBuilder).spanContext;
    }

    public static CommandParametersBuilder<?, ?> builder() {
        return new CommandParametersBuilderImpl();
    }

    public boolean canEqual(CommandParameters commandParameters) {
        return true;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CommandParameters)) {
            return false;
        }
        CommandParameters commandParameters = (CommandParameters) obj;
        if (!commandParameters.canEqual(this) || this.powerOptCheckEnabled != commandParameters.powerOptCheckEnabled) {
            return false;
        }
        String str = this.applicationName;
        String str2 = commandParameters.applicationName;
        if (str == null) {
            if (str2 != null) {
                return false;
            }
        } else if (!str.equals(str2)) {
            return false;
        }
        String str3 = this.applicationVersion;
        String str4 = commandParameters.applicationVersion;
        if (str3 == null) {
            if (str4 != null) {
                return false;
            }
        } else if (!str3.equals(str4)) {
            return false;
        }
        String str5 = this.requiredBrokerProtocolVersion;
        String str6 = commandParameters.requiredBrokerProtocolVersion;
        if (str5 == null) {
            if (str6 != null) {
                return false;
            }
        } else if (!str5.equals(str6)) {
            return false;
        }
        SdkType sdkType = this.sdkType;
        SdkType sdkType2 = commandParameters.sdkType;
        if (sdkType == null) {
            if (sdkType2 != null) {
                return false;
            }
        } else if (!sdkType.equals(sdkType2)) {
            return false;
        }
        String str7 = this.sdkVersion;
        String str8 = commandParameters.sdkVersion;
        if (str7 == null) {
            if (str8 != null) {
                return false;
            }
        } else if (!str7.equals(str8)) {
            return false;
        }
        String str9 = this.clientId;
        String str10 = commandParameters.clientId;
        if (str9 == null) {
            if (str10 != null) {
                return false;
            }
        } else if (!str9.equals(str10)) {
            return false;
        }
        String str11 = this.redirectUri;
        String str12 = commandParameters.redirectUri;
        if (str11 == null) {
            if (str12 != null) {
                return false;
            }
        } else if (!str11.equals(str12)) {
            return false;
        }
        String str13 = this.childClientId;
        String str14 = commandParameters.childClientId;
        if (str13 == null) {
            if (str14 != null) {
                return false;
            }
        } else if (!str13.equals(str14)) {
            return false;
        }
        String str15 = this.childRedirectUri;
        String str16 = commandParameters.childRedirectUri;
        if (str15 == null) {
            if (str16 != null) {
                return false;
            }
        } else if (!str15.equals(str16)) {
            return false;
        }
        String str17 = this.callerPackageName;
        String str18 = commandParameters.callerPackageName;
        if (str17 == null) {
            if (str18 != null) {
                return false;
            }
        } else if (!str17.equals(str18)) {
            return false;
        }
        String str19 = this.callerSignature;
        String str20 = commandParameters.callerSignature;
        if (str19 == null) {
            if (str20 != null) {
                return false;
            }
        } else if (!str19.equals(str20)) {
            return false;
        }
        SerializableSpanContext serializableSpanContext = this.spanContext;
        SerializableSpanContext serializableSpanContext2 = commandParameters.spanContext;
        if (serializableSpanContext == null) {
            return serializableSpanContext2 == null;
        }
        return serializableSpanContext.equals(serializableSpanContext2);
    }

    public final String getApplicationIdentifier() {
        return dj7.k(this.callerPackageName, "/", this.callerSignature);
    }

    public final String getApplicationName() {
        return this.applicationName;
    }

    public final String getApplicationVersion() {
        return this.applicationVersion;
    }

    public final String getChildClientId() {
        return this.childClientId;
    }

    public final String getChildRedirectUri() {
        return this.childRedirectUri;
    }

    public final String getClientId() {
        return this.clientId;
    }

    public final String getCorrelationId() {
        return this.correlationId;
    }

    public final MsalOAuth2TokenCache getOAuth2TokenCache() {
        return this.oAuth2TokenCache;
    }

    public final PlatformComponents getPlatformComponents() {
        return this.platformComponents;
    }

    public final String getRedirectUri() {
        return this.redirectUri;
    }

    public final String getRequiredBrokerProtocolVersion() {
        return this.requiredBrokerProtocolVersion;
    }

    public final SdkType getSdkType() {
        return this.sdkType;
    }

    public final String getSdkVersion() {
        return this.sdkVersion;
    }

    public final boolean hasNestedAppParameters() {
        return (StringUtil.isNullOrEmpty(this.childRedirectUri) && StringUtil.isNullOrEmpty(this.childClientId)) ? false : true;
    }

    public int hashCode() {
        int i = this.powerOptCheckEnabled ? 79 : 97;
        String str = this.applicationName;
        int iHashCode = ((i + 59) * 59) + (str == null ? 43 : str.hashCode());
        String str2 = this.applicationVersion;
        int iHashCode2 = (iHashCode * 59) + (str2 == null ? 43 : str2.hashCode());
        String str3 = this.requiredBrokerProtocolVersion;
        int iHashCode3 = (iHashCode2 * 59) + (str3 == null ? 43 : str3.hashCode());
        SdkType sdkType = this.sdkType;
        int iHashCode4 = (iHashCode3 * 59) + (sdkType == null ? 43 : sdkType.hashCode());
        String str4 = this.sdkVersion;
        int iHashCode5 = (iHashCode4 * 59) + (str4 == null ? 43 : str4.hashCode());
        String str5 = this.clientId;
        int iHashCode6 = (iHashCode5 * 59) + (str5 == null ? 43 : str5.hashCode());
        String str6 = this.redirectUri;
        int iHashCode7 = (iHashCode6 * 59) + (str6 == null ? 43 : str6.hashCode());
        String str7 = this.childClientId;
        int iHashCode8 = (iHashCode7 * 59) + (str7 == null ? 43 : str7.hashCode());
        String str8 = this.childRedirectUri;
        int iHashCode9 = (iHashCode8 * 59) + (str8 == null ? 43 : str8.hashCode());
        String str9 = this.callerPackageName;
        int iHashCode10 = (iHashCode9 * 59) + (str9 == null ? 43 : str9.hashCode());
        String str10 = this.callerSignature;
        int i2 = iHashCode10 * 59;
        int iHashCode11 = str10 == null ? 43 : str10.hashCode();
        SerializableSpanContext serializableSpanContext = this.spanContext;
        return ((i2 + iHashCode11) * 59) + (serializableSpanContext != null ? serializableSpanContext.hashCode() : 43);
    }

    public final boolean isPowerOptCheckEnabled() {
        return this.powerOptCheckEnabled;
    }

    public final boolean isSharedDevice() {
        return this.isSharedDevice;
    }

    public final void setCorrelationId(String str) {
        this.correlationId = str;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class CommandParametersBuilderImpl extends CommandParametersBuilder<CommandParameters, CommandParametersBuilderImpl> {
        @Override // com.microsoft.identity.common.java.commands.parameters.CommandParameters.CommandParametersBuilder
        public final CommandParameters build() {
            return new CommandParameters(this);
        }

        @Override // com.microsoft.identity.common.java.commands.parameters.CommandParameters.CommandParametersBuilder
        public final CommandParametersBuilder self() {
            return this;
        }
    }
}
