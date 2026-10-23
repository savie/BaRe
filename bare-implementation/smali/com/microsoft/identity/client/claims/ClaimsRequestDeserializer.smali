.class Lcom/microsoft/identity/client/claims/ClaimsRequestDeserializer;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lpj4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lpj4;"
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

.method private static addProperties(Ljava/util/List;Lfl4;Lz28;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p1, Lfl4;->a:Liw4;

    .line 5
    .line 6
    invoke-virtual {v0}, Liw4;->keySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lgw4;

    .line 11
    .line 12
    invoke-virtual {v1}, Lgw4;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    move-object v2, v1

    .line 17
    check-cast v2, Law4;

    .line 18
    .line 19
    invoke-virtual {v2}, Law4;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    move-object v2, v1

    .line 26
    check-cast v2, Lfw4;

    .line 27
    .line 28
    invoke-virtual {v2}, Law4;->b()Lhw4;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v2, v2, Lhw4;->f:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v2, Ljava/lang/String;

    .line 35
    .line 36
    new-instance v3, Lcom/microsoft/identity/client/claims/RequestedClaim;

    .line 37
    .line 38
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v2}, Lcom/microsoft/identity/client/claims/RequestedClaim;->setName(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v2}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    instance-of v4, v4, Lel4;

    .line 49
    .line 50
    if-nez v4, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Liw4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Lfl4;

    .line 57
    .line 58
    const-class v4, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;

    .line 59
    .line 60
    invoke-virtual {p2, v2, v4}, Lz28;->E(Lqj4;Ljava/lang/Class;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;

    .line 65
    .line 66
    invoke-virtual {v3, v2}, Lcom/microsoft/identity/client/claims/RequestedClaim;->setAdditionalInformation(Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final deserialize(Lqj4;Ljava/lang/reflect/Type;Lz28;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgl4;
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/microsoft/identity/client/claims/ClaimsRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->getAccessTokenClaimsRequested()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p1}, Lqj4;->i()Lfl4;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "access_token"

    .line 15
    .line 16
    iget-object v0, v0, Lfl4;->a:Liw4;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Liw4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lfl4;

    .line 23
    .line 24
    invoke-static {p2, v0, p3}, Lcom/microsoft/identity/client/claims/ClaimsRequestDeserializer;->addProperties(Ljava/util/List;Lfl4;Lz28;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->getIdTokenClaimsRequested()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p1}, Lqj4;->i()Lfl4;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "id_token"

    .line 36
    .line 37
    iget-object v0, v0, Lfl4;->a:Liw4;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Liw4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lfl4;

    .line 44
    .line 45
    invoke-static {p2, v0, p3}, Lcom/microsoft/identity/client/claims/ClaimsRequestDeserializer;->addProperties(Ljava/util/List;Lfl4;Lz28;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->getUserInfoClaimsRequested()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p1}, Lqj4;->i()Lfl4;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string v0, "userinfo"

    .line 57
    .line 58
    iget-object p1, p1, Lfl4;->a:Liw4;

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Liw4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lfl4;

    .line 65
    .line 66
    invoke-static {p2, p1, p3}, Lcom/microsoft/identity/client/claims/ClaimsRequestDeserializer;->addProperties(Ljava/util/List;Lfl4;Lz28;)V

    .line 67
    .line 68
    .line 69
    return-object p0
.end method
