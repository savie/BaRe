.class public final Lvv6;
.super Ly0;


# instance fields
.field public a:I

.field public b:[B

.field public c:[B

.field public d:Lwv6;


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
    iget v2, p0, Lvv6;->a:I

    .line 9
    .line 10
    int-to-long v2, v2

    .line 11
    invoke-direct {v1, v2, v3}, Lt0;-><init>(J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lc0;->a(Lb0;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lp82;

    .line 18
    .line 19
    iget-object v2, p0, Lvv6;->b:[B

    .line 20
    .line 21
    invoke-direct {v1, v2}, Lj1;-><init>([B)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lc0;->a(Lb0;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lp82;

    .line 28
    .line 29
    iget-object v2, p0, Lvv6;->c:[B

    .line 30
    .line 31
    invoke-direct {v1, v2}, Lj1;-><init>([B)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lc0;->a(Lb0;)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lvv6;->d:Lwv6;

    .line 38
    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    new-instance v1, Lwv6;

    .line 42
    .line 43
    iget-object v2, p0, Lwv6;->a:[B

    .line 44
    .line 45
    invoke-static {v2}, Lms8;->k([B)[B

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget-object p0, p0, Lwv6;->b:[B

    .line 50
    .line 51
    invoke-static {p0}, Lms8;->k([B)[B

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v2, v1, Lwv6;->a:[B

    .line 59
    .line 60
    iput-object p0, v1, Lwv6;->b:[B

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lc0;->a(Lb0;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    new-instance p0, Lt82;

    .line 66
    .line 67
    invoke-direct {p0, v0}, Lv1;-><init>(Lc0;)V

    .line 68
    .line 69
    .line 70
    const/4 v0, -0x1

    .line 71
    iput v0, p0, Lt82;->c:I

    .line 72
    .line 73
    return-object p0
.end method
