.class public final Lbw6;
.super Lei0;


# instance fields
.field public final c:Lro;

.field public final d:Lw00;


# direct methods
.method public constructor <init>(Law6;[B)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lei0;-><init>(Ljava/lang/Object;Z)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p1, Law6;->c:Lxv6;

    .line 6
    .line 7
    invoke-interface {p1}, Lxv6;->getN()I

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
    new-instance v0, Lro;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {p2, v2, p1}, Lms8;->t([BII)[B

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    mul-int/lit8 v3, p1, 0x2

    .line 24
    .line 25
    invoke-static {p2, p1, v3}, Lms8;->t([BII)[B

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const/16 v5, 0xd

    .line 30
    .line 31
    invoke-direct {v0, v5, v2, v4}, Lro;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lbw6;->c:Lro;

    .line 35
    .line 36
    new-instance v0, Lw00;

    .line 37
    .line 38
    mul-int/lit8 p1, p1, 0x3

    .line 39
    .line 40
    invoke-static {p2, v3, p1}, Lms8;->t([BII)[B

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {p2, p1, v1}, Lms8;->t([BII)[B

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/4 p2, 0x7

    .line 49
    invoke-direct {v0, p2, v2, p1}, Lw00;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lbw6;->d:Lw00;

    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    const-string p0, "private key encoding does not match parameters"

    .line 56
    .line 57
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 p0, 0x0

    .line 61
    throw p0
.end method

.method public constructor <init>(Law6;[B[B[B[B)V
    .locals 1

    const/4 v0, 0x1

    .line 62
    invoke-direct {p0, p1, v0}, Lei0;-><init>(Ljava/lang/Object;Z)V

    new-instance p1, Lro;

    const/16 v0, 0xd

    invoke-direct {p1, v0, p2, p3}, Lro;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lbw6;->c:Lro;

    new-instance p1, Lw00;

    const/4 p2, 0x7

    invoke-direct {p1, p2, p4, p5}, Lw00;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lbw6;->d:Lw00;

    return-void
.end method


# virtual methods
.method public final getEncoded()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lbw6;->c:Lro;

    .line 2
    .line 3
    iget-object v1, v0, Lro;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, [B

    .line 6
    .line 7
    iget-object v0, v0, Lro;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, [B

    .line 10
    .line 11
    iget-object p0, p0, Lbw6;->d:Lw00;

    .line 12
    .line 13
    iget-object v2, p0, Lw00;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, [B

    .line 16
    .line 17
    iget-object p0, p0, Lw00;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, [B

    .line 20
    .line 21
    filled-new-array {v1, v0, v2, p0}, [[B

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Lms8;->q([[B)[B

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method
