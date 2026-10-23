.class public final Leq4;
.super Lad3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final p:[I

.field public static final q:[I


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public k:I

.field public n:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Leq4;->p:[I

    .line 9
    .line 10
    const/16 v0, 0x18

    .line 11
    .line 12
    const/16 v1, 0x30

    .line 13
    .line 14
    const/4 v2, 0x4

    .line 15
    const/16 v3, 0x8

    .line 16
    .line 17
    filled-new-array {v2, v3, v0, v1}, [I

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Leq4;->q:[I

    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :array_0
    .array-data 4
        0x40000
        0x100000
        0x200000
        0x400000
        0x400000
        0x800000
        0x800000
        0x1000000
        0x2000000
        0x4000000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x6

    .line 5
    :try_start_0
    invoke-virtual {p0, v0}, Leq4;->d(I)V
    :try_end_0
    .catch Lhf8; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 12
    .line 13
    .line 14
    throw p0
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;Lv40;)Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance v0, Ldq4;

    .line 2
    .line 3
    iget p0, p0, Leq4;->a:I

    .line 4
    .line 5
    invoke-direct {v0, p1, p0, p2}, Ldq4;-><init>(Ljava/io/InputStream;ILv40;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final b(Lpe3;Lv40;)Loe3;
    .locals 1

    .line 1
    iget v0, p0, Leq4;->e:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance p0, Lrd8;

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lrd8;-><init>(Lpe3;Lv40;)V

    .line 8
    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance v0, Lfq4;

    .line 12
    .line 13
    invoke-direct {v0, p1, p0, p2}, Lfq4;-><init>(Lpe3;Leq4;Lv40;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final c(I)V
    .locals 2

    .line 1
    const/16 v0, 0x1000

    .line 2
    .line 3
    const-string v1, " B"

    .line 4
    .line 5
    if-lt p1, v0, :cond_1

    .line 6
    .line 7
    const/high16 v0, 0x30000000

    .line 8
    .line 9
    if-gt p1, v0, :cond_0

    .line 10
    .line 11
    iput p1, p0, Leq4;->a:I

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string p0, "LZMA2 dictionary size must not exceed 768 MiB: "

    .line 15
    .line 16
    invoke-static {p1, p0, v1}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Ly5;->h(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    const-string p0, "LZMA2 dictionary size must be at least 4 KiB: "

    .line 25
    .line 26
    invoke-static {p1, p0, v1}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0}, Ly5;->h(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method public final d(I)V
    .locals 4

    .line 1
    if-ltz p1, :cond_4

    .line 2
    .line 3
    const/16 v0, 0x9

    .line 4
    .line 5
    if-gt p1, v0, :cond_4

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    iput v0, p0, Leq4;->b:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput v1, p0, Leq4;->c:I

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    iput v2, p0, Leq4;->d:I

    .line 15
    .line 16
    sget-object v3, Leq4;->p:[I

    .line 17
    .line 18
    aget v3, v3, p1

    .line 19
    .line 20
    iput v3, p0, Leq4;->a:I

    .line 21
    .line 22
    const/4 v3, 0x4

    .line 23
    if-gt p1, v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput v0, p0, Leq4;->e:I

    .line 27
    .line 28
    iput v3, p0, Leq4;->k:I

    .line 29
    .line 30
    if-gt p1, v0, :cond_0

    .line 31
    .line 32
    const/16 v0, 0x80

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/16 v0, 0x111

    .line 36
    .line 37
    :goto_0
    iput v0, p0, Leq4;->f:I

    .line 38
    .line 39
    sget-object v0, Leq4;->q:[I

    .line 40
    .line 41
    aget p1, v0, p1

    .line 42
    .line 43
    iput p1, p0, Leq4;->n:I

    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    iput v2, p0, Leq4;->e:I

    .line 47
    .line 48
    const/16 v0, 0x14

    .line 49
    .line 50
    iput v0, p0, Leq4;->k:I

    .line 51
    .line 52
    if-ne p1, v3, :cond_2

    .line 53
    .line 54
    const/16 p1, 0x10

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 v0, 0x5

    .line 58
    if-ne p1, v0, :cond_3

    .line 59
    .line 60
    const/16 p1, 0x20

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    const/16 p1, 0x40

    .line 64
    .line 65
    :goto_1
    iput p1, p0, Leq4;->f:I

    .line 66
    .line 67
    iput v1, p0, Leq4;->n:I

    .line 68
    .line 69
    return-void

    .line 70
    :cond_4
    const-string p0, "Unsupported preset: "

    .line 71
    .line 72
    invoke-static {p1, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {p0}, Ly5;->h(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method
