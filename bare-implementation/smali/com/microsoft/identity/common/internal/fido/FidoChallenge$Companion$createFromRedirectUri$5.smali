.class final synthetic Lcom/microsoft/identity/common/internal/fido/FidoChallenge$Companion$createFromRedirectUri$5;
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
    :try_start_0
    new-instance p0, Ljava/net/URL;

    .line 19
    .line 20
    invoke-direct {p0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    return-object p2

    .line 24
    :catch_0
    const-string p0, "passkey_protocol_request_parsing_error"

    .line 25
    .line 26
    const-string p1, "submitUrl value is malformed."

    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-static {p0, p1, p2}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    return-object p2
.end method
