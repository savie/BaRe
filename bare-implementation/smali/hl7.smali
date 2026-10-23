.class public final Lhl7;
.super Lqi4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final a(Lbn4;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lbn4;->S()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final e(Ldn4;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ldn4;->z(Ljava/lang/String;)Ldn4;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "JsonAdapter(String)"

    .line 2
    .line 3
    return-object p0
.end method
