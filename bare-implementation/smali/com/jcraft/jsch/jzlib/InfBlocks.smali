.class final Lcom/jcraft/jsch/jzlib/InfBlocks;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final A:[I

.field public static final z:[I


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:[I

.field public final f:[I

.field public final g:[I

.field public final h:[I

.field public final i:[I

.field public final j:[[I

.field public final k:[[I

.field public final l:[I

.field public final m:[I

.field public final n:Lcom/jcraft/jsch/jzlib/InfCodes;

.field public o:I

.field public p:I

.field public q:I

.field public r:[I

.field public s:[B

.field public final t:I

.field public u:I

.field public v:I

.field public final w:Z

.field public final x:Lcom/jcraft/jsch/jzlib/InfTree;

.field public final y:Lcom/jcraft/jsch/jzlib/ZStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:[I

    .line 9
    .line 10
    const/16 v0, 0x13

    .line 11
    .line 12
    new-array v0, v0, [I

    .line 13
    .line 14
    fill-array-data v0, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->A:[I

    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
    .end array-data

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    :array_1
    .array-data 4
        0x10
        0x11
        0x12
        0x0
        0x8
        0x7
        0x9
        0x6
        0xa
        0x5
        0xb
        0x4
        0xc
        0x3
        0xd
        0x2
        0xe
        0x1
        0xf
    .end array-data
.end method

.method public constructor <init>(Lcom/jcraft/jsch/jzlib/ZStream;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v1, v0, [I

    .line 6
    .line 7
    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->f:[I

    .line 8
    .line 9
    new-array v1, v0, [I

    .line 10
    .line 11
    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->g:[I

    .line 12
    .line 13
    new-array v1, v0, [I

    .line 14
    .line 15
    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->h:[I

    .line 16
    .line 17
    new-array v1, v0, [I

    .line 18
    .line 19
    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->i:[I

    .line 20
    .line 21
    new-array v1, v0, [[I

    .line 22
    .line 23
    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->j:[[I

    .line 24
    .line 25
    new-array v1, v0, [[I

    .line 26
    .line 27
    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->k:[[I

    .line 28
    .line 29
    new-array v1, v0, [I

    .line 30
    .line 31
    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->l:[I

    .line 32
    .line 33
    new-array v1, v0, [I

    .line 34
    .line 35
    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->m:[I

    .line 36
    .line 37
    new-instance v1, Lcom/jcraft/jsch/jzlib/InfTree;

    .line 38
    .line 39
    invoke-direct {v1}, Lcom/jcraft/jsch/jzlib/InfTree;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->x:Lcom/jcraft/jsch/jzlib/InfTree;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->y:Lcom/jcraft/jsch/jzlib/ZStream;

    .line 45
    .line 46
    new-instance v1, Lcom/jcraft/jsch/jzlib/InfCodes;

    .line 47
    .line 48
    invoke-direct {v1, p1, p0}, Lcom/jcraft/jsch/jzlib/InfCodes;-><init>(Lcom/jcraft/jsch/jzlib/ZStream;Lcom/jcraft/jsch/jzlib/InfBlocks;)V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->n:Lcom/jcraft/jsch/jzlib/InfCodes;

    .line 52
    .line 53
    const/16 v1, 0x10e0

    .line 54
    .line 55
    new-array v1, v1, [I

    .line 56
    .line 57
    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->r:[I

    .line 58
    .line 59
    new-array v1, p2, [B

    .line 60
    .line 61
    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->s:[B

    .line 62
    .line 63
    iput p2, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->t:I

    .line 64
    .line 65
    iget-object p1, p1, Lcom/jcraft/jsch/jzlib/ZStream;->k:Lcom/jcraft/jsch/jzlib/Inflate;

    .line 66
    .line 67
    iget p1, p1, Lcom/jcraft/jsch/jzlib/Inflate;->d:I

    .line 68
    .line 69
    const/4 p2, 0x0

    .line 70
    if-nez p1, :cond_0

    .line 71
    .line 72
    move v0, p2

    .line 73
    :cond_0
    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->w:Z

    .line 74
    .line 75
    iput p2, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->a:I

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/jcraft/jsch/jzlib/InfBlocks;->b()V

    .line 78
    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->y:Lcom/jcraft/jsch/jzlib/ZStream;

    .line 2
    .line 3
    iget v1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->f:I

    .line 4
    .line 5
    iget v2, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->u:I

    .line 6
    .line 7
    iget v3, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 8
    .line 9
    iget v4, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->t:I

    .line 10
    .line 11
    if-gt v2, v3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v3, v4

    .line 15
    :goto_0
    sub-int/2addr v3, v2

    .line 16
    iget v5, v0, Lcom/jcraft/jsch/jzlib/ZStream;->g:I

    .line 17
    .line 18
    if-le v3, v5, :cond_1

    .line 19
    .line 20
    move v3, v5

    .line 21
    :cond_1
    const/4 v6, -0x5

    .line 22
    const/4 v7, 0x0

    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    if-ne p1, v6, :cond_2

    .line 26
    .line 27
    move p1, v7

    .line 28
    :cond_2
    sub-int/2addr v5, v3

    .line 29
    iput v5, v0, Lcom/jcraft/jsch/jzlib/ZStream;->g:I

    .line 30
    .line 31
    iget-wide v8, v0, Lcom/jcraft/jsch/jzlib/ZStream;->h:J

    .line 32
    .line 33
    int-to-long v10, v3

    .line 34
    add-long/2addr v8, v10

    .line 35
    iput-wide v8, v0, Lcom/jcraft/jsch/jzlib/ZStream;->h:J

    .line 36
    .line 37
    iget-boolean v5, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->w:Z

    .line 38
    .line 39
    if-eqz v5, :cond_3

    .line 40
    .line 41
    if-lez v3, :cond_3

    .line 42
    .line 43
    iget-object v8, v0, Lcom/jcraft/jsch/jzlib/ZStream;->l:Lcom/jcraft/jsch/jzlib/Checksum;

    .line 44
    .line 45
    iget-object v9, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->s:[B

    .line 46
    .line 47
    invoke-interface {v8, v9, v2, v3}, Lcom/jcraft/jsch/jzlib/Checksum;->update([BII)V

    .line 48
    .line 49
    .line 50
    :cond_3
    iget-object v8, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->s:[B

    .line 51
    .line 52
    iget-object v9, v0, Lcom/jcraft/jsch/jzlib/ZStream;->e:[B

    .line 53
    .line 54
    invoke-static {v8, v2, v9, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    .line 56
    .line 57
    add-int/2addr v1, v3

    .line 58
    add-int/2addr v2, v3

    .line 59
    if-ne v2, v4, :cond_8

    .line 60
    .line 61
    iget v2, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 62
    .line 63
    if-ne v2, v4, :cond_4

    .line 64
    .line 65
    iput v7, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 66
    .line 67
    :cond_4
    iget v2, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 68
    .line 69
    iget v3, v0, Lcom/jcraft/jsch/jzlib/ZStream;->g:I

    .line 70
    .line 71
    if-le v2, v3, :cond_5

    .line 72
    .line 73
    move v2, v3

    .line 74
    :cond_5
    if-eqz v2, :cond_6

    .line 75
    .line 76
    if-ne p1, v6, :cond_6

    .line 77
    .line 78
    move p1, v7

    .line 79
    :cond_6
    sub-int/2addr v3, v2

    .line 80
    iput v3, v0, Lcom/jcraft/jsch/jzlib/ZStream;->g:I

    .line 81
    .line 82
    iget-wide v3, v0, Lcom/jcraft/jsch/jzlib/ZStream;->h:J

    .line 83
    .line 84
    int-to-long v8, v2

    .line 85
    add-long/2addr v3, v8

    .line 86
    iput-wide v3, v0, Lcom/jcraft/jsch/jzlib/ZStream;->h:J

    .line 87
    .line 88
    if-eqz v5, :cond_7

    .line 89
    .line 90
    if-lez v2, :cond_7

    .line 91
    .line 92
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/ZStream;->l:Lcom/jcraft/jsch/jzlib/Checksum;

    .line 93
    .line 94
    iget-object v4, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->s:[B

    .line 95
    .line 96
    invoke-interface {v3, v4, v7, v2}, Lcom/jcraft/jsch/jzlib/Checksum;->update([BII)V

    .line 97
    .line 98
    .line 99
    :cond_7
    iget-object v3, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->s:[B

    .line 100
    .line 101
    iget-object v4, v0, Lcom/jcraft/jsch/jzlib/ZStream;->e:[B

    .line 102
    .line 103
    invoke-static {v3, v7, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    .line 105
    .line 106
    add-int/2addr v1, v2

    .line 107
    :cond_8
    iput v1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->f:I

    .line 108
    .line 109
    iput v2, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->u:I

    .line 110
    .line 111
    return p1
.end method

.method public final b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->a:I

    .line 3
    .line 4
    iput v0, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 5
    .line 6
    iput v0, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 7
    .line 8
    iput v0, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 9
    .line 10
    iput v0, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->u:I

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->w:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->y:Lcom/jcraft/jsch/jzlib/ZStream;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->l:Lcom/jcraft/jsch/jzlib/Checksum;

    .line 19
    .line 20
    invoke-interface {p0}, Lcom/jcraft/jsch/jzlib/Checksum;->reset()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
