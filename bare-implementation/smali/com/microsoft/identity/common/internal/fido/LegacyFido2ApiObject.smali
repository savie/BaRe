.class public final Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiObject;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final assertionCallback:Lmt3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmt3;"
        }
    .end annotation
.end field

.field private final errorCallback:Lmt3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmt3;"
        }
    .end annotation
.end field

.field private final pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Lmt3;Lmt3;Landroid/app/PendingIntent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmt3;",
            "Lmt3;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiObject;->assertionCallback:Lmt3;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiObject;->errorCallback:Lmt3;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiObject;->pendingIntent:Landroid/app/PendingIntent;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiObject;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiObject;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiObject;->assertionCallback:Lmt3;

    .line 13
    .line 14
    iget-object v2, p1, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiObject;->assertionCallback:Lmt3;

    .line 15
    .line 16
    if-eq v0, v2, :cond_2

    .line 17
    .line 18
    return v1

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiObject;->errorCallback:Lmt3;

    .line 20
    .line 21
    iget-object v2, p1, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiObject;->errorCallback:Lmt3;

    .line 22
    .line 23
    if-eq v0, v2, :cond_3

    .line 24
    .line 25
    return v1

    .line 26
    :cond_3
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiObject;->pendingIntent:Landroid/app/PendingIntent;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiObject;->pendingIntent:Landroid/app/PendingIntent;

    .line 29
    .line 30
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_4

    .line 35
    .line 36
    :goto_0
    return v1

    .line 37
    :cond_4
    :goto_1
    const/4 p0, 0x1

    .line 38
    return p0
.end method

.method public final getAssertionCallback()Lmt3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmt3;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiObject;->assertionCallback:Lmt3;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getErrorCallback()Lmt3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmt3;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiObject;->errorCallback:Lmt3;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPendingIntent()Landroid/app/PendingIntent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiObject;->pendingIntent:Landroid/app/PendingIntent;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiObject;->assertionCallback:Lmt3;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiObject;->errorCallback:Lmt3;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiObject;->pendingIntent:Landroid/app/PendingIntent;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/PendingIntent;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    add-int/2addr p0, v1

    .line 25
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "LegacyFido2ApiObject(assertionCallback="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiObject;->assertionCallback:Lmt3;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", errorCallback="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiObject;->errorCallback:Lmt3;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", pendingIntent="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/fido/LegacyFido2ApiObject;->pendingIntent:Landroid/app/PendingIntent;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 p0, 0x29

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
