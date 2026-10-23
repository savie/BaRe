.class public final Lya;
.super Ly0;


# instance fields
.field public a:Lf1;

.field public b:Lb0;


# direct methods
.method public constructor <init>(Lf1;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lya;->a:Lf1;

    return-void
.end method

.method public constructor <init>(Lf1;Ly0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lya;->a:Lf1;

    .line 5
    .line 6
    iput-object p2, p0, Lya;->b:Lb0;

    .line 7
    .line 8
    return-void
.end method

.method public static k(Ljava/lang/Object;)Lya;
    .locals 7

    .line 1
    instance-of v0, p0, Lya;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lya;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    if-eqz p0, :cond_6

    .line 10
    .line 11
    new-instance v1, Lya;

    .line 12
    .line 13
    invoke-static {p0}, Lv1;->B(Ljava/lang/Object;)Lv1;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lv1;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x1

    .line 25
    if-lt v2, v3, :cond_5

    .line 26
    .line 27
    invoke-virtual {p0}, Lv1;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v4, 0x2

    .line 32
    if-gt v2, v4, :cond_5

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {p0, v2}, Lv1;->C(I)Lb0;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    sget-object v5, Lf1;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    instance-of v5, v2, Lf1;

    .line 44
    .line 45
    if-eqz v5, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-interface {v2}, Lb0;->d()Lq1;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    instance-of v6, v5, Lf1;

    .line 53
    .line 54
    if-eqz v6, :cond_2

    .line 55
    .line 56
    check-cast v5, Lf1;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string v1, "illegal object in getInstance: "

    .line 68
    .line 69
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_3
    :goto_0
    move-object v5, v2

    .line 78
    check-cast v5, Lf1;

    .line 79
    .line 80
    :goto_1
    iput-object v5, v1, Lya;->a:Lf1;

    .line 81
    .line 82
    invoke-virtual {p0}, Lv1;->size()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-ne v2, v4, :cond_4

    .line 87
    .line 88
    invoke-virtual {p0, v3}, Lv1;->C(I)Lb0;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    iput-object p0, v1, Lya;->b:Lb0;

    .line 93
    .line 94
    return-object v1

    .line 95
    :cond_4
    iput-object v0, v1, Lya;->b:Lb0;

    .line 96
    .line 97
    return-object v1

    .line 98
    :cond_5
    const-string v1, "Bad sequence size: "

    .line 99
    .line 100
    invoke-virtual {p0}, Lv1;->size()I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    invoke-static {p0, v1}, Lz5;->c(ILjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_6
    return-object v0
.end method


# virtual methods
.method public final d()Lq1;
    .locals 2

    .line 1
    new-instance v0, Lc0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lc0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lya;->a:Lf1;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lc0;->a(Lb0;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lya;->b:Lb0;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lc0;->a(Lb0;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    new-instance p0, Lt82;

    .line 20
    .line 21
    invoke-direct {p0, v0}, Lv1;-><init>(Lc0;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lt82;->c:I

    .line 26
    .line 27
    return-object p0
.end method
