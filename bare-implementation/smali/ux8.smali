.class public final Lux8;
.super Ly0;


# instance fields
.field public final a:[B

.field public final b:[B


# direct methods
.method public constructor <init>(Lv1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Lv1;->C(I)Lb0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lt0;->x(Ljava/lang/Object;)Lt0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Lt0;->y(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p1, v0}, Lv1;->C(I)Lb0;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v0, v0, Lj1;->a:[B

    .line 29
    .line 30
    invoke-static {v0}, Lms8;->k([B)[B

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lux8;->a:[B

    .line 35
    .line 36
    const/4 v0, 0x2

    .line 37
    invoke-virtual {p1, v0}, Lv1;->C(I)Lb0;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object p1, p1, Lj1;->a:[B

    .line 46
    .line 47
    invoke-static {p1}, Lms8;->k([B)[B

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lux8;->b:[B

    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    const-string p0, "unknown version of sequence"

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

.method public constructor <init>([B[B)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Lms8;->k([B)[B

    move-result-object p1

    iput-object p1, p0, Lux8;->a:[B

    invoke-static {p2}, Lms8;->k([B)[B

    move-result-object p1

    iput-object p1, p0, Lux8;->b:[B

    return-void
.end method


# virtual methods
.method public final d()Lq1;
    .locals 4

    .line 1
    new-instance v0, Lc0;

    .line 2
    .line 3
    invoke-direct {v0}, Lc0;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lt0;

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    invoke-direct {v1, v2, v3}, Lt0;-><init>(J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lc0;->a(Lb0;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lp82;

    .line 17
    .line 18
    iget-object v2, p0, Lux8;->a:[B

    .line 19
    .line 20
    invoke-direct {v1, v2}, Lj1;-><init>([B)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lc0;->a(Lb0;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lp82;

    .line 27
    .line 28
    iget-object p0, p0, Lux8;->b:[B

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lj1;-><init>([B)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lc0;->a(Lb0;)V

    .line 34
    .line 35
    .line 36
    new-instance p0, Lt82;

    .line 37
    .line 38
    invoke-direct {p0, v0}, Lv1;-><init>(Lc0;)V

    .line 39
    .line 40
    .line 41
    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lt82;->c:I

    .line 43
    .line 44
    return-object p0
.end method
