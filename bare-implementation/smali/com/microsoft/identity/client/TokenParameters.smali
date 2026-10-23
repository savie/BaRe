.class public abstract Lcom/microsoft/identity/client/TokenParameters;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mAccount:Lcom/microsoft/identity/client/Account;

.field private mAccountRecord:Lcom/microsoft/identity/common/java/dto/AccountRecord;

.field private mAuthority:Ljava/lang/String;

.field private final mClaimsRequest:Lcom/microsoft/identity/client/claims/ClaimsRequest;

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
.method public constructor <init>(Lcom/microsoft/identity/client/TokenParameters$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/microsoft/identity/client/TokenParameters$Builder;->access$000(Lcom/microsoft/identity/client/TokenParameters$Builder;)Lcom/microsoft/identity/client/Account;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/microsoft/identity/client/TokenParameters;->mAccount:Lcom/microsoft/identity/client/Account;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/microsoft/identity/client/TokenParameters$Builder;->access$100(Lcom/microsoft/identity/client/TokenParameters$Builder;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/microsoft/identity/client/TokenParameters;->mAuthority:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/microsoft/identity/client/TokenParameters$Builder;->access$200(Lcom/microsoft/identity/client/TokenParameters$Builder;)Lcom/microsoft/identity/client/claims/ClaimsRequest;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/microsoft/identity/client/TokenParameters;->mClaimsRequest:Lcom/microsoft/identity/client/claims/ClaimsRequest;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/microsoft/identity/client/TokenParameters$Builder;->access$300(Lcom/microsoft/identity/client/TokenParameters$Builder;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/microsoft/identity/client/TokenParameters;->mScopes:Ljava/util/List;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final getAccount()Lcom/microsoft/identity/client/Account;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/TokenParameters;->mAccount:Lcom/microsoft/identity/client/Account;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAccountRecord()Lcom/microsoft/identity/common/java/dto/AccountRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/TokenParameters;->mAccountRecord:Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAuthority()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/TokenParameters;->mAuthority:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getClaimsRequest()Lcom/microsoft/identity/client/claims/ClaimsRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/TokenParameters;->mClaimsRequest:Lcom/microsoft/identity/client/claims/ClaimsRequest;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getScopes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/TokenParameters;->mScopes:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setAccountRecord(Lcom/microsoft/identity/common/java/dto/AccountRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/TokenParameters;->mAccountRecord:Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 2
    .line 3
    return-void
.end method

.method public final setAuthority(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/TokenParameters;->mAuthority:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setScopes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/TokenParameters;->mScopes:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method
