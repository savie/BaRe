.class final synthetic Lcom/microsoft/identity/common/internal/fido/FidoChallenge$Companion$createFromRedirectUri$4;
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
    .locals 6

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
    invoke-static {}, Lcom/microsoft/identity/common/java/constants/FidoConstants;->access$getSupportedPasskeyProtocolVersions$cp()Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    return-object p2

    .line 29
    :cond_0
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 30
    .line 31
    const-string p1, "Passkey protocol version \'"

    .line 32
    .line 33
    const-string v0, "\' is not supported. Supported versions: "

    .line 34
    .line 35
    invoke-static {p1, p2, v0}, Ldj7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {}, Lcom/microsoft/identity/common/java/constants/FidoConstants;->access$getSupportedPasskeyProtocolVersions$cp()Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/4 v4, 0x0

    .line 44
    const/16 v5, 0x3f

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    const/4 v2, 0x0

    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-static/range {v0 .. v5}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const/4 p2, 0x0

    .line 61
    const-string v0, "passkey_protocol_request_parsing_error"

    .line 62
    .line 63
    invoke-direct {p0, v0, p1, p2}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    throw p0
.end method
