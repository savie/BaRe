.class public final Lre6;
.super Ljava/lang/Object;

# interfaces
.implements Lz61;


# static fields
.field public static final n:Lre6;

.field public static final p:Lre6;

.field public static final q:Lre6;

.field public static final r:Lre6;

.field public static final t:Lre6;

.field public static final x:Lre6;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Lq15;

.field public final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lre6;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, v2}, Lre6;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lre6;->n:Lre6;

    .line 9
    .line 10
    new-instance v0, Lre6;

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    invoke-direct {v0, v1, v3}, Lre6;-><init>(II)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lre6;->p:Lre6;

    .line 17
    .line 18
    new-instance v0, Lre6;

    .line 19
    .line 20
    invoke-direct {v0, v1, v1}, Lre6;-><init>(II)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lre6;->q:Lre6;

    .line 24
    .line 25
    new-instance v0, Lre6;

    .line 26
    .line 27
    const/4 v4, 0x5

    .line 28
    invoke-direct {v0, v4, v2}, Lre6;-><init>(II)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lre6;->r:Lre6;

    .line 32
    .line 33
    new-instance v0, Lre6;

    .line 34
    .line 35
    invoke-direct {v0, v4, v3}, Lre6;-><init>(II)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lre6;->t:Lre6;

    .line 39
    .line 40
    new-instance v0, Lre6;

    .line 41
    .line 42
    invoke-direct {v0, v4, v1}, Lre6;-><init>(II)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lre6;->x:Lre6;

    .line 46
    .line 47
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x5

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    const/16 p1, 0x60

    .line 11
    .line 12
    iput p1, p0, Lre6;->a:I

    .line 13
    .line 14
    const/16 p1, 0x24

    .line 15
    .line 16
    iput p1, p0, Lre6;->b:I

    .line 17
    .line 18
    const/16 p1, 0x40

    .line 19
    .line 20
    iput p1, p0, Lre6;->c:I

    .line 21
    .line 22
    new-instance p1, Lkr6;

    .line 23
    .line 24
    invoke-direct {p1}, Lkr6;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lre6;->f:Lq15;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string p0, "No valid version. Please choose one of the following: 3, 5"

    .line 31
    .line 32
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    throw p0

    .line 37
    :cond_1
    const/16 p1, 0x44

    .line 38
    .line 39
    iput p1, p0, Lre6;->a:I

    .line 40
    .line 41
    const/16 p1, 0x20

    .line 42
    .line 43
    iput p1, p0, Lre6;->b:I

    .line 44
    .line 45
    const/16 p1, 0x30

    .line 46
    .line 47
    iput p1, p0, Lre6;->c:I

    .line 48
    .line 49
    new-instance p1, Lir6;

    .line 50
    .line 51
    invoke-direct {p1}, Lq15;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Lzh8;->r(Lhl2;)Lff9;

    .line 55
    .line 56
    .line 57
    invoke-static {}, Le42;->a()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lir6;->reset()V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Lre6;->f:Lq15;

    .line 64
    .line 65
    :goto_0
    iget p1, p0, Lre6;->a:I

    .line 66
    .line 67
    iget v0, p0, Lre6;->b:I

    .line 68
    .line 69
    add-int/2addr p1, v0

    .line 70
    iget v1, p0, Lre6;->c:I

    .line 71
    .line 72
    add-int/2addr p1, v1

    .line 73
    iput p1, p0, Lre6;->d:I

    .line 74
    .line 75
    add-int/2addr v0, v1

    .line 76
    iput v0, p0, Lre6;->e:I

    .line 77
    .line 78
    iput p2, p0, Lre6;->k:I

    .line 79
    .line 80
    return-void
.end method
