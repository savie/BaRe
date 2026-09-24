.class public final Lsr6;
.super Lei0;


# instance fields
.field public final c:Lnr6;

.field public final d:Loe;


# direct methods
.method public constructor <init>(Lrr6;[B)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lei0;-><init>(Ljava/lang/Object;Z)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p1, Lrr6;->a:Lpr6;

    .line 6
    .line 7
    invoke-interface {p1}, Lpr6;->getN()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    array-length v0, p2

    .line 12
    mul-int/lit8 v1, p1, 0x4

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    new-instance v0, Lnr6;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {p2, v2, p1}, Lms8;->t([BII)[B

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    mul-int/lit8 v4, p1, 0x2

    .line 24
    .line 25
    invoke-static {p2, p1, v4}, Lms8;->t([BII)[B

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-direct {v0, v2, v3, v5}, Lnr6;-><init>(I[B[B)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lsr6;->c:Lnr6;

    .line 33
    .line 34
    new-instance v0, Loe;

    .line 35
    .line 36
    mul-int/lit8 p1, p1, 0x3

    .line 37
    .line 38
    invoke-static {p2, v4, p1}, Lms8;->t([BII)[B

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {p2, p1, v1}, Lms8;->t([BII)[B

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const/16 p2, 0xa

    .line 47
    .line 48
    invoke-direct {v0, p2, v2, p1}, Loe;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lsr6;->d:Loe;

    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    const-string p0, "private key encoding does not match parameters"

    .line 55
    .line 56
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    throw p0
.end method
