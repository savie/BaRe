.class public final La2a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lz1a;

.field public final b:I

.field public final c:[B

.field public final d:[B


# direct methods
.method public constructor <init>(Lz1a;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La2a;->a:Lz1a;

    .line 5
    .line 6
    iput p2, p0, La2a;->b:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    new-array v1, v0, [B

    .line 10
    .line 11
    iput-object v1, p0, La2a;->c:[B

    .line 12
    .line 13
    new-array v1, v0, [B

    .line 14
    .line 15
    iput-object v1, p0, La2a;->d:[B

    .line 16
    .line 17
    const/16 p0, 0xa

    .line 18
    .line 19
    if-lt p2, p0, :cond_0

    .line 20
    .line 21
    new-array p0, v0, [B

    .line 22
    .line 23
    invoke-virtual {p1, p0, p2}, Lz1a;->a([BI)[B

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    .line 28
    .line 29
    const-string p1, "tag size too small, need at least 10 bytes"

    .line 30
    .line 31
    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method


# virtual methods
.method public final a([B)[B
    .locals 4

    .line 1
    iget-object v0, p0, La2a;->d:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    iget v2, p0, La2a;->b:I

    .line 5
    .line 6
    iget-object v3, p0, La2a;->a:Lz1a;

    .line 7
    .line 8
    iget-object p0, p0, La2a;->c:[B

    .line 9
    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    filled-new-array {p1, v0}, [[B

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Lz85;->N([[B)[B

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v3, p1, v2}, Lz1a;->a([BI)[B

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    filled-new-array {p0, p1}, [[B

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Lz85;->N([[B)[B

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_0
    invoke-virtual {v3, p1, v2}, Lz1a;->a([BI)[B

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    filled-new-array {p0, p1}, [[B

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Lz85;->N([[B)[B

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method
