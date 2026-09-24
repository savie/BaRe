.class public final Lie;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:B

.field public final b:B

.field public final c:B

.field public final d:B

.field public final e:[B


# direct methods
.method public constructor <init>(I[BII)V
    .locals 3

    .line 1
    const-string v0, "CLA"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1, v0}, Lie;->a(ILjava/lang/String;)B

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v2, "INS"

    .line 9
    .line 10
    invoke-static {p1, v2}, Lie;->a(ILjava/lang/String;)B

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const-string v2, "P1"

    .line 15
    .line 16
    invoke-static {p3, v2}, Lie;->a(ILjava/lang/String;)B

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    const-string v2, "P2"

    .line 21
    .line 22
    invoke-static {p4, v2}, Lie;->a(ILjava/lang/String;)B

    .line 23
    .line 24
    .line 25
    move-result p4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-byte v0, p0, Lie;->a:B

    .line 30
    .line 31
    iput-byte p1, p0, Lie;->b:B

    .line 32
    .line 33
    iput-byte p3, p0, Lie;->c:B

    .line 34
    .line 35
    iput-byte p4, p0, Lie;->d:B

    .line 36
    .line 37
    if-nez p2, :cond_0

    .line 38
    .line 39
    new-array p2, v1, [B

    .line 40
    .line 41
    :cond_0
    iput-object p2, p0, Lie;->e:[B

    .line 42
    .line 43
    return-void
.end method

.method public static a(ILjava/lang/String;)B
    .locals 1

    .line 1
    const/16 v0, 0xff

    .line 2
    .line 3
    if-gt p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, -0x80

    .line 6
    .line 7
    if-lt p0, v0, :cond_0

    .line 8
    .line 9
    int-to-byte p0, p0

    .line 10
    return p0

    .line 11
    :cond_0
    const-string p0, "Invalid value for "

    .line 12
    .line 13
    const-string v0, ", must fit in a byte"

    .line 14
    .line 15
    invoke-static {p0, p1, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return p0
.end method
