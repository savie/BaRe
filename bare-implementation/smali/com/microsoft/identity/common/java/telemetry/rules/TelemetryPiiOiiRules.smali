.class public final Lcom/microsoft/identity/common/java/telemetry/rules/TelemetryPiiOiiRules;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static sInstance:Lcom/microsoft/identity/common/java/telemetry/rules/TelemetryPiiOiiRules;


# instance fields
.field private final oiiPropertiesSet:Ljava/util/HashSet;

.field private final piiPropertiesSet:Ljava/util/HashSet;


# direct methods
.method private constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v6, "Microsoft.MSAL.scope_value"

    .line 5
    .line 6
    const-string v7, "Microsoft.MSAL.claim_request"

    .line 7
    .line 8
    const-string v0, "Microsoft.MSAL.user_id"

    .line 9
    .line 10
    const-string v1, "Microsoft.MSAL.device_guid"

    .line 11
    .line 12
    const-string v2, "Microsoft.MSAL.login_hint"

    .line 13
    .line 14
    const-string v3, "Microsoft.MSAL.error_description"

    .line 15
    .line 16
    const-string v4, "Microsoft.MSAL.query_params"

    .line 17
    .line 18
    const-string v5, "Microsoft.MSAL.redirect_uri"

    .line 19
    .line 20
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v8, "Microsoft.MSAL.caller_app_uuid"

    .line 25
    .line 26
    const-string v9, "Microsoft.MSAL.caller_app_version"

    .line 27
    .line 28
    const-string v1, "Microsoft.MSAL.tenant_id"

    .line 29
    .line 30
    const-string v2, "Microsoft.MSAL.client_id"

    .line 31
    .line 32
    const-string v3, "Microsoft.MSAL.redirect_uri"

    .line 33
    .line 34
    const-string v4, "Microsoft.MSAL.http_path"

    .line 35
    .line 36
    const-string v5, "Microsoft.MSAL.authority"

    .line 37
    .line 38
    const-string v6, "Microsoft.MSAL.idp"

    .line 39
    .line 40
    const-string v7, "Microsoft.MSAL.caller_app_package_name"

    .line 41
    .line 42
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    new-instance v2, Ljava/util/HashSet;

    .line 47
    .line 48
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 53
    .line 54
    .line 55
    iput-object v2, p0, Lcom/microsoft/identity/common/java/telemetry/rules/TelemetryPiiOiiRules;->piiPropertiesSet:Ljava/util/HashSet;

    .line 56
    .line 57
    new-instance v0, Ljava/util/HashSet;

    .line 58
    .line 59
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/microsoft/identity/common/java/telemetry/rules/TelemetryPiiOiiRules;->oiiPropertiesSet:Ljava/util/HashSet;

    .line 67
    .line 68
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/microsoft/identity/common/java/telemetry/rules/TelemetryPiiOiiRules;
    .locals 2

    .line 1
    const-class v0, Lcom/microsoft/identity/common/java/telemetry/rules/TelemetryPiiOiiRules;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/java/telemetry/rules/TelemetryPiiOiiRules;->sInstance:Lcom/microsoft/identity/common/java/telemetry/rules/TelemetryPiiOiiRules;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/microsoft/identity/common/java/telemetry/rules/TelemetryPiiOiiRules;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/microsoft/identity/common/java/telemetry/rules/TelemetryPiiOiiRules;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/microsoft/identity/common/java/telemetry/rules/TelemetryPiiOiiRules;->sInstance:Lcom/microsoft/identity/common/java/telemetry/rules/TelemetryPiiOiiRules;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/microsoft/identity/common/java/telemetry/rules/TelemetryPiiOiiRules;->sInstance:Lcom/microsoft/identity/common/java/telemetry/rules/TelemetryPiiOiiRules;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method


# virtual methods
.method public final isPiiOrOii(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/common/java/telemetry/rules/TelemetryPiiOiiRules;->piiPropertiesSet:Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    :goto_0
    if-nez v0, :cond_3

    .line 17
    .line 18
    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    move p0, v1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/telemetry/rules/TelemetryPiiOiiRules;->oiiPropertiesSet:Ljava/util/HashSet;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    :goto_1
    if-eqz p0, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    return v1

    .line 36
    :cond_3
    :goto_2
    const/4 p0, 0x1

    .line 37
    return p0
.end method
