.class public final Lcf0;
.super Lgf0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final a([BLjavax/crypto/spec/GCMParameterSpec;)Le;
    .locals 2

    .line 1
    new-instance p0, Le;

    .line 2
    .line 3
    new-instance v0, Loo4;

    .line 4
    .line 5
    array-length v1, p1

    .line 6
    invoke-direct {v0, p1, v1}, Loo4;-><init>([BI)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Ljavax/crypto/spec/GCMParameterSpec;->getTLen()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p2}, Ljavax/crypto/spec/GCMParameterSpec;->getIV()[B

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-direct {p0, v0, p1, p2}, Le;-><init>(Loo4;I[B)V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method
