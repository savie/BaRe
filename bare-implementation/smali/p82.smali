.class public final Lp82;
.super Lj1;


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lj1;-><init>([B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final l(Lm1;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    iget-object p0, p0, Lj1;->a:[B

    .line 3
    .line 4
    invoke-virtual {p1, v0, p2, p0}, Lm1;->k(IZ[B)V

    .line 5
    .line 6
    .line 7
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
    iget-object p0, p0, Lj1;->a:[B

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

.method public final u()Lq1;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final w()Lq1;
    .locals 0

    .line 1
    return-object p0
.end method
