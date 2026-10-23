.class public final Lr0;
.super Lol1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final C(Lm2;[B)Lz0;
    .locals 1

    .line 1
    new-instance p0, Lu0;

    .line 2
    .line 3
    new-instance p1, Ljava/math/BigInteger;

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/math/BigInteger;-><init>([B)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lm2;->g:Le2;

    .line 9
    .line 10
    invoke-direct {p0, v0, p2}, Lr1;-><init>(Lm2;[B)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lu0;->c:Ljava/math/BigInteger;

    .line 14
    .line 15
    return-object p0
.end method
