.class public final Ljx8;
.super Ly0;


# instance fields
.field public final a:Lt0;

.field public final b:I

.field public final c:I

.field public final d:Lya;


# direct methods
.method public constructor <init>(IILya;)V
    .locals 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lt0;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lt0;-><init>(J)V

    iput-object v0, p0, Ljx8;->a:Lt0;

    iput p1, p0, Ljx8;->b:I

    iput p2, p0, Ljx8;->c:I

    iput-object p3, p0, Ljx8;->d:Lya;

    return-void
.end method

.method public constructor <init>(Lv1;)V
    .locals 1

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
    move-result-object v0

    .line 9
    invoke-static {v0}, Lt0;->x(Ljava/lang/Object;)Lt0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Ljx8;->a:Lt0;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p1, v0}, Lv1;->C(I)Lb0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lt0;->x(Ljava/lang/Object;)Lt0;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lt0;->C()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Ljx8;->b:I

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    invoke-virtual {p1, v0}, Lv1;->C(I)Lb0;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lt0;->x(Ljava/lang/Object;)Lt0;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lt0;->C()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput v0, p0, Ljx8;->c:I

    .line 44
    .line 45
    const/4 v0, 0x3

    .line 46
    invoke-virtual {p1, v0}, Lv1;->C(I)Lb0;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Lya;->k(Ljava/lang/Object;)Lya;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Ljx8;->d:Lya;

    .line 55
    .line 56
    return-void
.end method

.method public static k(Ljava/lang/Object;)Ljx8;
    .locals 1

    .line 1
    instance-of v0, p0, Ljx8;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Ljx8;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    if-eqz p0, :cond_1

    .line 9
    .line 10
    new-instance v0, Ljx8;

    .line 11
    .line 12
    invoke-static {p0}, Lv1;->B(Ljava/lang/Object;)Lv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-direct {v0, p0}, Ljx8;-><init>(Lv1;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    const/4 p0, 0x0

    .line 21
    return-object p0
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
    iget-object v1, p0, Ljx8;->a:Lt0;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lc0;->a(Lb0;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lt0;

    .line 12
    .line 13
    iget v2, p0, Ljx8;->b:I

    .line 14
    .line 15
    int-to-long v2, v2

    .line 16
    invoke-direct {v1, v2, v3}, Lt0;-><init>(J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lc0;->a(Lb0;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lt0;

    .line 23
    .line 24
    iget v2, p0, Ljx8;->c:I

    .line 25
    .line 26
    int-to-long v2, v2

    .line 27
    invoke-direct {v1, v2, v3}, Lt0;-><init>(J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lc0;->a(Lb0;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Ljx8;->d:Lya;

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Lc0;->a(Lb0;)V

    .line 36
    .line 37
    .line 38
    new-instance p0, Lt82;

    .line 39
    .line 40
    invoke-direct {p0, v0}, Lv1;-><init>(Lc0;)V

    .line 41
    .line 42
    .line 43
    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lt82;->c:I

    .line 45
    .line 46
    return-object p0
.end method
