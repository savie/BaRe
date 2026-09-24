.class public final Lbt2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final h:Ljava/util/BitSet;

.field public static final i:Ljava/util/BitSet;


# instance fields
.field public final a:Ljava/util/BitSet;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/BitSet;

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lbt2;->h:Ljava/util/BitSet;

    .line 9
    .line 10
    new-instance v0, Ljava/util/BitSet;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lbt2;->i:Ljava/util/BitSet;

    .line 16
    .line 17
    const/16 v0, 0x11

    .line 18
    .line 19
    new-array v1, v0, [C

    .line 20
    .line 21
    fill-array-data v1, :array_0

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    move v3, v2

    .line 26
    :goto_0
    if-ge v3, v0, :cond_0

    .line 27
    .line 28
    aget-char v4, v1, v3

    .line 29
    .line 30
    sget-object v5, Lbt2;->h:Ljava/util/BitSet;

    .line 31
    .line 32
    invoke-virtual {v5, v4}, Ljava/util/BitSet;->set(I)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x4

    .line 39
    new-array v1, v0, [C

    .line 40
    .line 41
    fill-array-data v1, :array_1

    .line 42
    .line 43
    .line 44
    :goto_1
    if-ge v2, v0, :cond_1

    .line 45
    .line 46
    aget-char v3, v1, v2

    .line 47
    .line 48
    sget-object v4, Lbt2;->i:Ljava/util/BitSet;

    .line 49
    .line 50
    invoke-virtual {v4, v3}, Ljava/util/BitSet;->set(I)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    return-void

    .line 57
    :array_0
    .array-data 2
        0x28s
        0x29s
        0x3cs
        0x3es
        0x40s
        0x2cs
        0x3bs
        0x3as
        0x5cs
        0x22s
        0x2fs
        0x5bs
        0x5ds
        0x3fs
        0x3ds
        0x7bs
        0x7ds
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    nop

    .line 79
    :array_1
    .array-data 2
        0x22s
        0x2cs
        0x3bs
        0x5cs
    .end array-data
.end method

.method public constructor <init>(Ljava/util/BitSet;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbt2;->a:Ljava/util/BitSet;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lbt2;->e:I

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lbt2;->b:Z

    .line 11
    .line 12
    iput-boolean p1, p0, Lbt2;->c:Z

    .line 13
    .line 14
    iput-boolean p1, p0, Lbt2;->d:Z

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lbt2;->g:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a(CI)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/16 v2, 0x20

    .line 4
    .line 5
    if-eq p1, v2, :cond_4

    .line 6
    .line 7
    const/16 v3, 0x9

    .line 8
    .line 9
    if-ne p1, v3, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    if-le p1, v2, :cond_3

    .line 13
    .line 14
    const/16 v2, 0x7f

    .line 15
    .line 16
    if-ge p1, v2, :cond_3

    .line 17
    .line 18
    iget-object v2, p0, Lbt2;->a:Ljava/util/BitSet;

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/util/BitSet;->get(I)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-boolean p1, p0, Lbt2;->b:Z

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iput p2, p0, Lbt2;->e:I

    .line 32
    .line 33
    iput-boolean v1, p0, Lbt2;->c:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Lbt2;->b:Z

    .line 36
    .line 37
    :cond_2
    iget-boolean p0, p0, Lbt2;->d:Z

    .line 38
    .line 39
    xor-int/2addr p0, v1

    .line 40
    return p0

    .line 41
    :cond_3
    :goto_0
    return v0

    .line 42
    :cond_4
    :goto_1
    iget-boolean p1, p0, Lbt2;->c:Z

    .line 43
    .line 44
    if-eqz p1, :cond_5

    .line 45
    .line 46
    iput p2, p0, Lbt2;->f:I

    .line 47
    .line 48
    iput-boolean v0, p0, Lbt2;->c:Z

    .line 49
    .line 50
    iput-boolean v1, p0, Lbt2;->d:Z

    .line 51
    .line 52
    :cond_5
    return v1
.end method

.method public final b(ILjava/lang/String;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lbt2;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lbt2;->f:I

    .line 8
    .line 9
    iput-boolean v2, p0, Lbt2;->c:Z

    .line 10
    .line 11
    iput-boolean v1, p0, Lbt2;->d:Z

    .line 12
    .line 13
    :cond_0
    iget-boolean p1, p0, Lbt2;->d:Z

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget p1, p0, Lbt2;->e:I

    .line 18
    .line 19
    iget v0, p0, Lbt2;->f:I

    .line 20
    .line 21
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lbt2;->g:Ljava/lang/String;

    .line 26
    .line 27
    return v1

    .line 28
    :cond_1
    return v2
.end method
