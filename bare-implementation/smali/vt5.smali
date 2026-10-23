.class public final Lvt5;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public e:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

.field public final f:Lix6;

.field public final g:Lix6;

.field public final h:Lix6;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lix6;

    .line 5
    .line 6
    invoke-direct {v0}, Lix6;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lvt5;->f:Lix6;

    .line 10
    .line 11
    new-instance v0, Lix6;

    .line 12
    .line 13
    invoke-direct {v0}, Lix6;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lvt5;->g:Lix6;

    .line 17
    .line 18
    new-instance v0, Lix6;

    .line 19
    .line 20
    invoke-direct {v0}, Lix6;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lvt5;->h:Lix6;

    .line 24
    .line 25
    sget-object v0, Lzn4;->a:Lzn4;

    .line 26
    .line 27
    new-instance v0, Ltt5;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-direct {v0, p0, v1}, Ltt5;-><init>(Lvt5;Ljv1;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final j(ZLcom/microsoft/identity/client/AuthenticationResult;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lvt5;->g:Lix6;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lix6;->k(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/microsoft/identity/client/AuthenticationResult;->getAccessToken()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    sget-object p1, Lnq5;->i:Ljq5;

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/microsoft/identity/client/AuthenticationResult;->getExpiresOn()Ljava/util/Date;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p0, p1}, Ljq5;->e(Ljava/lang/String;Ljava/util/Date;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
