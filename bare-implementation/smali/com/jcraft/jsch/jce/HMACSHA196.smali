.class public Lcom/jcraft/jsch/jce/HMACSHA196;
.super Lcom/jcraft/jsch/jce/HMACSHA1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final g:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/jce/HMACSHA1;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x14

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMACSHA196;->g:[B

    .line 9
    .line 10
    const-string v0, "hmac-sha1-96"

    .line 11
    .line 12
    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->a:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final doFinal([BI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMACSHA196;->g:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-super {p0, v0, v1}, Lcom/jcraft/jsch/jce/HMACSHA1;->doFinal([BI)V

    .line 5
    .line 6
    .line 7
    const/16 p0, 0xc

    .line 8
    .line 9
    invoke-static {v0, v1, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final getBlockSize()I
    .locals 0

    .line 1
    const/16 p0, 0xc

    .line 2
    .line 3
    return p0
.end method
