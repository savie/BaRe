.class public final Lmw5;
.super Lrt6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Lrt6;

.field public final f:Ljavax/crypto/SecretKey;

.field public final synthetic g:Lnw5;


# direct methods
.method public constructor <init>(Lnw5;Lrt6;Ljavax/crypto/SecretKey;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmw5;->g:Lnw5;

    .line 2
    .line 3
    invoke-direct {p0}, Lrt6;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lmw5;->e:Lrt6;

    .line 7
    .line 8
    iput-object p3, p0, Lmw5;->f:Ljavax/crypto/SecretKey;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lzu6;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmw5;->g(Lzu6;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final c()Ldv6;
    .locals 0

    .line 1
    iget-object p0, p0, Lmw5;->e:Lrt6;

    .line 2
    .line 3
    invoke-virtual {p0}, Lev6;->c()Ldv6;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lut6;

    .line 8
    .line 9
    return-object p0
.end method

.method public final d()I
    .locals 0

    .line 1
    iget-object p0, p0, Lmw5;->e:Lrt6;

    .line 2
    .line 3
    invoke-virtual {p0}, Lrt6;->d()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final e()Lrt6;
    .locals 0

    .line 1
    iget-object p0, p0, Lmw5;->e:Lrt6;

    .line 2
    .line 3
    invoke-virtual {p0}, Lrt6;->e()Lrt6;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final g(Lzu6;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lmw5;->e:Lrt6;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {v0}, Lev6;->c()Ldv6;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lut6;

    .line 8
    .line 9
    iget-wide v2, v1, Lut6;->k:J

    .line 10
    .line 11
    const-wide/16 v4, 0x8

    .line 12
    .line 13
    or-long/2addr v2, v4

    .line 14
    iput-wide v2, v1, Lut6;->k:J

    .line 15
    .line 16
    iget v1, p1, Low0;->d:I

    .line 17
    .line 18
    new-instance v2, Llw5;

    .line 19
    .line 20
    invoke-direct {v2, p0, p1}, Llw5;-><init>(Lmw5;Lzu6;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lrt6;->g(Lzu6;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, v2, Llw5;->h:Lc55;

    .line 27
    .line 28
    invoke-interface {p0}, Lc55;->b()[B

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget-object p1, p1, Low0;->a:[B

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x30

    .line 35
    .line 36
    const/16 v0, 0x10

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-static {p0, v2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lh67; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catch_0
    move-exception p0

    .line 44
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Signed("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lmw5;->e:Lrt6;

    .line 9
    .line 10
    invoke-virtual {p0}, Lrt6;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p0, ")"

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method
