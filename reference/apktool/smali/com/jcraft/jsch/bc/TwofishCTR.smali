.class abstract Lcom/jcraft/jsch/bc/TwofishCTR;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/Cipher;


# instance fields
.field public a:Lmr6;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getIVSize()I
    .locals 0

    .line 1
    const/16 p0, 0x10

    .line 2
    .line 3
    return p0
.end method

.method public init(I[B[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    array-length v0, p3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/16 v2, 0x10

    .line 4
    .line 5
    if-le v0, v2, :cond_0

    .line 6
    .line 7
    new-array v0, v2, [B

    .line 8
    .line 9
    invoke-static {p3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    .line 11
    .line 12
    move-object p3, v0

    .line 13
    :cond_0
    invoke-interface {p0}, Lcom/jcraft/jsch/Cipher;->getBlockSize()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    array-length v2, p2

    .line 18
    if-le v2, v0, :cond_1

    .line 19
    .line 20
    new-array v2, v0, [B

    .line 21
    .line 22
    invoke-static {p2, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    .line 25
    move-object p2, v2

    .line 26
    :cond_1
    :try_start_0
    new-instance v0, Lvw5;

    .line 27
    .line 28
    new-instance v2, Loo4;

    .line 29
    .line 30
    array-length v3, p2

    .line 31
    invoke-direct {v2, p2, v3}, Loo4;-><init>([BI)V

    .line 32
    .line 33
    .line 34
    array-length p2, p3

    .line 35
    invoke-direct {v0, v2, p3, p2}, Lvw5;-><init>(Lz61;[BI)V

    .line 36
    .line 37
    .line 38
    new-instance p2, Lub8;

    .line 39
    .line 40
    invoke-direct {p2}, Lub8;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance p3, Lmr6;

    .line 44
    .line 45
    invoke-direct {p3, p2}, Lmr6;-><init>(Lxs0;)V

    .line 46
    .line 47
    .line 48
    iput-object p3, p0, Lcom/jcraft/jsch/bc/TwofishCTR;->a:Lmr6;

    .line 49
    .line 50
    if-nez p1, :cond_2

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    :cond_2
    invoke-virtual {p3, v1, v0}, Lmr6;->a(ZLz61;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catch_0
    move-exception p1

    .line 58
    const/4 p2, 0x0

    .line 59
    iput-object p2, p0, Lcom/jcraft/jsch/bc/TwofishCTR;->a:Lmr6;

    .line 60
    .line 61
    throw p1
.end method

.method public isCBC()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public update([BII[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/bc/TwofishCTR;->a:Lmr6;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lmr6;->c([BII[BI)I

    .line 4
    .line 5
    .line 6
    return-void
.end method
