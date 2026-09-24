.class public abstract Lcom/microsoft/identity/client/TokenParameters$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/microsoft/identity/client/TokenParameters$Builder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAccount:Lcom/microsoft/identity/client/Account;

.field private mAuthority:Ljava/lang/String;

.field private mClaimsRequest:Lcom/microsoft/identity/client/claims/ClaimsRequest;

.field private mScopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic access$000(Lcom/microsoft/identity/client/TokenParameters$Builder;)Lcom/microsoft/identity/client/Account;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/TokenParameters$Builder;->mAccount:Lcom/microsoft/identity/client/Account;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/client/TokenParameters$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/TokenParameters$Builder;->mAuthority:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/identity/client/TokenParameters$Builder;)Lcom/microsoft/identity/client/claims/ClaimsRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/TokenParameters$Builder;->mClaimsRequest:Lcom/microsoft/identity/client/claims/ClaimsRequest;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/identity/client/TokenParameters$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/TokenParameters$Builder;->mScopes:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final forAccount(Lcom/microsoft/identity/client/Account;)Lcom/microsoft/identity/client/TokenParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/client/Account;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/TokenParameters$Builder;->mAccount:Lcom/microsoft/identity/client/Account;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/client/TokenParameters$Builder;->self()Lcom/microsoft/identity/client/TokenParameters$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final fromAuthority(Ljava/lang/String;)Lcom/microsoft/identity/client/TokenParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/TokenParameters$Builder;->mAuthority:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/client/TokenParameters$Builder;->self()Lcom/microsoft/identity/client/TokenParameters$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public abstract self()Lcom/microsoft/identity/client/TokenParameters$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public final withClaims(Lcom/microsoft/identity/client/claims/ClaimsRequest;)Lcom/microsoft/identity/client/TokenParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/client/claims/ClaimsRequest;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/TokenParameters$Builder;->mClaimsRequest:Lcom/microsoft/identity/client/claims/ClaimsRequest;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/client/TokenParameters$Builder;->self()Lcom/microsoft/identity/client/TokenParameters$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final withScopes(Ljava/util/List;)Lcom/microsoft/identity/client/TokenParameters$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/TokenParameters$Builder;->mScopes:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iput-object p1, p0, Lcom/microsoft/identity/client/TokenParameters$Builder;->mScopes:Ljava/util/List;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/microsoft/identity/client/TokenParameters$Builder;->self()Lcom/microsoft/identity/client/TokenParameters$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    const-string p0, "Empty scopes list."

    .line 22
    .line 23
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_1
    const-string p0, "Scopes is already set."

    .line 28
    .line 29
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object v1
.end method
