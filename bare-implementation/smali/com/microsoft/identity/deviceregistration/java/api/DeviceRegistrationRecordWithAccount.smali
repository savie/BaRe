.class public Lcom/microsoft/identity/deviceregistration/java/api/DeviceRegistrationRecordWithAccount;
.super Lcom/microsoft/identity/deviceregistration/java/api/DeviceRegistrationRecord;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mAccountName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p2

    .line 3
    move-object v2, p3

    .line 4
    move-object v3, p4

    .line 5
    move v4, p5

    .line 6
    move v5, p6

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/microsoft/identity/deviceregistration/java/api/DeviceRegistrationRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    iput-object p1, v0, Lcom/microsoft/identity/deviceregistration/java/api/DeviceRegistrationRecordWithAccount;->mAccountName:Ljava/lang/String;

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string p1, "deviceId is marked non-null but is null"

    .line 21
    .line 22
    invoke-static {p1}, Lf6;->n(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0

    .line 26
    :cond_1
    const-string p1, "tenantId is marked non-null but is null"

    .line 27
    .line 28
    invoke-static {p1}, Lf6;->n(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_2
    const-string p1, "accountName is marked non-null but is null"

    .line 33
    .line 34
    invoke-static {p1}, Lf6;->n(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/deviceregistration/java/api/DeviceRegistrationRecordWithAccount;->mAccountName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
