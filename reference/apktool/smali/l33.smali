.class public final Ll33;
.super Ly0;


# instance fields
.field public a:I

.field public b:[B

.field public c:[B

.field public d:[B

.field public e:Ln33;


# direct methods
.method public static k(Lq1;)Ll33;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    new-instance v1, Ll33;

    .line 5
    .line 6
    invoke-static {p0}, Lv1;->B(Ljava/lang/Object;)Lv1;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p0, v2}, Lv1;->C(I)Lb0;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {v3}, Lt0;->x(Ljava/lang/Object;)Lt0;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Lt0;->C()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    iput v3, v1, Ll33;->a:I

    .line 27
    .line 28
    if-nez v3, :cond_3

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    invoke-virtual {p0, v3}, Lv1;->C(I)Lb0;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v3}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iget-object v3, v3, Lj1;->a:[B

    .line 40
    .line 41
    invoke-static {v3}, Lms8;->k([B)[B

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iput-object v3, v1, Ll33;->b:[B

    .line 46
    .line 47
    const/4 v3, 0x2

    .line 48
    invoke-virtual {p0, v3}, Lv1;->C(I)Lb0;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v3}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iget-object v3, v3, Lj1;->a:[B

    .line 57
    .line 58
    invoke-static {v3}, Lms8;->k([B)[B

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iput-object v3, v1, Ll33;->c:[B

    .line 63
    .line 64
    const/4 v3, 0x3

    .line 65
    invoke-virtual {p0, v3}, Lv1;->C(I)Lb0;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-static {v3}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    iget-object v3, v3, Lj1;->a:[B

    .line 74
    .line 75
    invoke-static {v3}, Lms8;->k([B)[B

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    iput-object v3, v1, Ll33;->d:[B

    .line 80
    .line 81
    invoke-virtual {p0}, Lv1;->size()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    const/4 v4, 0x5

    .line 86
    if-ne v3, v4, :cond_2

    .line 87
    .line 88
    const/4 v3, 0x4

    .line 89
    invoke-virtual {p0, v3}, Lv1;->C(I)Lb0;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    instance-of v3, p0, Ln33;

    .line 94
    .line 95
    if-eqz v3, :cond_0

    .line 96
    .line 97
    move-object v0, p0

    .line 98
    check-cast v0, Ln33;

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    if-eqz p0, :cond_1

    .line 102
    .line 103
    new-instance v0, Ln33;

    .line 104
    .line 105
    invoke-static {p0}, Lv1;->B(Ljava/lang/Object;)Lv1;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v2}, Lv1;->C(I)Lb0;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-static {p0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    iget-object p0, p0, Lj1;->a:[B

    .line 121
    .line 122
    invoke-static {p0}, Lms8;->k([B)[B

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    iput-object p0, v0, Ln33;->a:[B

    .line 127
    .line 128
    :cond_1
    :goto_0
    iput-object v0, v1, Ll33;->e:Ln33;

    .line 129
    .line 130
    :cond_2
    return-object v1

    .line 131
    :cond_3
    const-string p0, "unrecognized version"

    .line 132
    .line 133
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_4
    return-object v0
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
    iget v2, p0, Ll33;->a:I

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
    iget-object v2, p0, Ll33;->b:[B

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
    iget-object v2, p0, Ll33;->c:[B

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
    iget-object v2, p0, Ll33;->d:[B

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
    iget-object p0, p0, Ll33;->e:Ln33;

    .line 48
    .line 49
    if-eqz p0, :cond_0

    .line 50
    .line 51
    new-instance v1, Ln33;

    .line 52
    .line 53
    iget-object p0, p0, Ln33;->a:[B

    .line 54
    .line 55
    invoke-direct {v1, p0}, Ln33;-><init>([B)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lc0;->a(Lb0;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    new-instance p0, Lt82;

    .line 62
    .line 63
    invoke-direct {p0, v0}, Lv1;-><init>(Lc0;)V

    .line 64
    .line 65
    .line 66
    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lt82;->c:I

    .line 68
    .line 69
    return-object p0
.end method
