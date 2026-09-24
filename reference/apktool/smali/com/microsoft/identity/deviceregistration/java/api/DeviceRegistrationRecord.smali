.class public Lcom/microsoft/identity/deviceregistration/java/api/DeviceRegistrationRecord;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/deviceregistration/java/api/IDeviceRegistrationRecord;


# static fields
.field public static final TAG:Ljava/lang/String; = "DeviceRegistrationRecord"


# instance fields
.field private final mDeviceId:Ljava/lang/String;

.field private final mIsRegisteredWithStrongKeys:Z

.field private final mSharedDevice:Z

.field private final mTenantId:Ljava/lang/String;

.field private final mUpn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lcom/microsoft/identity/deviceregistration/java/api/DeviceRegistrationRecord;->mTenantId:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/microsoft/identity/deviceregistration/java/api/DeviceRegistrationRecord;->mUpn:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/microsoft/identity/deviceregistration/java/api/DeviceRegistrationRecord;->mDeviceId:Ljava/lang/String;

    .line 14
    .line 15
    iput-boolean p4, p0, Lcom/microsoft/identity/deviceregistration/java/api/DeviceRegistrationRecord;->mSharedDevice:Z

    .line 16
    .line 17
    iput-boolean p5, p0, Lcom/microsoft/identity/deviceregistration/java/api/DeviceRegistrationRecord;->mIsRegisteredWithStrongKeys:Z

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string p0, "deviceId is marked non-null but is null"

    .line 21
    .line 22
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0

    .line 26
    :cond_1
    const-string p0, "tenantId is marked non-null but is null"

    .line 27
    .line 28
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/deviceregistration/java/api/DeviceRegistrationRecord;->mDeviceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTenantId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/deviceregistration/java/api/DeviceRegistrationRecord;->mTenantId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getUpn()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/deviceregistration/java/api/DeviceRegistrationRecord;->mUpn:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public isRegisteredWithStrongKeys()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/deviceregistration/java/api/DeviceRegistrationRecord;->mIsRegisteredWithStrongKeys:Z

    .line 2
    .line 3
    return p0
.end method

.method public isSharedDevice()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/deviceregistration/java/api/DeviceRegistrationRecord;->mSharedDevice:Z

    .line 2
    .line 3
    return p0
.end method
