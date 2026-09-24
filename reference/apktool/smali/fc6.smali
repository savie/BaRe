.class public Lfc6;
.super Lfw0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfc6$a;
    }
.end annotation


# static fields
.field private static final k:Lqr5;


# instance fields
.field private f:Ljava/io/InputStream;

.field private g:J

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgc6;",
            ">;"
        }
    .end annotation
.end field

.field private i:La61;

.field private j:Lg87;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lwk4;

    .line 2
    .line 3
    invoke-direct {v0}, Lwk4;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lqi2;->c:Lqi2;

    .line 7
    .line 8
    iget-object v2, v0, Lqr5;->e:Lpi2;

    .line 9
    .line 10
    iget v3, v2, Lpi2;->r:I

    .line 11
    .line 12
    iget v1, v1, Lqi2;->b:I

    .line 13
    .line 14
    not-int v1, v1

    .line 15
    and-int/2addr v1, v3

    .line 16
    if-ne v1, v3, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v3, Lpi2;

    .line 20
    .line 21
    iget-wide v4, v2, Ls65;->a:J

    .line 22
    .line 23
    invoke-direct {v3, v2, v4, v5, v1}, Lpi2;-><init>(Lpi2;JI)V

    .line 24
    .line 25
    .line 26
    move-object v2, v3

    .line 27
    :goto_0
    iput-object v2, v0, Lqr5;->e:Lpi2;

    .line 28
    .line 29
    sget-object v1, Lu65;->O:Lu65;

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-virtual {v0, v1, v2}, Lqr5;->b(Lu65;Z)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lfc6;->k:Lqr5;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lfw0;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lfc6;->h:Ljava/util/List;

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic h(Lfc6;)Ljava/io/InputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lfc6;->f:Ljava/io/InputStream;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lfc6;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    .line 1
    iput-object p1, p0, Lfc6;->f:Ljava/io/InputStream;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic j(Lfc6;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lfc6;->h:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic k(Lfc6;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lfc6;->h:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic l(Lfc6;Lg87;)Lg87;
    .locals 0

    .line 1
    iput-object p1, p0, Lfc6;->j:Lg87;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic m(Lfc6;La61;)La61;
    .locals 0

    .line 1
    iput-object p1, p0, Lfc6;->i:La61;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic n(Lfc6;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lfc6;->g:J

    .line 2
    .line 3
    return-wide p1
.end method

.method public static o()Lfc6$a;
    .locals 1

    .line 1
    new-instance v0, Lfc6$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lfc6$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lfc6;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    invoke-super {p0, p1}, Lfw0;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    return v2

    .line 18
    :cond_2
    check-cast p1, Lfc6;

    .line 19
    .line 20
    iget-object v1, p0, Lfc6;->f:Ljava/io/InputStream;

    .line 21
    .line 22
    iget-object v3, p1, Lfc6;->f:Ljava/io/InputStream;

    .line 23
    .line 24
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    iget-wide v3, p0, Lfc6;->g:J

    .line 31
    .line 32
    iget-wide v5, p1, Lfc6;->g:J

    .line 33
    .line 34
    cmp-long v1, v3, v5

    .line 35
    .line 36
    if-nez v1, :cond_3

    .line 37
    .line 38
    iget-object v1, p0, Lfc6;->h:Ljava/util/List;

    .line 39
    .line 40
    iget-object v3, p1, Lfc6;->h:Ljava/util/List;

    .line 41
    .line 42
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    iget-object v1, p0, Lfc6;->i:La61;

    .line 49
    .line 50
    iget-object v3, p1, Lfc6;->i:La61;

    .line 51
    .line 52
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    iget-object p0, p0, Lfc6;->j:Lg87;

    .line 59
    .line 60
    iget-object p1, p1, Lfc6;->j:Lg87;

    .line 61
    .line 62
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-eqz p0, :cond_3

    .line 67
    .line 68
    return v0

    .line 69
    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 7

    .line 1
    invoke-super {p0}, Lfw0;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lfc6;->f:Ljava/io/InputStream;

    .line 10
    .line 11
    iget-wide v3, p0, Lfc6;->g:J

    .line 12
    .line 13
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v4, p0, Lfc6;->h:Ljava/util/List;

    .line 18
    .line 19
    iget-object v5, p0, Lfc6;->i:La61;

    .line 20
    .line 21
    iget-object v6, p0, Lfc6;->j:Lg87;

    .line 22
    .line 23
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public p()La61;
    .locals 0

    .line 1
    iget-object p0, p0, Lfc6;->i:La61;

    .line 2
    .line 3
    return-object p0
.end method

.method public q()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgc6;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lfc6;->h:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lll4;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfc6;->h:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lfc6;->h:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lgc6;

    .line 29
    .line 30
    sget-object v3, Lfc6;->k:Lqr5;

    .line 31
    .line 32
    iget-object v4, v3, Lqr5;->a:Lwj4;

    .line 33
    .line 34
    const/4 v5, 0x4

    .line 35
    iget v6, v4, Lwj4;->a:I

    .line 36
    .line 37
    invoke-static {v5, v6}, Leq3;->a(II)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-nez v5, :cond_1

    .line 42
    .line 43
    sget-object v4, Lvl4;->a:Lvl4;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iget-object v4, v4, Lwj4;->c:Lwl4;

    .line 47
    .line 48
    :goto_1
    invoke-interface {v4}, Lfg6;->u()Lqw0;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    :try_start_0
    new-instance v5, Lq67;

    .line 53
    .line 54
    invoke-direct {v5, v4}, Lq67;-><init>(Lqw0;)V
    :try_end_0
    .catch Lll4; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 55
    .line 56
    .line 57
    :try_start_1
    invoke-virtual {v3, v5}, Lqr5;->c(Lq67;)Lpw8;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v3, v4, v2}, Lqr5;->a(Lpw8;Lgc6;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5}, Lq67;->a()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    :catchall_1
    move-exception p0

    .line 75
    :try_start_3
    throw p0
    :try_end_3
    .catch Lll4; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 76
    :catch_0
    move-exception p0

    .line 77
    goto :goto_2

    .line 78
    :catchall_2
    move-exception p0

    .line 79
    throw p0

    .line 80
    :goto_2
    new-instance v0, Lyk4;

    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-static {p0}, Lu81;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v4, "Unexpected IOException (of type "

    .line 97
    .line 98
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v2, "): "

    .line 105
    .line 106
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-direct {v0, v1, p0}, Lyk4;-><init>(Lpw8;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v0

    .line 120
    :catch_1
    move-exception p0

    .line 121
    throw p0

    .line 122
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    return-object p0
.end method

.method public s()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lfc6;->g:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public t()Lg87;
    .locals 0

    .line 1
    iget-object p0, p0, Lfc6;->j:Lg87;

    .line 2
    .line 3
    return-object p0
.end method

.method public u()Ljava/io/InputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lfc6;->f:Ljava/io/InputStream;

    .line 2
    .line 3
    return-object p0
.end method

.method public v(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfc6;->j:Lg87;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lll0;->a(Lg87;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
