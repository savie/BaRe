.class public Lgr0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final e:[J


# instance fields
.field public final a:Lwu0;

.field public final b:Ljava/nio/ByteOrder;

.field public c:J

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    new-array v0, v0, [J

    .line 4
    .line 5
    sput-object v0, Lgr0;->e:[J

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    move v1, v0

    .line 9
    :goto_0
    const/16 v2, 0x3f

    .line 10
    .line 11
    if-gt v1, v2, :cond_0

    .line 12
    .line 13
    sget-object v2, Lgr0;->e:[J

    .line 14
    .line 15
    add-int/lit8 v3, v1, -0x1

    .line 16
    .line 17
    aget-wide v3, v2, v3

    .line 18
    .line 19
    shl-long/2addr v3, v0

    .line 20
    const-wide/16 v5, 0x1

    .line 21
    .line 22
    add-long/2addr v3, v5

    .line 23
    aput-wide v3, v2, v1

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lwu0;->b()Lvu0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Ll5;->J(Ljava/io/InputStream;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    new-instance p1, Lwu0;

    .line 12
    .line 13
    invoke-direct {p1, v0}, Lwu0;-><init>(Lvu0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lgr0;->a:Lwu0;

    .line 17
    .line 18
    iput-object p2, p0, Lgr0;->b:Ljava/nio/ByteOrder;

    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception p0

    .line 22
    new-instance p1, Ljava/io/UncheckedIOException;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method


# virtual methods
.method public final a(I)J
    .locals 12

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-ltz p1, :cond_6

    .line 4
    .line 5
    const/16 v2, 0x3f

    .line 6
    .line 7
    if-gt p1, v2, :cond_6

    .line 8
    .line 9
    :goto_0
    iget v2, p0, Lgr0;->d:I

    .line 10
    .line 11
    iget-object v3, p0, Lgr0;->b:Ljava/nio/ByteOrder;

    .line 12
    .line 13
    iget-object v4, p0, Lgr0;->a:Lwu0;

    .line 14
    .line 15
    if-ge v2, p1, :cond_2

    .line 16
    .line 17
    const/16 v5, 0x39

    .line 18
    .line 19
    if-ge v2, v5, :cond_2

    .line 20
    .line 21
    invoke-virtual {v4}, Lwu0;->read()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    int-to-long v4, v2

    .line 26
    cmp-long v2, v4, v0

    .line 27
    .line 28
    if-gez v2, :cond_0

    .line 29
    .line 30
    const-wide/16 p0, -0x1

    .line 31
    .line 32
    return-wide p0

    .line 33
    :cond_0
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 34
    .line 35
    iget-wide v6, p0, Lgr0;->c:J

    .line 36
    .line 37
    const/16 v8, 0x8

    .line 38
    .line 39
    if-ne v3, v2, :cond_1

    .line 40
    .line 41
    iget v2, p0, Lgr0;->d:I

    .line 42
    .line 43
    shl-long v2, v4, v2

    .line 44
    .line 45
    or-long/2addr v2, v6

    .line 46
    iput-wide v2, p0, Lgr0;->c:J

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    shl-long v2, v6, v8

    .line 50
    .line 51
    or-long/2addr v2, v4

    .line 52
    iput-wide v2, p0, Lgr0;->c:J

    .line 53
    .line 54
    :goto_1
    iget v2, p0, Lgr0;->d:I

    .line 55
    .line 56
    add-int/2addr v2, v8

    .line 57
    iput v2, p0, Lgr0;->d:I

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    if-ge v2, p1, :cond_5

    .line 61
    .line 62
    sub-int v2, p1, v2

    .line 63
    .line 64
    rsub-int/lit8 v5, v2, 0x8

    .line 65
    .line 66
    invoke-virtual {v4}, Lwu0;->read()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    int-to-long v6, v4

    .line 71
    cmp-long v0, v6, v0

    .line 72
    .line 73
    if-gez v0, :cond_3

    .line 74
    .line 75
    return-wide v6

    .line 76
    :cond_3
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 77
    .line 78
    sget-object v1, Lgr0;->e:[J

    .line 79
    .line 80
    if-ne v3, v0, :cond_4

    .line 81
    .line 82
    aget-wide v3, v1, v2

    .line 83
    .line 84
    and-long/2addr v3, v6

    .line 85
    iget-wide v8, p0, Lgr0;->c:J

    .line 86
    .line 87
    iget v0, p0, Lgr0;->d:I

    .line 88
    .line 89
    shl-long/2addr v3, v0

    .line 90
    or-long/2addr v3, v8

    .line 91
    iput-wide v3, p0, Lgr0;->c:J

    .line 92
    .line 93
    ushr-long v2, v6, v2

    .line 94
    .line 95
    aget-wide v6, v1, v5

    .line 96
    .line 97
    and-long/2addr v2, v6

    .line 98
    goto :goto_2

    .line 99
    :cond_4
    iget-wide v3, p0, Lgr0;->c:J

    .line 100
    .line 101
    shl-long/2addr v3, v2

    .line 102
    iput-wide v3, p0, Lgr0;->c:J

    .line 103
    .line 104
    ushr-long v8, v6, v5

    .line 105
    .line 106
    aget-wide v10, v1, v2

    .line 107
    .line 108
    and-long/2addr v8, v10

    .line 109
    or-long v2, v3, v8

    .line 110
    .line 111
    iput-wide v2, p0, Lgr0;->c:J

    .line 112
    .line 113
    aget-wide v2, v1, v5

    .line 114
    .line 115
    and-long/2addr v2, v6

    .line 116
    :goto_2
    iget-wide v6, p0, Lgr0;->c:J

    .line 117
    .line 118
    aget-wide v0, v1, p1

    .line 119
    .line 120
    and-long/2addr v0, v6

    .line 121
    iput-wide v2, p0, Lgr0;->c:J

    .line 122
    .line 123
    iput v5, p0, Lgr0;->d:I

    .line 124
    .line 125
    return-wide v0

    .line 126
    :cond_5
    invoke-virtual {p0, p1}, Lgr0;->b(I)J

    .line 127
    .line 128
    .line 129
    move-result-wide p0

    .line 130
    return-wide p0

    .line 131
    :cond_6
    const-string p0, "count must not be negative or greater than 63"

    .line 132
    .line 133
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return-wide v0
.end method

.method public final b(I)J
    .locals 6

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    iget-wide v1, p0, Lgr0;->c:J

    .line 4
    .line 5
    sget-object v3, Lgr0;->e:[J

    .line 6
    .line 7
    iget-object v4, p0, Lgr0;->b:Ljava/nio/ByteOrder;

    .line 8
    .line 9
    if-ne v4, v0, :cond_0

    .line 10
    .line 11
    aget-wide v4, v3, p1

    .line 12
    .line 13
    and-long v3, v1, v4

    .line 14
    .line 15
    ushr-long v0, v1, p1

    .line 16
    .line 17
    iput-wide v0, p0, Lgr0;->c:J

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget v0, p0, Lgr0;->d:I

    .line 21
    .line 22
    sub-int/2addr v0, p1

    .line 23
    shr-long v0, v1, v0

    .line 24
    .line 25
    aget-wide v2, v3, p1

    .line 26
    .line 27
    and-long v3, v0, v2

    .line 28
    .line 29
    :goto_0
    iget v0, p0, Lgr0;->d:I

    .line 30
    .line 31
    sub-int/2addr v0, p1

    .line 32
    iput v0, p0, Lgr0;->d:I

    .line 33
    .line 34
    return-wide v3
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lgr0;->a:Lwu0;

    .line 2
    .line 3
    invoke-virtual {p0}, Lwu0;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
