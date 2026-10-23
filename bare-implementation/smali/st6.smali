.class public Lst6;
.super Lev6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>(Lzu6;)V
    .locals 1

    .line 10
    new-instance v0, Lut6;

    invoke-direct {v0}, Lut6;-><init>()V

    invoke-direct {p0, v0, p1}, Lev6;-><init>(Ldv6;Lzu6;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 1
    new-instance v0, Lut6;

    .line 2
    .line 3
    invoke-direct {v0}, Lut6;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, p1}, Lev6;-><init>(Ldv6;[B)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public d()Lst6;
    .locals 1

    .line 1
    iget-object v0, p0, Lev6;->a:Ldv6;

    .line 2
    .line 3
    check-cast v0, Lut6;

    .line 4
    .line 5
    iget v0, v0, Lut6;->l:I

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lst6;

    .line 10
    .line 11
    iget-object p0, p0, Lev6;->b:Lzu6;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lst6;-><init>(Lzu6;)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lev6;->a:Ldv6;

    .line 7
    .line 8
    move-object v1, p0

    .line 9
    check-cast v1, Lut6;

    .line 10
    .line 11
    iget-object v1, v1, Lut6;->e:Lit6;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " with message id << "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    check-cast p0, Lut6;

    .line 22
    .line 23
    iget-wide v1, p0, Lut6;->f:J

    .line 24
    .line 25
    const-string p0, " >>"

    .line 26
    .line 27
    invoke-static {v1, v2, p0, v0}, Ldj7;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method
