.class public Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private mEssential:Ljava/lang/Boolean;
    .annotation runtime Ly77;
        value = "essential"
    .end annotation
.end field

.field private mValue:Ljava/lang/Object;
    .annotation runtime Ly77;
        value = "value"
    .end annotation
.end field

.field private mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ly77;
        value = "values"
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
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->mEssential:Ljava/lang/Boolean;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->mValues:Ljava/util/List;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->mValue:Ljava/lang/Object;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
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
    instance-of v1, p1, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;

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
    check-cast p1, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->mEssential:Ljava/lang/Boolean;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->mEssential:Ljava/lang/Boolean;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_3

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    if-eqz v3, :cond_3

    .line 27
    .line 28
    :goto_0
    return v2

    .line 29
    :cond_3
    iget-object v1, p0, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->mValues:Ljava/util/List;

    .line 30
    .line 31
    iget-object v3, p1, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->mValues:Ljava/util/List;

    .line 32
    .line 33
    if-eqz v1, :cond_4

    .line 34
    .line 35
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_5

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_4
    if-eqz v3, :cond_5

    .line 43
    .line 44
    :goto_1
    return v2

    .line 45
    :cond_5
    iget-object p0, p0, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->mValue:Ljava/lang/Object;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->mValue:Ljava/lang/Object;

    .line 48
    .line 49
    if-eqz p0, :cond_6

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    return p0

    .line 56
    :cond_6
    if-nez p1, :cond_7

    .line 57
    .line 58
    return v0

    .line 59
    :cond_7
    return v2
.end method

.method public getEssential()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->mEssential:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->mValue:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public getValues()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->mValues:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->mEssential:Ljava/lang/Boolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->mValues:Ljava/util/List;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v2, v1

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object p0, p0, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->mValue:Ljava/lang/Object;

    .line 28
    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    :cond_2
    add-int/2addr v0, v1

    .line 36
    return v0
.end method

.method public setEssential(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->mEssential:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->mValue:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public setValues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->mValues:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method
