.class public Lcom/microsoft/identity/common/logging/Logger;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final INSTANCE:Lcom/microsoft/identity/common/logging/Logger;

.field public static final synthetic a:I = 0x0

.field private static sAllowLogcat:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/logging/Logger;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/microsoft/identity/common/logging/Logger;->INSTANCE:Lcom/microsoft/identity/common/logging/Logger;

    .line 7
    .line 8
    invoke-static {}, Lcom/microsoft/identity/common/logging/Logger;->setAndroidLogger()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic access$000()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/microsoft/identity/common/logging/Logger;->sAllowLogcat:Z

    .line 2
    .line 3
    return v0
.end method

.method public static getInstance()Lcom/microsoft/identity/common/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/logging/Logger;->INSTANCE:Lcom/microsoft/identity/common/logging/Logger;

    .line 2
    .line 3
    return-object v0
.end method

.method public static setAllowLogcat(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/microsoft/identity/common/logging/Logger;->sAllowLogcat:Z

    .line 2
    .line 3
    return-void
.end method

.method public static setAndroidLogger()V
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/logging/Logger$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ANDROID_LOGCAT_LOGGER"

    .line 7
    .line 8
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->setLogger(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/ILoggerCallback;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "Android "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/microsoft/identity/common/java/logging/Logger;->setPlatformString(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static setExternalLogger(Lcom/microsoft/identity/common/logging/ILoggerCallback;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/logging/Logger$2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/logging/Logger$2;-><init>(Lcom/microsoft/identity/common/logging/ILoggerCallback;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "ANDROID_EXTERNAL_LOGGER"

    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->setLogger(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/ILoggerCallback;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
