.class public abstract Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;
.super Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;",
        "B:",
        "Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder<",
        "TC;TB;>;>",
        "Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder<",
        "TC;TB;>;"
    }
.end annotation


# instance fields
.field private account:Lcom/microsoft/identity/common/java/dto/IAccountRecord;

.field private authenticationScheme:Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

.field private authority:Lcom/microsoft/identity/common/java/authorities/Authority;

.field private claimsRequestJson:Ljava/lang/String;

.field private domainHint:Ljava/lang/String;

.field private extraOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private extraTokenBodyParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private forceRefresh:Z

.field private loginHint:Ljava/lang/String;

.field private mamEnrollmentId:Ljava/lang/String;

.field private scopes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic access$1100(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;)Lcom/microsoft/identity/common/java/dto/IAccountRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->account:Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1200(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->scopes:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1300(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;)Lcom/microsoft/identity/common/java/authorities/Authority;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->authority:Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1400(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->claimsRequestJson:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1500(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;)Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->authenticationScheme:Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1600(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->mamEnrollmentId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1700(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->forceRefresh:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1800(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->loginHint:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1900(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->domainHint:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2000(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->extraOptions:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2100(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->extraTokenBodyParameters:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final $fillValuesFrom$1(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->$fillValuesFrom(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->access$000(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->account(Lcom/microsoft/identity/common/java/dto/IAccountRecord;)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->access$100(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->scopes(Ljava/util/Set;)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->access$200(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->authority(Lcom/microsoft/identity/common/java/authorities/Authority;)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->access$300$1(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->claimsRequestJson(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->access$400(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->authenticationScheme(Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->access$500$1(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->mamEnrollmentId:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->access$600(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->forceRefresh(Z)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->access$700$1(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->loginHint(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->access$800$1(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->domainHint(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->access$900(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->extraOptions:Ljava/util/List;

    .line 71
    .line 72
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->access$1000(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->extraTokenBodyParameters:Ljava/util/List;

    .line 77
    .line 78
    return-void
.end method

.method public final account(Lcom/microsoft/identity/common/java/dto/IAccountRecord;)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/dto/IAccountRecord;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->account:Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->self()Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final authenticationScheme(Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->authenticationScheme:Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->self()Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final authority(Lcom/microsoft/identity/common/java/authorities/Authority;)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/authorities/Authority;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->authority:Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->self()Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final claimsRequestJson(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->claimsRequestJson:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->self()Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final domainHint(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->domainHint:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->self()Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final forceRefresh(Z)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->forceRefresh:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->self()Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final loginHint(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->loginHint:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->self()Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final scopes(Ljava/util/Set;)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->scopes:Ljava/util/Set;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->self()Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public abstract self()Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TokenCommandParameters.TokenCommandParametersBuilder(super="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", account="

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->account:Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ", scopes="

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->scopes:Ljava/util/Set;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ", authority="

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->authority:Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, ", claimsRequestJson="

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->claimsRequestJson:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, ", authenticationScheme="

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->authenticationScheme:Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, ", mamEnrollmentId="

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->mamEnrollmentId:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, ", forceRefresh="

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-boolean v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->forceRefresh:Z

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v1, ", loginHint="

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->loginHint:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v1, ", domainHint="

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->domainHint:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v1, ", extraOptions="

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->extraOptions:Ljava/util/List;

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v1, ", extraTokenBodyParameters="

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;->extraTokenBodyParameters:Ljava/util/List;

    .line 121
    .line 122
    const-string v1, ")"

    .line 123
    .line 124
    invoke-static {v0, p0, v1}, Ldj7;->o(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    return-object p0
.end method
