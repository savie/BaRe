.class abstract Lcom/jcraft/jsch/bc/TwofishCBC;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/Cipher;


# instance fields
.field public a:Lbe2;


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
    new-instance p2, Lbe2;

    .line 39
    .line 40
    new-instance p3, Lub8;

    .line 41
    .line 42
    invoke-direct {p3}, Lub8;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {p3}, Lly0;->c(Lxs0;)Lly0;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    invoke-direct {p2, p3}, Lbe2;-><init>(Lly0;)V

    .line 50
    .line 51
    .line 52
    iput-object p2, p0, Lcom/jcraft/jsch/bc/TwofishCBC;->a:Lbe2;

    .line 53
    .line 54
    if-nez p1, :cond_2

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    :cond_2
    invoke-virtual {p2, v1, v0}, Lbe2;->d(ZLz61;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :catch_0
    move-exception p1

    .line 62
    const/4 p2, 0x0

    .line 63
    iput-object p2, p0, Lcom/jcraft/jsch/bc/TwofishCBC;->a:Lbe2;

    .line 64
    .line 65
    throw p1
.end method

.method public isCBC()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

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
    iget-object p0, p0, Lcom/jcraft/jsch/bc/TwofishCBC;->a:Lbe2;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lbe2;->f([BII[BI)I

    .line 4
    .line 5
    .line 6
    return-void
.end method
