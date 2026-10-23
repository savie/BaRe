.class public final Llw5;
.super Lzu6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final g:Lzu6;

.field public final h:Lc55;


# direct methods
.method public constructor <init>(Lmw5;Lzu6;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Low0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Llw5;->g:Lzu6;

    .line 5
    .line 6
    iget-object p2, p1, Lmw5;->f:Ljavax/crypto/SecretKey;

    .line 7
    .line 8
    iget-object p1, p1, Lmw5;->g:Lnw5;

    .line 9
    .line 10
    iget-object p1, p1, Lnw5;->a:Llv1;

    .line 11
    .line 12
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Llv1;->h(Ljava/lang/String;)Lc55;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-interface {p1, p2}, Lc55;->init([B)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Llw5;->h:Lc55;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final e(Lzu6;)V
    .locals 4

    .line 1
    iget-object v0, p1, Low0;->a:[B

    .line 2
    .line 3
    iget v1, p1, Low0;->c:I

    .line 4
    .line 5
    invoke-virtual {p1}, Low0;->a()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, p0, Llw5;->h:Lc55;

    .line 10
    .line 11
    invoke-interface {v3, v0, v1, v2}, Lc55;->update([BII)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Llw5;->g:Lzu6;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Low0;->e(Lzu6;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final f(B)Low0;
    .locals 1

    .line 1
    iget-object v0, p0, Llw5;->h:Lc55;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lc55;->a(B)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Llw5;->g:Lzu6;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Low0;->f(B)Low0;

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public final i([BI)Low0;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Llw5;->h:Lc55;

    .line 3
    .line 4
    invoke-interface {v1, p1, v0, p2}, Lc55;->update([BII)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Llw5;->g:Lzu6;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Low0;->i([BI)Low0;

    .line 10
    .line 11
    .line 12
    return-object p0
.end method
