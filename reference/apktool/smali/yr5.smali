.class public abstract Lyr5;
.super Lyq5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyr5$a;
    }
.end annotation


# static fields
.field public static final m:J = 0x50000000000L

.field public static final n:I = 0x500000

.field public static final o:J = 0x140000000L

.field public static final p:I = 0x2710


# instance fields
.field protected g:Lv64$c;

.field protected h:Lv64$c;

.field protected i:Lg87;

.field protected j:Ljx7;

.field protected k:Ljn6;

.field protected l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lyq5;-><init>()V

    .line 37
    new-instance v0, Ljx7;

    invoke-direct {v0}, Ljx7;-><init>()V

    iput-object v0, p0, Lyr5;->j:Ljx7;

    return-void
.end method

.method public constructor <init>(Lyr5;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lyq5;-><init>(Lyq5;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljx7;

    .line 5
    .line 6
    invoke-direct {v0}, Ljx7;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lyr5;->j:Ljx7;

    .line 10
    .line 11
    iget-object v0, p1, Lyr5;->g:Lv64$c;

    .line 12
    .line 13
    iput-object v0, p0, Lyr5;->g:Lv64$c;

    .line 14
    .line 15
    iget-object v0, p1, Lyr5;->h:Lv64$c;

    .line 16
    .line 17
    iput-object v0, p0, Lyr5;->h:Lv64$c;

    .line 18
    .line 19
    iget-object v0, p1, Lyr5;->i:Lg87;

    .line 20
    .line 21
    iput-object v0, p0, Lyr5;->i:Lg87;

    .line 22
    .line 23
    iget-object v0, p1, Lyr5;->j:Ljx7;

    .line 24
    .line 25
    iput-object v0, p0, Lyr5;->j:Ljx7;

    .line 26
    .line 27
    iget-object v0, p1, Lyr5;->k:Ljn6;

    .line 28
    .line 29
    iput-object v0, p0, Lyr5;->k:Ljn6;

    .line 30
    .line 31
    iget-boolean p1, p1, Lyr5;->l:Z

    .line 32
    .line 33
    iput-boolean p1, p0, Lyr5;->l:Z

    .line 34
    .line 35
    return-void
.end method

.method public static synthetic i(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lyr5;->l(Ljava/util/Map$Entry;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic l(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v1}, Lki8;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "="

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {p0}, Lki8;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lyr5;

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
    invoke-super {p0, p1}, Lyq5;->equals(Ljava/lang/Object;)Z

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
    check-cast p1, Lyr5;

    .line 19
    .line 20
    iget-boolean v1, p0, Lyr5;->l:Z

    .line 21
    .line 22
    iget-boolean v3, p1, Lyr5;->l:Z

    .line 23
    .line 24
    if-ne v1, v3, :cond_3

    .line 25
    .line 26
    iget-object v1, p0, Lyr5;->g:Lv64$c;

    .line 27
    .line 28
    iget-object v3, p1, Lyr5;->g:Lv64$c;

    .line 29
    .line 30
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    iget-object v1, p0, Lyr5;->h:Lv64$c;

    .line 37
    .line 38
    iget-object v3, p1, Lyr5;->h:Lv64$c;

    .line 39
    .line 40
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    iget-object v1, p0, Lyr5;->i:Lg87;

    .line 47
    .line 48
    iget-object v3, p1, Lyr5;->i:Lg87;

    .line 49
    .line 50
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    iget-object v1, p0, Lyr5;->j:Ljx7;

    .line 57
    .line 58
    iget-object v3, p1, Lyr5;->j:Ljx7;

    .line 59
    .line 60
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    iget-object p0, p0, Lyr5;->k:Ljn6;

    .line 67
    .line 68
    iget-object p1, p1, Lyr5;->k:Ljn6;

    .line 69
    .line 70
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-eqz p0, :cond_3

    .line 75
    .line 76
    return v0

    .line 77
    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 8

    .line 1
    invoke-super {p0}, Lyq5;->hashCode()I

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
    iget-object v2, p0, Lyr5;->g:Lv64$c;

    .line 10
    .line 11
    iget-object v3, p0, Lyr5;->h:Lv64$c;

    .line 12
    .line 13
    iget-object v4, p0, Lyr5;->i:Lg87;

    .line 14
    .line 15
    iget-object v5, p0, Lyr5;->j:Ljx7;

    .line 16
    .line 17
    iget-object v6, p0, Lyr5;->k:Ljn6;

    .line 18
    .line 19
    iget-boolean p0, p0, Lyr5;->l:Z

    .line 20
    .line 21
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public j()Lokhttp3/MediaType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lyr5;->g:Lv64$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "Content-Type"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lv64$c;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lyr5;->g:Lv64$c;

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lv64$c;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sget-object v0, Lokhttp3/MediaType;->d:Lai6;

    .line 20
    .line 21
    invoke-static {p0}, Lokhttp3/MediaType$Companion;->b(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public k()Lv64$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lyr5;->g:Lv64$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public m()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lyr5;->l:Z

    .line 2
    .line 3
    return p0
.end method

.method public n()Lv64$c;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Lyr5;->o(Lokhttp3/MediaType;Lv64$c;)Lv64$c;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public o(Lokhttp3/MediaType;Lv64$c;)Lv64$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lyr5;->g:Lv64$c;

    .line 2
    .line 3
    iget-object v1, p0, Lyr5;->h:Lv64$c;

    .line 4
    .line 5
    iget-object v2, p0, Lyr5;->i:Lg87;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v2}, Lg87;->a()Lv64$c;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :goto_0
    filled-new-array {v0, v1, v2, p2}, [Lv64$c;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-static {p2}, Lv64$c;->f([Lv64$c;)Lv64$c;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    iget-object v0, p0, Lyr5;->j:Ljx7;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljx7;->a()Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Ly64;

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-direct {v1, v2}, Ly64;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "&"

    .line 48
    .line 49
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_1

    .line 64
    .line 65
    const-string v1, "x-amz-tagging"

    .line 66
    .line 67
    invoke-virtual {p2, v1, v0}, Lv64$c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object v0, p0, Lyr5;->k:Ljn6;

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    invoke-virtual {v0}, Ljn6;->a()Lkn6;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    iget-object v0, p0, Lyr5;->k:Ljn6;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljn6;->a()Lkn6;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v1, "x-amz-object-lock-mode"

    .line 91
    .line 92
    invoke-virtual {p2, v1, v0}, Lv64$c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lyr5;->k:Ljn6;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljn6;->b()Ljava/time/ZonedDateTime;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sget-object v1, Lh38;->c:Ljava/time/format/DateTimeFormatter;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/time/ZonedDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const-string v1, "x-amz-object-lock-retain-until-date"

    .line 108
    .line 109
    invoke-virtual {p2, v1, v0}, Lv64$c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_2
    iget-boolean p0, p0, Lyr5;->l:Z

    .line 113
    .line 114
    if-eqz p0, :cond_3

    .line 115
    .line 116
    const-string p0, "x-amz-object-lock-legal-hold"

    .line 117
    .line 118
    const-string v0, "ON"

    .line 119
    .line 120
    invoke-virtual {p2, p0, v0}, Lv64$c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    if-eqz p1, :cond_4

    .line 124
    .line 125
    const-string p0, "Content-Type"

    .line 126
    .line 127
    iget-object p1, p1, Lokhttp3/MediaType;->a:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {p2, p0, p1}, Lv64$c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_4
    return-object p2
.end method

.method public p()Ljn6;
    .locals 0

    .line 1
    iget-object p0, p0, Lyr5;->k:Ljn6;

    .line 2
    .line 3
    return-object p0
.end method

.method public q()Lg87;
    .locals 0

    .line 1
    iget-object p0, p0, Lyr5;->i:Lg87;

    .line 2
    .line 3
    return-object p0
.end method

.method public r()Ljx7;
    .locals 0

    .line 1
    iget-object p0, p0, Lyr5;->j:Ljx7;

    .line 2
    .line 3
    return-object p0
.end method

.method public s()Lv64$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lyr5;->h:Lv64$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public t(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lyr5;->i:Lg87;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lll0;->a(Lg87;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
