.class Lcom/microsoft/identity/client/claims/ClaimsRequestSerializer;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ldm4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldm4;"
    }
.end annotation


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

.method public static addPropertiesToObject(Ljava/util/List;Lfl4;Lz28;)V
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/microsoft/identity/client/claims/RequestedClaim;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/microsoft/identity/client/claims/RequestedClaim;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0}, Lcom/microsoft/identity/client/claims/RequestedClaim;->getAdditionalInformation()Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v2, p2, Lz28;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v2, Lcom/google/gson/internal/bind/TreeTypeAdapter;

    .line 28
    .line 29
    iget-object v2, v2, Lcom/google/gson/internal/bind/TreeTypeAdapter;->c:Lcom/google/gson/a;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    new-instance v3, Lqm4;

    .line 35
    .line 36
    invoke-direct {v3}, Lqm4;-><init>()V

    .line 37
    .line 38
    .line 39
    const-class v4, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;

    .line 40
    .line 41
    invoke-virtual {v2, v0, v4, v3}, Lcom/google/gson/a;->l(Ljava/lang/Object;Ljava/lang/reflect/Type;Lnn4;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Lqm4;->Y()Lqj4;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1, v1, v0}, Lfl4;->p(Ljava/lang/String;Lqj4;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public final serialize(Ljava/lang/Object;Lz28;)Lqj4;
    .locals 4

    .line 1
    check-cast p1, Lcom/microsoft/identity/client/claims/ClaimsRequest;

    .line 2
    .line 3
    new-instance p0, Lfl4;

    .line 4
    .line 5
    invoke-direct {p0}, Lfl4;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lfl4;

    .line 9
    .line 10
    invoke-direct {v0}, Lfl4;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lfl4;

    .line 14
    .line 15
    invoke-direct {v1}, Lfl4;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lfl4;

    .line 19
    .line 20
    invoke-direct {v2}, Lfl4;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->getAccessTokenClaimsRequested()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v3, v1, p2}, Lcom/microsoft/identity/client/claims/ClaimsRequestSerializer;->addPropertiesToObject(Ljava/util/List;Lfl4;Lz28;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->getIdTokenClaimsRequested()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-static {v3, v2, p2}, Lcom/microsoft/identity/client/claims/ClaimsRequestSerializer;->addPropertiesToObject(Ljava/util/List;Lfl4;Lz28;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->getUserInfoClaimsRequested()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1, v0, p2}, Lcom/microsoft/identity/client/claims/ClaimsRequestSerializer;->addPropertiesToObject(Ljava/util/List;Lfl4;Lz28;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, v0, Lfl4;->a:Liw4;

    .line 45
    .line 46
    iget p1, p1, Liw4;->d:I

    .line 47
    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    const-string p1, "userinfo"

    .line 51
    .line 52
    invoke-virtual {p0, p1, v0}, Lfl4;->p(Ljava/lang/String;Lqj4;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object p1, v2, Lfl4;->a:Liw4;

    .line 56
    .line 57
    iget p1, p1, Liw4;->d:I

    .line 58
    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    const-string p1, "id_token"

    .line 62
    .line 63
    invoke-virtual {p0, p1, v2}, Lfl4;->p(Ljava/lang/String;Lqj4;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    iget-object p1, v1, Lfl4;->a:Liw4;

    .line 67
    .line 68
    iget p1, p1, Liw4;->d:I

    .line 69
    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    const-string p1, "access_token"

    .line 73
    .line 74
    invoke-virtual {p0, p1, v1}, Lfl4;->p(Ljava/lang/String;Lqj4;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    return-object p0
.end method
