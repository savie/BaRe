.class public final Lcom/microsoft/identity/client/SignInParameters;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final callback:Lcom/microsoft/identity/client/AuthenticationCallback;

.field private final scopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lut5;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lcom/microsoft/identity/client/SignInParameters;->activity:Landroid/app/Activity;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/microsoft/identity/client/SignInParameters;->scopes:Ljava/util/List;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/microsoft/identity/client/SignInParameters;->callback:Lcom/microsoft/identity/client/AuthenticationCallback;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const-string p0, "callback is marked non-null but is null"

    .line 19
    .line 20
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :cond_1
    const-string p0, "scopes is marked non-null but is null"

    .line 25
    .line 26
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :cond_2
    const-string p0, "activity is marked non-null but is null"

    .line 31
    .line 32
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/microsoft/identity/client/SignInParameters;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/microsoft/identity/client/SignInParameters;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/microsoft/identity/client/SignInParameters;->activity:Landroid/app/Activity;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/microsoft/identity/client/SignInParameters;->activity:Landroid/app/Activity;

    .line 16
    .line 17
    if-nez v3, :cond_2

    .line 18
    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_3

    .line 27
    .line 28
    :goto_0
    return v2

    .line 29
    :cond_3
    iget-object v1, p1, Lcom/microsoft/identity/client/SignInParameters;->scopes:Ljava/util/List;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/microsoft/identity/client/SignInParameters;->scopes:Ljava/util/List;

    .line 32
    .line 33
    if-nez v3, :cond_4

    .line 34
    .line 35
    if-eqz v1, :cond_5

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_5

    .line 43
    .line 44
    :goto_1
    return v2

    .line 45
    :cond_5
    iget-object p1, p1, Lcom/microsoft/identity/client/SignInParameters;->callback:Lcom/microsoft/identity/client/AuthenticationCallback;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/microsoft/identity/client/SignInParameters;->callback:Lcom/microsoft/identity/client/AuthenticationCallback;

    .line 48
    .line 49
    if-nez p0, :cond_6

    .line 50
    .line 51
    if-eqz p1, :cond_7

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-nez p0, :cond_7

    .line 59
    .line 60
    :goto_2
    return v2

    .line 61
    :cond_7
    return v0
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/SignInParameters;->activity:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCallback()Lcom/microsoft/identity/client/AuthenticationCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/SignInParameters;->callback:Lcom/microsoft/identity/client/AuthenticationCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getScopes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/SignInParameters;->scopes:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    const/16 v0, 0x2b

    .line 2
    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/client/SignInParameters;->activity:Landroid/app/Activity;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    move v1, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    :goto_0
    const/16 v2, 0x3b

    .line 14
    .line 15
    add-int/2addr v1, v2

    .line 16
    mul-int/2addr v1, v2

    .line 17
    add-int/2addr v1, v0

    .line 18
    mul-int/2addr v1, v2

    .line 19
    iget-object v3, p0, Lcom/microsoft/identity/client/SignInParameters;->scopes:Ljava/util/List;

    .line 20
    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    move v3, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    :goto_1
    add-int/2addr v1, v3

    .line 30
    mul-int/2addr v1, v2

    .line 31
    add-int/2addr v1, v0

    .line 32
    mul-int/2addr v1, v2

    .line 33
    iget-object p0, p0, Lcom/microsoft/identity/client/SignInParameters;->callback:Lcom/microsoft/identity/client/AuthenticationCallback;

    .line 34
    .line 35
    if-nez p0, :cond_2

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    :goto_2
    add-int/2addr v1, v0

    .line 43
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SignInParameters(activity="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/microsoft/identity/client/SignInParameters;->activity:Landroid/app/Activity;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", loginHint=null, scopes="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/microsoft/identity/client/SignInParameters;->scopes:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", prompt=null, callback="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/microsoft/identity/client/SignInParameters;->callback:Lcom/microsoft/identity/client/AuthenticationCallback;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p0, ")"

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
