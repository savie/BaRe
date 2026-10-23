.class public final Lv77;
.super Lt65;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final x:Lkf2;

.field public static final y:I


# instance fields
.field public final r:Lr56;

.field public final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkf2;

    .line 2
    .line 3
    sget v1, Lr56;->v:I

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v1, Ljf2;->a:Ljf2;

    .line 9
    .line 10
    iput-object v1, v0, Lkf2;->a:Las5;

    .line 11
    .line 12
    sget-object v1, Lre2;->d:Lre2;

    .line 13
    .line 14
    iput-object v1, v0, Lkf2;->b:Las5;

    .line 15
    .line 16
    new-instance v1, Lz77;

    .line 17
    .line 18
    const-string v2, " "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Lz77;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, v0, Lkf2;->c:Lz77;

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    const/16 v3, 0x3a

    .line 27
    .line 28
    invoke-static {v3, v1}, Lfz5;->a(CI)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, v0, Lkf2;->e:Ljava/lang/String;

    .line 33
    .line 34
    const/16 v1, 0x2c

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    invoke-static {v1, v3}, Lfz5;->a(CI)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iput-object v4, v0, Lkf2;->f:Ljava/lang/String;

    .line 42
    .line 43
    iput-object v2, v0, Lkf2;->k:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v1, v3}, Lfz5;->a(CI)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, v0, Lkf2;->n:Ljava/lang/String;

    .line 50
    .line 51
    iput-object v2, v0, Lkf2;->p:Ljava/lang/String;

    .line 52
    .line 53
    sput-object v0, Lv77;->x:Lkf2;

    .line 54
    .line 55
    const-class v0, Lx77;

    .line 56
    .line 57
    invoke-static {v0}, Ls65;->b(Ljava/lang/Class;)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    sput v0, Lv77;->y:I

    .line 62
    .line 63
    return-void
.end method

.method public constructor <init>(Len0;Lun7;Ljg7;Lop6;Lmp7;Lcd2;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lt65;-><init>(Len0;Lun7;Ljg7;Lop6;Lmp7;Lcd2;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lv77;->y:I

    .line 5
    .line 6
    iput p1, p0, Lv77;->t:I

    .line 7
    .line 8
    sget-object p1, Lv77;->x:Lkf2;

    .line 9
    .line 10
    iput-object p1, p0, Lv77;->r:Lr56;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lv77;JI)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lt65;-><init>(Lt65;J)V

    .line 14
    iput p4, p0, Lv77;->t:I

    .line 15
    iget-object p1, p1, Lv77;->r:Lr56;

    iput-object p1, p0, Lv77;->r:Lr56;

    return-void
.end method


# virtual methods
.method public final h(Lad2;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lt65;->n:Lcd2;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lad2;->b()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    iget p0, p0, Lcd2;->b:I

    .line 16
    .line 17
    invoke-interface {p1, p0}, Lah4;->a(I)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_0
    sget p0, Lyj8;->a:I

    .line 23
    .line 24
    const-string p0, "Internal error: this code path should never get executed"

    .line 25
    .line 26
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return p0

    .line 31
    :cond_1
    iget p0, p0, Lcd2;->a:I

    .line 32
    .line 33
    invoke-interface {p1, p0}, Lah4;->a(I)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    return p0
.end method

.method public final j(J)Lt65;
    .locals 2

    .line 1
    new-instance v0, Lv77;

    .line 2
    .line 3
    iget v1, p0, Lv77;->t:I

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2, v1}, Lv77;-><init>(Lv77;JI)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final k(Lgc8;)Lwo0;
    .locals 3

    .line 1
    iget-object v0, p0, Ls65;->b:Len0;

    .line 2
    .line 3
    iget-object v0, v0, Len0;->b:Ljb9;

    .line 4
    .line 5
    check-cast v0, Lxo0;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Lxo0;->p0(Ls65;Lgc8;)Lwo0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p1, Lgc8;->f:Ljava/lang/Class;

    .line 15
    .line 16
    if-nez v0, :cond_5

    .line 17
    .line 18
    invoke-virtual {p1}, Lgc8;->x0()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    instance-of v0, p1, Lt50;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {v1}, Lu81;->p(Ljava/lang/Class;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    const-class v0, Ljava/util/Collection;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    const-class v0, Ljava/util/Map;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const/16 v2, 0x24

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-lez v0, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-static {p0, p1, p0}, Lxo0;->q0(Ls65;Lgc8;Ls65;)Lhd;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {p0, p1, v0}, Lwo0;->d(Ls65;Lgc8;Lhd;)Lwo0;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 74
    :goto_1
    if-nez v0, :cond_5

    .line 75
    .line 76
    invoke-static {p0, p1, p0}, Lxo0;->q0(Ls65;Lgc8;Ls65;)Lhd;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v1}, Lu81;->s(Ljava/lang/Class;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    new-instance v1, Lzd2;

    .line 87
    .line 88
    invoke-direct {v1, p0, v0}, Lzd2;-><init>(Lv77;Lhd;)V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    new-instance v1, Lae2;

    .line 93
    .line 94
    const-string v2, "set"

    .line 95
    .line 96
    invoke-direct {v1, p0, v2}, Lae2;-><init>(Lv77;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :goto_2
    new-instance v2, Lxv5;

    .line 100
    .line 101
    invoke-direct {v2, p0, p1, v0, v1}, Lxv5;-><init>(Lv77;Lgc8;Lhd;Lae2;)V

    .line 102
    .line 103
    .line 104
    new-instance p0, Lwo0;

    .line 105
    .line 106
    invoke-direct {p0, v2}, Lwo0;-><init>(Lxv5;)V

    .line 107
    .line 108
    .line 109
    return-object p0

    .line 110
    :cond_5
    return-object v0
.end method

.method public final l(Lx77;)Z
    .locals 0

    .line 1
    iget p0, p0, Lv77;->t:I

    .line 2
    .line 3
    iget p1, p1, Lx77;->b:I

    .line 4
    .line 5
    and-int/2addr p0, p1

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method
