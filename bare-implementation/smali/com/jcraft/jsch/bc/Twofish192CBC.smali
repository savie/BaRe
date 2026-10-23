.class public Lcom/jcraft/jsch/bc/Twofish192CBC;
.super Lcom/jcraft/jsch/bc/TwofishCBC;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


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
.method public final getBlockSize()I
    .locals 0

    .line 1
    const/16 p0, 0x18

    .line 2
    .line 3
    return p0
.end method

.method public final bridge synthetic getIVSize()I
    .locals 0

    .line 1
    const/16 p0, 0x10

    .line 2
    .line 3
    return p0
.end method

.method public final bridge synthetic init(I[B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/jcraft/jsch/bc/TwofishCBC;->init(I[B[B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final bridge synthetic isCBC()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final bridge synthetic update([BII[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/jcraft/jsch/bc/TwofishCBC;->update([BII[BI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
