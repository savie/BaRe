.class public final Lgk7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final p:Lqr2;

.field public static final q:Lrr2;

.field public static final r:Lsr2;

.field public static final s:Ltr2;

.field public static final t:Lur2;

.field public static final u:Lpr2;


# instance fields
.field public a:F

.field public b:F

.field public c:Z

.field public final d:Ljava/lang/Object;

.field public final e:Lwx3;

.field public f:Z

.field public final g:F

.field public final h:F

.field public i:J

.field public j:F

.field public final k:Ljava/util/ArrayList;

.field public final l:Ljava/util/ArrayList;

.field public m:Lhk7;

.field public n:F

.field public o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lqr2;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lgk7;->p:Lqr2;

    .line 7
    .line 8
    new-instance v0, Lrr2;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lgk7;->q:Lrr2;

    .line 14
    .line 15
    new-instance v0, Lsr2;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lgk7;->r:Lsr2;

    .line 21
    .line 22
    new-instance v0, Ltr2;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lgk7;->s:Ltr2;

    .line 28
    .line 29
    new-instance v0, Lur2;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lgk7;->t:Lur2;

    .line 35
    .line 36
    new-instance v0, Lpr2;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lgk7;->u:Lpr2;

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lwx3;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lgk7;->a:F

    .line 6
    .line 7
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 8
    .line 9
    .line 10
    iput v0, p0, Lgk7;->b:F

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Lgk7;->c:Z

    .line 14
    .line 15
    iput-boolean v1, p0, Lgk7;->f:Z

    .line 16
    .line 17
    iput v0, p0, Lgk7;->g:F

    .line 18
    .line 19
    const v2, -0x800001

    .line 20
    .line 21
    .line 22
    iput v2, p0, Lgk7;->h:F

    .line 23
    .line 24
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    iput-wide v2, p0, Lgk7;->i:J

    .line 27
    .line 28
    new-instance v2, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Lgk7;->k:Ljava/util/ArrayList;

    .line 34
    .line 35
    new-instance v2, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lgk7;->l:Ljava/util/ArrayList;

    .line 41
    .line 42
    iput-object p1, p0, Lgk7;->d:Ljava/lang/Object;

    .line 43
    .line 44
    iput-object p2, p0, Lgk7;->e:Lwx3;

    .line 45
    .line 46
    sget-object p1, Lgk7;->r:Lsr2;

    .line 47
    .line 48
    if-eq p2, p1, :cond_4

    .line 49
    .line 50
    sget-object p1, Lgk7;->s:Ltr2;

    .line 51
    .line 52
    if-eq p2, p1, :cond_4

    .line 53
    .line 54
    sget-object p1, Lgk7;->t:Lur2;

    .line 55
    .line 56
    if-ne p2, p1, :cond_0

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    sget-object p1, Lgk7;->u:Lpr2;

    .line 60
    .line 61
    if-ne p2, p1, :cond_1

    .line 62
    .line 63
    const/high16 p1, 0x3b800000    # 0.00390625f

    .line 64
    .line 65
    iput p1, p0, Lgk7;->j:F

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_1
    sget-object p1, Lgk7;->p:Lqr2;

    .line 69
    .line 70
    if-eq p2, p1, :cond_3

    .line 71
    .line 72
    sget-object p1, Lgk7;->q:Lrr2;

    .line 73
    .line 74
    if-ne p2, p1, :cond_2

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 78
    .line 79
    iput p1, p0, Lgk7;->j:F

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    :goto_0
    const p1, 0x3b03126f    # 0.002f

    .line 83
    .line 84
    .line 85
    iput p1, p0, Lgk7;->j:F

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    :goto_1
    const p1, 0x3dcccccd    # 0.1f

    .line 89
    .line 90
    .line 91
    iput p1, p0, Lgk7;->j:F

    .line 92
    .line 93
    :goto_2
    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Lgk7;->m:Lhk7;

    .line 95
    .line 96
    iput v0, p0, Lgk7;->n:F

    .line 97
    .line 98
    iput-boolean v1, p0, Lgk7;->o:Z

    .line 99
    .line 100
    return-void
.end method

