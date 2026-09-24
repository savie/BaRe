.class public final Lvu6;
.super Lev6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Encrypted for session id << "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lev6;->a:Ldv6;

    .line 9
    .line 10
    check-cast p0, Lnu6;

    .line 11
    .line 12
    iget-wide v1, p0, Lnu6;->f:J

    .line 13
    .line 14
    const-string p0, " >>"

    .line 15
    .line 16
    invoke-static {v1, v2, p0, v0}, Ldj7;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method
