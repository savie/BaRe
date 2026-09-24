.class Lcom/microsoft/identity/client/claims/RequestClaimAdditionalInformationSerializer;
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


# virtual methods
.method public final serialize(Ljava/lang/Object;Lz28;)Lqj4;
    .locals 1

    .line 1
    check-cast p1, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;

    .line 2
    .line 3
    new-instance p0, Lfl4;

    .line 4
    .line 5
    invoke-direct {p0}, Lfl4;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string p2, "essential"

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->getEssential()Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, p2, v0}, Lfl4;->s(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const-string v0, "value"

    .line 32
    .line 33
    invoke-virtual {p0, v0, p2}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->getValues()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-lez p2, :cond_2

    .line 45
    .line 46
    new-instance p2, Lxi4;

    .line 47
    .line 48
    invoke-direct {p2}, Lxi4;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->getValues()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p2, v0}, Lxi4;->s(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    const-string p1, "values"

    .line 78
    .line 79
    invoke-virtual {p0, p1, p2}, Lfl4;->p(Ljava/lang/String;Lqj4;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    return-object p0
.end method
