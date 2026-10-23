.class public final Lj45;
.super Lei0;


# instance fields
.field public final c:[B

.field public final d:[B


# direct methods
.method public constructor <init>(Lh45;[B)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lei0;-><init>(Ljava/lang/Object;Z)V

    const/16 p1, 0x20

    invoke-static {p2, v0, p1}, Lms8;->t([BII)[B

    move-result-object v0

    iput-object v0, p0, Lj45;->c:[B

    array-length v0, p2

    invoke-static {p2, p1, v0}, Lms8;->t([BII)[B

    move-result-object p1

    iput-object p1, p0, Lj45;->d:[B

    array-length p0, p1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "encoding too short"

    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lh45;[B[B)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lei0;-><init>(Ljava/lang/Object;Z)V

    .line 3
    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    invoke-static {p2}, Lms8;->k([B)[B

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lj45;->c:[B

    .line 15
    .line 16
    invoke-static {p3}, Lms8;->k([B)[B

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lj45;->d:[B

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const-string p0, "t1 cannot be null"

    .line 24
    .line 25
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    const-string p0, "rho cannot be null"

    .line 30
    .line 31
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method