.method public static b()Ldd;
    .locals 4

    .line 1
    sget-object v0, Ldd;->i:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Ldd;

    .line 10
    .line 11
    new-instance v2, Lcd;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v2, v3}, Lcd;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Ldd;-><init>(Lcd;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ldd;

    .line 28
    .line 29
    return-object v0
.end method


# virtual methods
.method public final a(F)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lgk7;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lgk7;->n:F

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lgk7;->m:Lhk7;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Lhk7;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lhk7;-><init>(F)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lgk7;->m:Lhk7;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lgk7;->m:Lhk7;

    .line 20
    .line 21
    float-to-double v1, p1

    .line 22
    iput-wide v1, v0, Lhk7;->i:D

    .line 23
    .line 24
    double-to-float p1, v1

    .line 25
    float-to-double v1, p1

    .line 26
    iget p1, p0, Lgk7;->g:F

    .line 27
    .line 28
    float-to-double v3, p1

    .line 29
    cmpl-double v3, v1, v3

    .line 30
    .line 31
    if-gtz v3, :cond_7

    .line 32
    .line 33
    iget v3, p0, Lgk7;->h:F

    .line 34
    .line 35
    float-to-double v4, v3

    .line 36
    cmpg-double v1, v1, v4

    .line 37
    .line 38
    if-ltz v1, :cond_6

    .line 39
    .line 40
    iget v1, p0, Lgk7;->j:F

    .line 41
    .line 42
    const/high16 v2, 0x3f400000    # 0.75f

    .line 43
    .line 44
    mul-float/2addr v1, v2

    .line 45
    float-to-double v1, v1

    .line 46
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    iput-wide v1, v0, Lhk7;->d:D

    .line 51
    .line 52
    const-wide v4, 0x404f400000000000L    # 62.5

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    mul-double/2addr v1, v4

    .line 58
    iput-wide v1, v0, Lhk7;->e:D

    .line 59
    .line 60
    invoke-static {}, Lgk7;->b()Ldd;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v0, v0, Ldd;->e:Lcd;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget-object v0, v0, Lcd;->c:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v0, Landroid/os/Looper;

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-ne v1, v0, :cond_5

    .line 82
    .line 83
    iget-boolean v0, p0, Lgk7;->f:Z

    .line 84
    .line 85
    if-nez v0, :cond_4

    .line 86
    .line 87
    if-nez v0, :cond_4

    .line 88
    .line 89
    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lgk7;->f:Z

    .line 91
    .line 92
    iget-boolean v0, p0, Lgk7;->c:Z

    .line 93
    .line 94
    if-nez v0, :cond_2

    .line 95
    .line 96
    iget-object v0, p0, Lgk7;->e:Lwx3;

    .line 97
    .line 98
    iget-object v1, p0, Lgk7;->d:Ljava/lang/Object;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Lwx3;->m(Ljava/lang/Object;)F

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    iput v0, p0, Lgk7;->b:F

    .line 105
    .line 106
    :cond_2
    iget v0, p0, Lgk7;->b:F

    .line 107
    .line 108
    cmpl-float p1, v0, p1

    .line 109
    .line 110
    if-gtz p1, :cond_3

    .line 111
    .line 112
    cmpg-float p1, v0, v3

    .line 113
    .line 114
    if-ltz p1, :cond_3

    .line 115
    .line 116
    invoke-static {}, Lgk7;->b()Ldd;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1, p0}, Ldd;->a(Lgk7;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_3
    const-string p0, "Starting value need to be in between min value and max value"

    .line 125
    .line 126
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_4
    return-void

    .line 130
    :cond_5
    new-instance p0, Landroid/util/AndroidRuntimeException;

    .line 131
    .line 132
    const-string p1, "Animations may only be started on the same thread as the animation handler"

    .line 133
    .line 134
    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p0

    .line 138
    :cond_6
    const-string p0, "Final position of the spring cannot be less than the min value."

    .line 139
    .line 140
    invoke-static {p0}, Lg84;->j(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_7
    const-string p0, "Final position of the spring cannot be greater than the max value."

    .line 145
    .line 146
    invoke-static {p0}, Lg84;->j(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-void
.end method

.method public final c(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lgk7;->j:F

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "Minimum visible change must be positive."

    .line 10
    .line 11
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final d(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lgk7;->e:Lwx3;

    .line 2
    .line 3
    iget-object v1, p0, Lgk7;->d:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lwx3;->A(Ljava/lang/Object;F)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    :goto_0
    iget-object v0, p0, Lgk7;->l:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge p1, v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    add-int/lit8 p1, p1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lu98;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    throw p0

    .line 37
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    add-int/lit8 p0, p0, -0x1

    .line 42
    .line 43
    :goto_1
    if-ltz p0, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_2
    add-int/lit8 p0, p0, -0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lgk7;->m:Lhk7;

    .line 2
    .line 3
    iget-wide v0, v0, Lhk7;->b:D

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmpl-double v0, v0, v2

    .line 8
    .line 9
    if-lez v0, :cond_2

    .line 10
    .line 11
    invoke-static {}, Lgk7;->b()Ldd;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Ldd;->e:Lcd;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v0, v0, Lcd;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Landroid/os/Looper;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-ne v1, v0, :cond_1

    .line 33
    .line 34
    iget-boolean v0, p0, Lgk7;->f:Z

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lgk7;->o:Z

    .line 40
    .line 41
    :cond_0
    return-void

    .line 42
    :cond_1
    new-instance p0, Landroid/util/AndroidRuntimeException;

    .line 43
    .line 44
    const-string v0, "Animations may only be started on the same thread as the animation handler"

    .line 45
    .line 46
    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_2
    const-string p0, "Spring animations can only come to an end when there is damping"

    .line 51
    .line 52
    invoke-static {p0}, Lg84;->j(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
