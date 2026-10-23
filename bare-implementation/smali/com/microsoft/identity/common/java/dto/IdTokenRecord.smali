.class public Lcom/microsoft/identity/common/java/dto/IdTokenRecord;
.super Lcom/microsoft/identity/common/java/dto/Credential;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private mAuthority:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "authority"
    .end annotation
.end field

.field private mRealm:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "realm"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_6

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/java/dto/Credential;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    return v1

    .line 26
    :cond_2
    check-cast p1, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;->mRealm:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v3, p1, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;->mRealm:Ljava/lang/String;

    .line 31
    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_4

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    if-eqz v3, :cond_4

    .line 42
    .line 43
    :goto_0
    return v1

    .line 44
    :cond_4
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;->mAuthority:Ljava/lang/String;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;->mAuthority:Ljava/lang/String;

    .line 47
    .line 48
    if-eqz p0, :cond_5

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    return p0

    .line 55
    :cond_5
    if-nez p1, :cond_6

    .line 56
    .line 57
    return v0

    .line 58
    :cond_6
    :goto_1
    return v1
.end method

.method public final getRealm()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;->mRealm:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/microsoft/identity/common/java/dto/Credential;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;->mRealm:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v1, v2

    .line 18
    :goto_0
    add-int/2addr v0, v1

    .line 19
    mul-int/lit8 v0, v0, 0x1f

    .line 20
    .line 21
    iget-object p0, p0, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;->mAuthority:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    :cond_1
    add-int/2addr v0, v2

    .line 30
    return v0
.end method

.method public final isExpired()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final setAuthority(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;->mAuthority:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRealm(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;->mRealm:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
