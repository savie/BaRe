.class public final Lcom/microsoft/identity/common/java/exception/UnsupportedBrokerException;
.super Lcom/microsoft/identity/common/java/exception/BaseException;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 24
    const-string v0, "unsupported_broker_version"

    const-string v1, "Please update Intune Company Portal and/or Microsoft Authenticator to the latest version."

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/identity/common/java/exception/UnsupportedBrokerException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p2, p3, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string p0, "errorCode is marked non-null but is null"

    .line 11
    .line 12
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    throw p0

    .line 17
    :cond_1
    const-string p0, "activeBrokerPackageName is marked non-null but is null"

    .line 18
    .line 19
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    throw p0
.end method
