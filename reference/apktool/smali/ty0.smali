.class public final Lty0;
.super Ly0;


# instance fields
.field public a:I

.field public b:[B

.field public c:[B

.field public d:[B

.field public e:[B

.field public f:[B

.field public k:Lvy0;


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
    iget v2, p0, Lty0;->a:I

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
    iget-object v2, p0, Lty0;->b:[B

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
    iget-object v2, p0, Lty0;->c:[B

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
    new-instance v1, Lp82;

    .line 38
    .line 39
    iget-object v2, p0, Lty0;->d:[B

    .line 40
    .line 41
    invoke-direct {v1, v2}, Lj1;-><init>([B)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lc0;->a(Lb0;)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Lp82;

    .line 48
    .line 49
    iget-object v2, p0, Lty0;->e:[B

    .line 50
    .line 51
    invoke-direct {v1, v2}, Lj1;-><init>([B)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lc0;->a(Lb0;)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Lp82;

    .line 58
    .line 59
    iget-object v2, p0, Lty0;->f:[B

    .line 60
    .line 61
    invoke-direct {v1, v2}, Lj1;-><init>([B)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lc0;->a(Lb0;)V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lty0;->k:Lvy0;

    .line 68
    .line 69
    if-eqz p0, :cond_0

    .line 70
    .line 71
    new-instance v1, Lvy0;

    .line 72
    .line 73
    iget-object p0, p0, Lvy0;->a:[B

    .line 74
    .line 75
    invoke-static {p0}, Lms8;->k([B)[B

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-direct {v1, p0}, Lvy0;-><init>([B)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lc0;->a(Lb0;)V

    .line 83
    .line 84
    .line 85
    :cond_0
    new-instance p0, Lt82;

    .line 86
    .line 87
    invoke-direct {p0, v0}, Lv1;-><init>(Lc0;)V

    .line 88
    .line 89
    .line 90
    const/4 v0, -0x1

    .line 91
    iput v0, p0, Lt82;->c:I

    .line 92
    .line 93
    return-object p0
.end method
