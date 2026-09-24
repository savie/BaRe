.class public Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private handleNullTaskAffinity:Ljava/lang/Boolean;
    .annotation runtime Ly77;
        value = "handle_null_taskaffinity"
    .end annotation
.end field

.field private isAuthorizationInCurrentTask:Ljava/lang/Boolean;
    .annotation runtime Ly77;
        value = "authorization_in_current_task"
    .end annotation
.end field

.field private mAccountMode:Lcom/microsoft/identity/client/configuration/AccountMode;
    .annotation runtime Ly77;
        value = "account_mode"
    .end annotation
.end field

.field private transient mAppContext:Landroid/content/Context;

.field private mAuthorities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/authorities/Authority;",
            ">;"
        }
    .end annotation

    .annotation runtime Ly77;
        value = "authorities"
    .end annotation
.end field

.field private mAuthorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;
    .annotation runtime Ly77;
        value = "authorization_user_agent"
    .end annotation
.end field

.field private mBrowserSafeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;",
            ">;"
        }
    .end annotation

    .annotation runtime Ly77;
        value = "browser_safelist"
    .end annotation
.end field

.field private mClientCapabilities:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "client_capabilities"
    .end annotation
.end field

.field private mClientId:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "client_id"
    .end annotation
.end field

.field private mEnvironment:Lcom/microsoft/identity/common/java/authorities/Environment;
    .annotation runtime Ly77;
        value = "environment"
    .end annotation
.end field

.field private mHttpConfiguration:Lcom/microsoft/identity/client/configuration/HttpConfiguration;
    .annotation runtime Ly77;
        value = "http"
    .end annotation
.end field

.field private transient mIsSharedDevice:Z

.field private mLoggerConfiguration:Lcom/microsoft/identity/client/configuration/LoggerConfiguration;
    .annotation runtime Ly77;
        value = "logging"
    .end annotation
.end field

.field private mMultipleCloudsSupported:Ljava/lang/Boolean;
    .annotation runtime Ly77;
        value = "multiple_clouds_supported"
    .end annotation
.end field

.field private transient mOAuth2TokenCache:Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

.field private mPreferredBrowser:Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;
    .annotation runtime Ly77;
        value = "preferred_browser"
    .end annotation
.end field

.field private mRedirectUri:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "redirect_uri"
    .end annotation
.end field

.field private mRequiredBrokerProtocolVersion:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "minimum_required_broker_protocol_version"
    .end annotation
.end field

.field private mTelemetryConfiguration:Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;
    .annotation runtime Ly77;
        value = "telemetry"
    .end annotation
.end field

.field private mUseBroker:Ljava/lang/Boolean;
    .annotation runtime Ly77;
        value = "broker_redirect_uri_registered"
    .end annotation
.end field

.field private powerOptCheckEnabled:Ljava/lang/Boolean;
    .annotation runtime Ly77;
        value = "power_opt_check_for_network_req_enabled"
    .end annotation
.end field

.field private webViewZoomControlsEnabled:Ljava/lang/Boolean;
    .annotation runtime Ly77;
        value = "web_view_zoom_controls_enabled"
    .end annotation
.end field

.field private webViewZoomEnabled:Ljava/lang/Boolean;
    .annotation runtime Ly77;
        value = "web_view_zoom_enabled"
    .end annotation
.end field

.field private webauthnCapable:Ljava/lang/Boolean;
    .annotation runtime Ly77;
        value = "webauthn_capable"
    .end annotation
.end field

.field private webauthnVersion:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "webauthn_version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mIsSharedDevice:Z

    .line 6
    .line 7
    return-void
.end method

