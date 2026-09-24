.class public final Ls2;
.super Lq1;


# instance fields
.field public final a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    if-lt v0, v1, :cond_1

    .line 8
    .line 9
    iput-object p1, p0, Ls2;->a:[B

    .line 10
    .line 11
    array-length p0, p1

    .line 12
    if-lez p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    aget-byte p0, p1, p0

    .line 16
    .line 17
    const/16 v0, 0x30

    .line 18
    .line 19
    if-lt p0, v0, :cond_0

    .line 20
    .line 21
    const/16 v1, 0x39

    .line 22
    .line 23
    if-gt p0, v1, :cond_0

    .line 24
    .line 25
    array-length p0, p1

    .line 26
    const/4 v3, 0x1

    .line 27
    if-le p0, v3, :cond_0

    .line 28
    .line 29
    aget-byte p0, p1, v3

    .line 30
    .line 31
    if-lt p0, v0, :cond_0

    .line 32
    .line 33
    if-gt p0, v1, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    const-string p0, "illegal characters in UTCTime string"

    .line 37
    .line 38
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v2

    .line 42
    :cond_1
    const-string p0, "UTCTime string too short"

    .line 43
    .line 44
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v2
.end method


# virtual methods
.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Ls2;->a:[B

    .line 2
    .line 3
    invoke-static {p0}, Lms8;->x([B)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final k(Lq1;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ls2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    check-cast p1, Ls2;

    .line 8
    .line 9
    iget-object p1, p1, Ls2;->a:[B

    .line 10
    .line 11
    iget-object p0, p0, Ls2;->a:[B

    .line 12
    .line 13
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final l(Lm1;Z)V
    .locals 1

    .line 1
    const/16 v0, 0x17

    .line 2
    .line 3
    iget-object p0, p0, Ls2;->a:[B

    .line 4
    .line 5
    invoke-virtual {p1, v0, p2, p0}, Lm1;->k(IZ[B)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final o()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final p(Z)I
    .locals 0

    .line 1
    iget-object p0, p0, Ls2;->a:[B

    .line 2
    .line 3
    array-length p0, p0

    .line 4
    invoke-static {p0, p1}, Lm1;->d(IZ)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ls2;->a:[B

    .line 2
    .line 3
    invoke-static {p0}, Llq7;->a([B)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
