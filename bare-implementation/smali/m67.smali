.class public final Lm67;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:Z

.field public final e:Z

.field public f:Lm67;

.field public g:Lm67;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    .line 19
    new-array v0, v0, [B

    iput-object v0, p0, Lm67;->a:[B

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lm67;->e:Z

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lm67;->d:Z

    return-void
.end method

.method public constructor <init>([BIIZZ)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lm67;->a:[B

    .line 8
    .line 9
    iput p2, p0, Lm67;->b:I

    .line 10
    .line 11
    iput p3, p0, Lm67;->c:I

    .line 12
    .line 13
    iput-boolean p4, p0, Lm67;->d:Z

    .line 14
    .line 15
    iput-boolean p5, p0, Lm67;->e:Z

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a()Lm67;
    .locals 4

    .line 1
    iget-object v0, p0, Lm67;->f:Lm67;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq v0, p0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move-object v0, v1

    .line 8
    :goto_0
    iget-object v2, p0, Lm67;->g:Lm67;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Lm67;->f:Lm67;

    .line 14
    .line 15
    iput-object v3, v2, Lm67;->f:Lm67;

    .line 16
    .line 17
    iget-object v2, p0, Lm67;->f:Lm67;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lm67;->g:Lm67;

    .line 23
    .line 24
    iput-object v3, v2, Lm67;->g:Lm67;

    .line 25
    .line 26
    iput-object v1, p0, Lm67;->f:Lm67;

    .line 27
    .line 28
    iput-object v1, p0, Lm67;->g:Lm67;

    .line 29
    .line 30
    return-object v0
.end method

.method public final b(Lm67;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p0, p1, Lm67;->g:Lm67;

    .line 5
    .line 6
    iget-object v0, p0, Lm67;->f:Lm67;

    .line 7
    .line 8
    iput-object v0, p1, Lm67;->f:Lm67;

    .line 9
    .line 10
    iget-object v0, p0, Lm67;->f:Lm67;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iput-object p1, v0, Lm67;->g:Lm67;

    .line 16
    .line 17
    iput-object p1, p0, Lm67;->f:Lm67;

    .line 18
    .line 19
    return-void
.end method

.method public final c()Lm67;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lm67;->d:Z

    .line 3
    .line 4
    new-instance v1, Lm67;

    .line 5
    .line 6
    iget v3, p0, Lm67;->b:I

    .line 7
    .line 8
    iget v4, p0, Lm67;->c:I

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    iget-object v2, p0, Lm67;->a:[B

    .line 13
    .line 14
    invoke-direct/range {v1 .. v6}, Lm67;-><init>([BIIZZ)V

    .line 15
    .line 16
    .line 17
    return-object v1
.end method

.method public final d(Lm67;I)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p1, Lm67;->e:Z

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget v5, p1, Lm67;->c:I

    .line 9
    .line 10
    add-int v0, v5, p2

    .line 11
    .line 12
    const/16 v1, 0x2000

    .line 13
    .line 14
    if-le v0, v1, :cond_2

    .line 15
    .line 16
    iget-boolean v2, p1, Lm67;->d:Z

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    iget v4, p1, Lm67;->b:I

    .line 21
    .line 22
    sub-int/2addr v0, v4

    .line 23
    if-gt v0, v1, :cond_0

    .line 24
    .line 25
    iget-object v1, p1, Lm67;->a:[B

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v6, 0x2

    .line 29
    move-object v2, v1

    .line 30
    invoke-static/range {v1 .. v6}, Lx50;->j0([B[BIIII)V

    .line 31
    .line 32
    .line 33
    iget v0, p1, Lm67;->c:I

    .line 34
    .line 35
    iget v1, p1, Lm67;->b:I

    .line 36
    .line 37
    sub-int/2addr v0, v1

    .line 38
    iput v0, p1, Lm67;->c:I

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput v0, p1, Lm67;->b:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-static {}, Lc6;->b()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    invoke-static {}, Lc6;->b()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    :goto_0
    iget-object v0, p1, Lm67;->a:[B

    .line 53
    .line 54
    iget v1, p1, Lm67;->c:I

    .line 55
    .line 56
    iget v2, p0, Lm67;->b:I

    .line 57
    .line 58
    add-int v3, v2, p2

    .line 59
    .line 60
    iget-object v4, p0, Lm67;->a:[B

    .line 61
    .line 62
    invoke-static {v4, v1, v2, v0, v3}, Lx50;->h0([BII[BI)V

    .line 63
    .line 64
    .line 65
    iget v0, p1, Lm67;->c:I

    .line 66
    .line 67
    add-int/2addr v0, p2

    .line 68
    iput v0, p1, Lm67;->c:I

    .line 69
    .line 70
    iget p1, p0, Lm67;->b:I

    .line 71
    .line 72
    add-int/2addr p1, p2

    .line 73
    iput p1, p0, Lm67;->b:I

    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    const-string p0, "only owner can write"

    .line 77
    .line 78
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method
