.class public Lcom/microsoft/identity/client/configuration/LoggerConfiguration;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private mLogLevel:Lcom/microsoft/identity/client/Logger$LogLevel;
    .annotation runtime Ly77;
        value = "log_level"
    .end annotation
.end field

.field private mLogcatEnabled:Z
    .annotation runtime Ly77;
        value = "logcat_enabled"
    .end annotation
.end field

.field private mPiiEnabled:Z
    .annotation runtime Ly77;
        value = "pii_enabled"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getLogLevel()Lcom/microsoft/identity/client/Logger$LogLevel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/configuration/LoggerConfiguration;->mLogLevel:Lcom/microsoft/identity/client/Logger$LogLevel;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isLogcatEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/client/configuration/LoggerConfiguration;->mLogcatEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isPiiEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/client/configuration/LoggerConfiguration;->mPiiEnabled:Z

    .line 2
    .line 3
    return p0
.end method
