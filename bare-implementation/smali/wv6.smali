.class public final Lwv6;
.super Ly0;


# instance fields
.field public a:[B

.field public b:[B


# virtual methods
.method public final d()Lq1;
    .locals 3

    .line 1
    new-instance v0, Lc0;

    .line 2
    .line 3
    invoke-direct {v0}, Lc0;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lp82;

    .line 7
    .line 8
    iget-object v2, p0, Lwv6;->a:[B

    .line 9
    .line 10
    invoke-direct {v1, v2}, Lj1;-><init>([B)V

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
    iget-object p0, p0, Lwv6;->b:[B

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lj1;-><init>([B)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lc0;->a(Lb0;)V

    .line 24
    .line 25
    .line 26
    new-instance p0, Lt82;

    .line 27
    .line 28
    invoke-direct {p0, v0}, Lv1;-><init>(Lc0;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lt82;->c:I

    .line 33
    .line 34
    return-object p0
.end method
