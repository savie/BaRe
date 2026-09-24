.class public final Lcw6;
.super Lei0;


# instance fields
.field public final c:Lw00;


# direct methods
.method public constructor <init>(Law6;[B)V
    .locals 3

    .line 1
    const/4 v0, 0x0

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
    array-length v1, p2

    .line 12
    mul-int/lit8 v2, p1, 0x2

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    new-instance v1, Lw00;

    .line 17
    .line 18
    invoke-static {p2, v0, p1}, Lms8;->t([BII)[B

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p2, p1, v2}, Lms8;->t([BII)[B

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x7

    .line 27
    invoke-direct {v1, p2, v0, p1}, Lw00;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcw6;->c:Lw00;

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    const-string p0, "public key encoding does not match parameters"

    .line 34
    .line 35
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    throw p0
.end method