.method private isValidAuthenticatorRedirectUri()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAppContext:Landroid/content/Context;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "com.azure.authenticator"

    .line 9
    .line 10
    const/16 v3, 0x40

    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    array-length v2, v1

    .line 23
    if-lez v2, :cond_2

    .line 24
    .line 25
    aget-object v1, v1, v0

    .line 26
    .line 27
    const-string v2, "SHA-512"

    .line 28
    .line 29
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/4 v3, 0x2

    .line 45
    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v4, "Gu8CuaYmSV5CHWd6dz3tGPXIE+YTalCVIXi5lEBXpvUgsMKoHbU9Rqou3WNRNU1tsz8pvEADTCCJ5f02fbw9qw=="

    .line 50
    .line 51
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-nez v4, :cond_0

    .line 56
    .line 57
    const-string v4, "pdAtoxfsEwbpQsIaua5Uobl5AQEjqt40aPXI7UY1lIW0NTmg0G4jHQ5T5mujSjjU06q4mEHs5hb6z/Mr0PNlmQ=="

    .line 58
    .line 59
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p0

    .line 67
    goto :goto_1

    .line 68
    :catch_1
    move-exception p0

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    :goto_0
    const-string v2, "SHA"

    .line 71
    .line 72
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    new-instance v2, Landroid/net/Uri$Builder;

    .line 92
    .line 93
    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v3, "msauth"

    .line 97
    .line 98
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    iget-object v3, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAppContext:Landroid/content/Context;

    .line 103
    .line 104
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRedirectUri:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-nez v1, :cond_1

    .line 131
    .line 132
    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRedirectUri:Ljava/lang/String;

    .line 133
    .line 134
    const-string v2, "urn:ietf:wg:oauth:2.0:oob"

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-nez v1, :cond_1

    .line 141
    .line 142
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRedirectUri:Ljava/lang/String;

    .line 143
    .line 144
    const-string v1, "msauth://Microsoft.AAD.BrokerPlugin"

    .line 145
    .line 146
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    if-eqz p0, :cond_2

    .line 151
    .line 152
    :cond_1
    const/4 p0, 0x1

    .line 153
    return p0

    .line 154
    :cond_2
    return v0

    .line 155
    :goto_1
    const-string v1, "Unexpected error in getting package info/signature for Authenticator"

    .line 156
    .line 157
    const-string v2, "PublicClientApplicationConfiguration:isValidAuthenticatorRedirectUri"

    .line 158
    .line 159
    invoke-static {p0, v2, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    return v0
.end method


# virtual methods
.method public final authorizationInCurrentTask()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->isAuthorizationInCurrentTask:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public checkIntentFilterAddedToAppManifestForBrokerFlow()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/client/exception/MsalClientException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAuthorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 2
    .line 3
    sget-object v1, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;->DEFAULT:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    sget-object v1, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;->BROWSER:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 10
    .line 11
    if-ne v0, v1, :cond_6

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAppContext:Landroid/content/Context;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRedirectUri:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    if-nez v4, :cond_1

    .line 22
    .line 23
    move v5, v2

    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :cond_1
    new-instance v5, Landroid/content/Intent;

    .line 27
    .line 28
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v6, "android.intent.action.VIEW"

    .line 32
    .line 33
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    const-string v6, "android.intent.category.DEFAULT"

    .line 37
    .line 38
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    const-string v6, "android.intent.category.BROWSABLE"

    .line 42
    .line 43
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    const/16 v6, 0x40

    .line 54
    .line 55
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    move v5, v2

    .line 64
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_4

    .line 69
    .line 70
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 75
    .line 76
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 77
    .line 78
    const-class v6, Lcom/microsoft/identity/client/BrowserTabActivity;

    .line 79
    .line 80
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-static {}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->getInstance()Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->isAuthorizationInCurrentTask()Z

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    if-eqz v7, :cond_2

    .line 93
    .line 94
    const-class v6, Lcom/microsoft/identity/client/CurrentTaskBrowserTabActivity;

    .line 95
    .line 96
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    :cond_2
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-eqz v6, :cond_3

    .line 107
    .line 108
    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-eqz v6, :cond_3

    .line 119
    .line 120
    const/4 v5, 0x1

    .line 121
    goto :goto_0

    .line 122
    :cond_3
    iget-object p0, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 123
    .line 124
    const-string v0, "Another application "

    .line 125
    .line 126
    const-string v2, " is listening for the URL scheme "

    .line 127
    .line 128
    invoke-static {v0, p0, v2, v1}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 133
    .line 134
    const-string v0, "PublicClientApplicationConfiguration:validateCustomTabRedirectActivity"

    .line 135
    .line 136
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    new-instance p0, Lcom/microsoft/identity/client/exception/MsalClientException;

    .line 140
    .line 141
    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 142
    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v2, "More than one app is listening for the URL scheme defined for BrowserTabActivity in the AndroidManifest. The package name of this other app is: "

    .line 146
    .line 147
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    const-string v1, "multiple_apps_listening_url_scheme"

    .line 158
    .line 159
    invoke-direct {p0, v1, v0, v3}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    .line 161
    .line 162
    throw p0

    .line 163
    :cond_4
    :goto_1
    if-nez v5, :cond_6

    .line 164
    .line 165
    invoke-static {}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->getInstance()Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->isAuthorizationInCurrentTask()Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_5

    .line 174
    .line 175
    const-string v0, "CurrentTaskBrowserTabActivity"

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_5
    const-string v0, "BrowserTabActivity"

    .line 179
    .line 180
    :goto_2
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRedirectUri:Ljava/lang/String;

    .line 181
    .line 182
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    new-instance v1, Lcom/microsoft/identity/client/exception/MsalClientException;

    .line 187
    .line 188
    const-string v2, " is missing.  Please make sure you have the following activity in your AndroidManifest.xml \n\n<activity android:name=\"com.microsoft.identity.client."

    .line 189
    .line 190
    const-string v4, "\">\n\t<intent-filter>\n\t\t<action android:name=\"android.intent.action.VIEW\" />\n\t\t<category android:name=\"android.intent.category.DEFAULT\" />\n\t\t<category android:name=\"android.intent.category.BROWSABLE\" />\n\t\t<data\n\t\t\tandroid:host=\""

    .line 191
    .line 192
    const-string v5, "Intent filter for: "

    .line 193
    .line 194
    invoke-static {v5, v0, v2, v0, v4}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v2, "\"\n\t\t\tandroid:path=\""

    .line 206
    .line 207
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v2, "\"\n\t\t\tandroid:scheme=\""

    .line 218
    .line 219
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string p0, "\" />\n\t</intent-filter>\n</activity>\n"

    .line 230
    .line 231
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    const-string v0, "app_manifest_validation_error"

    .line 239
    .line 240
    invoke-direct {v1, v0, p0, v3}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    .line 242
    .line 243
    throw v1

    .line 244
    :cond_6
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mUseBroker:Ljava/lang/Boolean;

    .line 245
    .line 246
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-nez v0, :cond_7

    .line 251
    .line 252
    goto/16 :goto_4

    .line 253
    .line 254
    :cond_7
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAppContext:Landroid/content/Context;

    .line 255
    .line 256
    if-eqz v0, :cond_8

    .line 257
    .line 258
    const-string v1, "com.azure.authenticator"

    .line 259
    .line 260
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-eqz v0, :cond_8

    .line 269
    .line 270
    invoke-direct {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->isValidAuthenticatorRedirectUri()Z

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    if-eqz v0, :cond_8

    .line 275
    .line 276
    goto/16 :goto_4

    .line 277
    .line 278
    :cond_8
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAppContext:Landroid/content/Context;

    .line 279
    .line 280
    if-eqz v0, :cond_a

    .line 281
    .line 282
    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRedirectUri:Ljava/lang/String;

    .line 283
    .line 284
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    const-string v4, "msauth://"

    .line 289
    .line 290
    const-string v5, "/"

    .line 291
    .line 292
    invoke-static {v4, v0, v5}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    if-eqz v1, :cond_9

    .line 297
    .line 298
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    if-eqz v0, :cond_9

    .line 303
    .line 304
    goto :goto_3

    .line 305
    :cond_9
    const-string v0, "The app is still using legacy MSAL redirect uri. Switch to MSAL local auth.  For brokered auth, the redirect URI is expected to conform to \'msauth://<authority>/.*\' where the authority in that uri is the package name of the app. This package name is listed as \'applicationId\' in the build.gradle file."

    .line 306
    .line 307
    const-string v1, "PublicClientApplicationConfiguration:checkIntentFilterAddedToAppManifestForBrokerFlow"

    .line 308
    .line 309
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 313
    .line 314
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mUseBroker:Ljava/lang/Boolean;

    .line 315
    .line 316
    return-void

    .line 317
    :cond_a
    :goto_3
    const-string v0, "The redirect URI in the configuration file doesn\'t match with the one generated with package name and signature hash. Please verify the uri in the config file and your app registration in Azure portal.We expected \'"

    .line 318
    .line 319
    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAppContext:Landroid/content/Context;

    .line 320
    .line 321
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    :try_start_0
    iget-object v4, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAppContext:Landroid/content/Context;

    .line 326
    .line 327
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    invoke-static {v4, v1}, Lcom/microsoft/identity/common/internal/broker/PackageHelper;->getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    invoke-static {v4}, Lcom/microsoft/identity/common/internal/broker/PackageHelper;->getSignatures(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    array-length v5, v4

    .line 340
    if-lez v5, :cond_c

    .line 341
    .line 342
    aget-object v2, v4, v2

    .line 343
    .line 344
    const-string v4, "SHA"

    .line 345
    .line 346
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 347
    .line 348
    .line 349
    move-result-object v4

    .line 350
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    const/4 v4, 0x2

    .line 362
    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    new-instance v4, Landroid/net/Uri$Builder;

    .line 367
    .line 368
    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 369
    .line 370
    .line 371
    const-string v5, "msauth"

    .line 372
    .line 373
    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 374
    .line 375
    .line 376
    move-result-object v4

    .line 377
    invoke-virtual {v4, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRedirectUri:Ljava/lang/String;

    .line 390
    .line 391
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v4

    .line 395
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    if-eqz v2, :cond_b

    .line 400
    .line 401
    goto :goto_4

    .line 402
    :cond_b
    new-instance v2, Lcom/microsoft/identity/client/exception/MsalClientException;

    .line 403
    .line 404
    const-string v4, "redirect_uri_validation_error"

    .line 405
    .line 406
    new-instance v5, Ljava/lang/StringBuilder;

    .line 407
    .line 408
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    const-string v0, "\' and we received \'"

    .line 419
    .line 420
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRedirectUri:Ljava/lang/String;

    .line 424
    .line 425
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    const-string p0, "\'."

    .line 429
    .line 430
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object p0

    .line 437
    invoke-direct {v2, v4, p0, v3}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 438
    .line 439
    .line 440
    throw v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :cond_c
    :goto_4
    return-void

    .line 442
    :catch_0
    move-exception p0

    .line 443
    const-string v0, "PublicClientApplicationConfiguration:verifyRedirectUriWithAppSignature"

    .line 444
    .line 445
    const-string v1, "Unexpected error in verifyRedirectUriWithAppSignature()"

    .line 446
    .line 447
    invoke-static {p0, v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    new-instance v0, Lcom/microsoft/identity/client/exception/MsalClientException;

    .line 451
    .line 452
    const-string v2, "unknown_error"

    .line 453
    .line 454
    invoke-direct {v0, v2, v1, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 455
    .line 456
    .line 457
    throw v0
.end method

.method public final getAccountMode()Lcom/microsoft/identity/client/configuration/AccountMode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAccountMode:Lcom/microsoft/identity/client/configuration/AccountMode;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAppContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAppContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAuthorities()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/authorities/Authority;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAuthorities:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAuthorizationAgent()Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAuthorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBrowserSafeList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mBrowserSafeList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getClientCapabilities()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mClientCapabilities:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getClientId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mClientId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDefaultAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAuthorities:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAuthorities:Ljava/util/List;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-le v0, v2, :cond_2

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/authorities/Authority;->getDefault()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_1
    return-object v1

    .line 39
    :cond_2
    const/4 v0, 0x0

    .line 40
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_3
    return-object v1
.end method

.method public final getEnvironment()Lcom/microsoft/identity/common/java/authorities/Environment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mEnvironment:Lcom/microsoft/identity/common/java/authorities/Environment;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getIsSharedDevice()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mIsSharedDevice:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getLoggerConfiguration()Lcom/microsoft/identity/client/configuration/LoggerConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mLoggerConfiguration:Lcom/microsoft/identity/client/configuration/LoggerConfiguration;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMultipleCloudsSupported()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mMultipleCloudsSupported:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getOAuth2TokenCache()Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mOAuth2TokenCache:Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPreferredBrowser()Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mPreferredBrowser:Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRedirectUri()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRedirectUri:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRequiredBrokerProtocolVersion()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRequiredBrokerProtocolVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUseBroker()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mUseBroker:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getWebauthnVersion()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->webauthnVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isHandleNullTaskAffinityEnabled()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->handleNullTaskAffinity:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isPowerOptCheckForEnabled()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->powerOptCheckEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isWebViewZoomControlsEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->webViewZoomControlsEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isWebViewZoomEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->webViewZoomEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isWebauthnCapable()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->webauthnCapable:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final mergeConfiguration(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mClientId:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mClientId:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mClientId:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRedirectUri:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRedirectUri:Ljava/lang/String;

    .line 14
    .line 15
    :cond_1
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRedirectUri:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAuthorities:Ljava/util/List;

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAuthorities:Ljava/util/List;

    .line 22
    .line 23
    :cond_2
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAuthorities:Ljava/util/List;

    .line 24
    .line 25
    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAuthorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 26
    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAuthorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 30
    .line 31
    :cond_3
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAuthorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 32
    .line 33
    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mEnvironment:Lcom/microsoft/identity/common/java/authorities/Environment;

    .line 34
    .line 35
    if-nez v0, :cond_4

    .line 36
    .line 37
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mEnvironment:Lcom/microsoft/identity/common/java/authorities/Environment;

    .line 38
    .line 39
    :cond_4
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mEnvironment:Lcom/microsoft/identity/common/java/authorities/Environment;

    .line 40
    .line 41
    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mHttpConfiguration:Lcom/microsoft/identity/client/configuration/HttpConfiguration;

    .line 42
    .line 43
    if-nez v0, :cond_5

    .line 44
    .line 45
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mHttpConfiguration:Lcom/microsoft/identity/client/configuration/HttpConfiguration;

    .line 46
    .line 47
    :cond_5
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mHttpConfiguration:Lcom/microsoft/identity/client/configuration/HttpConfiguration;

    .line 48
    .line 49
    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mMultipleCloudsSupported:Ljava/lang/Boolean;

    .line 50
    .line 51
    if-nez v0, :cond_6

    .line 52
    .line 53
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mMultipleCloudsSupported:Ljava/lang/Boolean;

    .line 54
    .line 55
    :cond_6
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mMultipleCloudsSupported:Ljava/lang/Boolean;

    .line 56
    .line 57
    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mUseBroker:Ljava/lang/Boolean;

    .line 58
    .line 59
    if-nez v0, :cond_7

    .line 60
    .line 61
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mUseBroker:Ljava/lang/Boolean;

    .line 62
    .line 63
    :cond_7
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mUseBroker:Ljava/lang/Boolean;

    .line 64
    .line 65
    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRequiredBrokerProtocolVersion:Ljava/lang/String;

    .line 66
    .line 67
    if-nez v0, :cond_8

    .line 68
    .line 69
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRequiredBrokerProtocolVersion:Ljava/lang/String;

    .line 70
    .line 71
    :cond_8
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRequiredBrokerProtocolVersion:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mPreferredBrowser:Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;

    .line 74
    .line 75
    if-nez v0, :cond_9

    .line 76
    .line 77
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mPreferredBrowser:Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;

    .line 78
    .line 79
    :cond_9
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mPreferredBrowser:Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;

    .line 80
    .line 81
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mBrowserSafeList:Ljava/util/List;

    .line 82
    .line 83
    iget-object v1, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mBrowserSafeList:Ljava/util/List;

    .line 84
    .line 85
    if-nez v0, :cond_a

    .line 86
    .line 87
    iput-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mBrowserSafeList:Ljava/util/List;

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_a
    if-eqz v1, :cond_b

    .line 91
    .line 92
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    .line 94
    .line 95
    :cond_b
    :goto_0
    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAccountMode:Lcom/microsoft/identity/client/configuration/AccountMode;

    .line 96
    .line 97
    sget-object v1, Lcom/microsoft/identity/client/configuration/AccountMode;->MULTIPLE:Lcom/microsoft/identity/client/configuration/AccountMode;

    .line 98
    .line 99
    if-eq v0, v1, :cond_c

    .line 100
    .line 101
    if-eqz v0, :cond_c

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_c
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAccountMode:Lcom/microsoft/identity/client/configuration/AccountMode;

    .line 105
    .line 106
    :goto_1
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAccountMode:Lcom/microsoft/identity/client/configuration/AccountMode;

    .line 107
    .line 108
    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mClientCapabilities:Ljava/lang/String;

    .line 109
    .line 110
    if-nez v0, :cond_d

    .line 111
    .line 112
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mClientCapabilities:Ljava/lang/String;

    .line 113
    .line 114
    :cond_d
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mClientCapabilities:Ljava/lang/String;

    .line 115
    .line 116
    iget-boolean v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mIsSharedDevice:Z

    .line 117
    .line 118
    const/4 v1, 0x1

    .line 119
    if-ne v0, v1, :cond_e

    .line 120
    .line 121
    iget-boolean v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mIsSharedDevice:Z

    .line 122
    .line 123
    :cond_e
    iput-boolean v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mIsSharedDevice:Z

    .line 124
    .line 125
    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mLoggerConfiguration:Lcom/microsoft/identity/client/configuration/LoggerConfiguration;

    .line 126
    .line 127
    if-nez v0, :cond_f

    .line 128
    .line 129
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mLoggerConfiguration:Lcom/microsoft/identity/client/configuration/LoggerConfiguration;

    .line 130
    .line 131
    :cond_f
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mLoggerConfiguration:Lcom/microsoft/identity/client/configuration/LoggerConfiguration;

    .line 132
    .line 133
    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->webViewZoomControlsEnabled:Ljava/lang/Boolean;

    .line 134
    .line 135
    if-nez v0, :cond_10

    .line 136
    .line 137
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->webViewZoomControlsEnabled:Ljava/lang/Boolean;

    .line 138
    .line 139
    :cond_10
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->webViewZoomControlsEnabled:Ljava/lang/Boolean;

    .line 140
    .line 141
    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->webViewZoomEnabled:Ljava/lang/Boolean;

    .line 142
    .line 143
    if-nez v0, :cond_11

    .line 144
    .line 145
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->webViewZoomEnabled:Ljava/lang/Boolean;

    .line 146
    .line 147
    :cond_11
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->webViewZoomEnabled:Ljava/lang/Boolean;

    .line 148
    .line 149
    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->powerOptCheckEnabled:Ljava/lang/Boolean;

    .line 150
    .line 151
    if-nez v0, :cond_12

    .line 152
    .line 153
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->powerOptCheckEnabled:Ljava/lang/Boolean;

    .line 154
    .line 155
    :cond_12
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->powerOptCheckEnabled:Ljava/lang/Boolean;

    .line 156
    .line 157
    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->handleNullTaskAffinity:Ljava/lang/Boolean;

    .line 158
    .line 159
    if-nez v0, :cond_13

    .line 160
    .line 161
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->handleNullTaskAffinity:Ljava/lang/Boolean;

    .line 162
    .line 163
    :cond_13
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->handleNullTaskAffinity:Ljava/lang/Boolean;

    .line 164
    .line 165
    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->isAuthorizationInCurrentTask:Ljava/lang/Boolean;

    .line 166
    .line 167
    if-nez v0, :cond_14

    .line 168
    .line 169
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->isAuthorizationInCurrentTask:Ljava/lang/Boolean;

    .line 170
    .line 171
    :cond_14
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->isAuthorizationInCurrentTask:Ljava/lang/Boolean;

    .line 172
    .line 173
    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->webauthnCapable:Ljava/lang/Boolean;

    .line 174
    .line 175
    if-nez v0, :cond_15

    .line 176
    .line 177
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->webauthnCapable:Ljava/lang/Boolean;

    .line 178
    .line 179
    :cond_15
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->webauthnCapable:Ljava/lang/Boolean;

    .line 180
    .line 181
    iget-object p1, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->webauthnVersion:Ljava/lang/String;

    .line 182
    .line 183
    if-nez p1, :cond_16

    .line 184
    .line 185
    iget-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->webauthnVersion:Ljava/lang/String;

    .line 186
    .line 187
    :cond_16
    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->webauthnVersion:Ljava/lang/String;

    .line 188
    .line 189
    return-void
.end method

.method public final setAppContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAppContext:Landroid/content/Context;

    .line 2
    .line 3
    return-void
.end method

.method public final setIsSharedDevice(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mIsSharedDevice:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setOAuth2TokenCache(Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mOAuth2TokenCache:Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 2
    .line 3
    return-void
.end method

.method public validateConfiguration()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRedirectUri:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAppContext:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v4, "com.azure.authenticator"

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->isValidAuthenticatorRedirectUri()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    xor-int/2addr v0, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    move v0, v2

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->errorPII(Ljava/lang/NullPointerException;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    move v0, v3

    .line 64
    :goto_0
    if-nez v0, :cond_10

    .line 65
    .line 66
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mClientId:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_f

    .line 73
    .line 74
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAuthorities:Ljava/util/List;

    .line 75
    .line 76
    if-eqz v0, :cond_6

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-le v0, v3, :cond_6

    .line 83
    .line 84
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAuthorities:Ljava/util/List;

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_3

    .line 95
    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/authorities/Authority;->getDefault()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_2

    .line 107
    .line 108
    add-int/lit8 v2, v2, 0x1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    if-eqz v2, :cond_5

    .line 112
    .line 113
    if-gt v2, v3, :cond_4

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_4
    const-string p0, "More than one authority in your configuration is marked as default.  Only one authority may be default."

    .line 117
    .line 118
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_5
    const-string p0, "One authority in your configuration must be marked as default."

    .line 123
    .line 124
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->handleNullTaskAffinity:Ljava/lang/Boolean;

    .line 129
    .line 130
    if-eqz v0, :cond_8

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_8

    .line 137
    .line 138
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAppContext:Landroid/content/Context;

    .line 139
    .line 140
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAppContext:Landroid/content/Context;

    .line 145
    .line 146
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    const-string v2, "android.permission.REORDER_TASKS"

    .line 151
    .line 152
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-nez v0, :cond_7

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_7
    const-string p0, "You requested that we handle null taskAffinity but your manifest does not include the REORDER_TASKS permission"

    .line 160
    .line 161
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAuthorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 166
    .line 167
    sget-object v1, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;->WEBVIEW:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-nez v0, :cond_a

    .line 174
    .line 175
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mBrowserSafeList:Ljava/util/List;

    .line 176
    .line 177
    if-eqz v0, :cond_9

    .line 178
    .line 179
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-nez v0, :cond_9

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_9
    const-string p0, "Null browser safe list configured."

    .line 187
    .line 188
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :cond_a
    :goto_4
    iget-object p0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAuthorities:Ljava/util/List;

    .line 193
    .line 194
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    :cond_b
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_e

    .line 203
    .line 204
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    check-cast v0, Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 209
    .line 210
    instance-of v1, v0, Lcom/microsoft/identity/common/java/authorities/UnknownAuthority;

    .line 211
    .line 212
    if-nez v1, :cond_d

    .line 213
    .line 214
    instance-of v1, v0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;

    .line 215
    .line 216
    if-eqz v1, :cond_b

    .line 217
    .line 218
    check-cast v0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;

    .line 219
    .line 220
    iget-object v0, v0, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->mAudience:Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;

    .line 221
    .line 222
    if-eqz v0, :cond_b

    .line 223
    .line 224
    instance-of v0, v0, Lcom/microsoft/identity/common/internal/authorities/UnknownAudience;

    .line 225
    .line 226
    if-nez v0, :cond_c

    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_c
    const-string p0, "Unrecognized audience type for AzureActiveDirectoryAuthority -- null, invalid, or unknown type specified"

    .line 230
    .line 231
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :cond_d
    const-string p0, "Unrecognized authority type -- null, invalid or unknown type specified."

    .line 236
    .line 237
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    :cond_e
    return-void

    .line 241
    :cond_f
    const-string p0, "client_id cannot be null.  Invalid configuration."

    .line 242
    .line 243
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    return-void

    .line 247
    :cond_10
    const-string p0, "Invalid, null, or malformed redirect_uri supplied"

    .line 248
    .line 249
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    return-void
.end method
