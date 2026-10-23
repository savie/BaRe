.class public final Lvy0;
.super Ly0;


# instance fields
.field public a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvy0;->a:[B

    .line 5
    .line 6
    return-void
.end method

.method public static k(Lb0;)Lvy0;
    .locals 2

    .line 1
    instance-of v0, p0, Lvy0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lvy0;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    if-eqz p0, :cond_1

    .line 9
    .line 10
    new-instance v0, Lvy0;

    .line 11
    .line 12
    invoke-static {p0}, Lv1;->B(Ljava/lang/Object;)Lv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v1}, Lv1;->C(I)Lb0;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget-object p0, p0, Lj1;->a:[B

    .line 29
    .line 30
    invoke-static {p0}, Lms8;->k([B)[B

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    iput-object p0, v0, Lvy0;->a:[B

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    return-object p0
.end method


# virtual methods
.method public final d()Lq1;
    .locals 2

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
    iget-object p0, p0, Lvy0;->a:[B

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lj1;-><init>([B)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lc0;->a(Lb0;)V

    .line 14
    .line 15
    .line 16
    new-instance p0, Lt82;

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lv1;-><init>(Lc0;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lt82;->c:I

    .line 23
    .line 24
    return-object p0
.end method
