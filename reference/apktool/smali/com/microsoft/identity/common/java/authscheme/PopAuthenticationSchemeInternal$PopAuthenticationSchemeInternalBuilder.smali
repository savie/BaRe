.class public abstract Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;
.super Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme$TokenAuthenticationSchemeBuilder;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;",
        "B:",
        "Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder<",
        "TC;TB;>;>",
        "Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme$TokenAuthenticationSchemeBuilder<",
        "TC;TB;>;"
    }
.end annotation


# instance fields
.field private clientClaims:Ljava/lang/String;

.field private clockSkewManager:Lcom/microsoft/identity/common/java/util/IClockSkewManager;

.field private httpMethod:Ljava/lang/String;

.field private nonce:Ljava/lang/String;

.field private popManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

.field private url:Ljava/net/URL;


# direct methods
.method public static synthetic access$1000(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;->clientClaims:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;)Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;->popManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;)Lcom/microsoft/identity/common/java/util/IClockSkewManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;->clockSkewManager:Lcom/microsoft/identity/common/java/util/IClockSkewManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;->httpMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;)Ljava/net/URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;->url:Ljava/net/URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;->nonce:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final $fillValuesFrom(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;)Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TB;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme$TokenAuthenticationSchemeBuilder;->$fillValuesFrom(Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->access$000(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;)Lcom/microsoft/identity/common/java/util/IClockSkewManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;->clockSkewManager:Lcom/microsoft/identity/common/java/util/IClockSkewManager;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->access$100(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;->httpMethod:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->access$200(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;)Ljava/net/URL;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;->url:Ljava/net/URL;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->access$300(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;->nonce:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->access$400(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;->clientClaims:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->access$500(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;)Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;->popManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    .line 39
    .line 40
    check-cast p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilderImpl;

    .line 41
    .line 42
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PopAuthenticationSchemeInternal.PopAuthenticationSchemeInternalBuilder(super="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme$TokenAuthenticationSchemeBuilder;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", clockSkewManager="

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;->clockSkewManager:Lcom/microsoft/identity/common/java/util/IClockSkewManager;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ", httpMethod="

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;->httpMethod:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ", url="

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;->url:Ljava/net/URL;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, ", nonce="

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;->nonce:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, ", clientClaims="

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;->clientClaims:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, ", popManager="

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;->popManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p0, ")"

    .line 76
    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0
.end method
