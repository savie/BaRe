.class final synthetic Lcom/microsoft/identity/common/internal/fido/FidoChallenge$Companion$createFromRedirectUri$2;
.super Lcu3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcu3;",
        "Lqt3;"
    }
.end annotation


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/identity/common/internal/fido/FidoRequestField;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField$Companion;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Lcom/microsoft/identity/common/internal/fido/FidoChallengeField$Companion;->throwIfInvalidRequiredParameter(Lcom/microsoft/identity/common/internal/fido/FidoRequestField;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string p0, "https://"

    .line 19
    .line 20
    invoke-static {p2, p0}, Lnq7;->q0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method
