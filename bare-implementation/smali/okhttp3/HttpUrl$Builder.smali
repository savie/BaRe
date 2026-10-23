.class public final Lokhttp3/HttpUrl$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/HttpUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public final f:Ljava/util/ArrayList;

.field public g:Ljava/util/ArrayList;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    iput v1, p0, Lokhttp3/HttpUrl$Builder;->e:I

    .line 12
    .line 13
    filled-new-array {v0}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lfl1;->C0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/ArrayList;

    .line 22
    .line 23
    return-void
.end method

.method public static m(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-gt v1, v2, :cond_3

    .line 12
    .line 13
    const/16 v2, 0x26

    .line 14
    .line 15
    const/4 v3, 0x4

    .line 16
    invoke-static {v2, v1, v3, p0}, Lnq7;->g0(CIILjava/lang/CharSequence;)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v4, -0x1

    .line 21
    if-ne v2, v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    :cond_0
    const/16 v5, 0x3d

    .line 28
    .line 29
    invoke-static {v5, v1, v3, p0}, Lnq7;->g0(CIILjava/lang/CharSequence;)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eq v3, v4, :cond_2

    .line 34
    .line 35
    if-le v3, v2, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    :goto_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :goto_2
    add-int/lit8 v1, v2, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v3, v0

    .line 3
    :goto_0
    const-string v1, "/\\"

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-static {p1, v3, v2, v1}, Lokhttp3/internal/_UtilCommonKt;->d(Ljava/lang/String;IILjava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ge v4, v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    move v5, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    move v5, v0

    .line 23
    :goto_1
    const/4 v6, 0x1

    .line 24
    move-object v1, p0

    .line 25
    move-object v2, p1

    .line 26
    invoke-virtual/range {v1 .. v6}, Lokhttp3/HttpUrl$Builder;->j(Ljava/lang/String;IIZZ)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v3, v4, 0x1

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-le v3, p0, :cond_1

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    move-object p0, v1

    .line 39
    move-object p1, v2

    .line 40
    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/4 v6, 0x1

    .line 18
    const/16 v3, 0x53

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    const-string v5, " \"\'<>#&="

    .line 23
    .line 24
    move-object v4, p1

    .line 25
    invoke-static/range {v1 .. v6}, Lokhttp3/internal/url/_UrlKt;->a(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    const/4 v5, 0x1

    .line 40
    const/16 v2, 0x53

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    const/4 v1, 0x0

    .line 44
    const-string v4, " \"\'<>#&="

    .line 45
    .line 46
    move-object v3, p2

    .line 47
    invoke-static/range {v0 .. v5}, Lokhttp3/internal/url/_UrlKt;->a(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 p1, 0x0

    .line 53
    :goto_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v3

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p1

    .line 10
    invoke-virtual/range {v0 .. v5}, Lokhttp3/HttpUrl$Builder;->j(Ljava/lang/String;IIZZ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    const/16 v3, 0x5b

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    const-string v5, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    .line 23
    .line 24
    move-object v4, p1

    .line 25
    invoke-static/range {v1 .. v6}, Lokhttp3/internal/url/_UrlKt;->a(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    const/16 v2, 0x5b

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    const/4 v1, 0x0

    .line 44
    const-string v4, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    .line 45
    .line 46
    move-object v3, p2

    .line 47
    invoke-static/range {v0 .. v5}, Lokhttp3/internal/url/_UrlKt;->a(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 p1, 0x0

    .line 53
    :goto_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final e()Lokhttp3/HttpUrl;
    .locals 13

    .line 1
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz v1, :cond_7

    .line 5
    .line 6
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x7

    .line 10
    invoke-static {v2, v3, v3, v4}, Lokhttp3/internal/url/_UrlKt;->d(Ljava/lang/String;III)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget-object v5, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v5, v3, v3, v4}, Lokhttp3/internal/url/_UrlKt;->d(Ljava/lang/String;III)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    move v6, v4

    .line 21
    iget-object v4, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v4, :cond_6

    .line 24
    .line 25
    iget v7, p0, Lokhttp3/HttpUrl$Builder;->e:I

    .line 26
    .line 27
    const/4 v8, -0x1

    .line 28
    if-eq v7, v8, :cond_0

    .line 29
    .line 30
    :goto_0
    move v8, v6

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget-object v7, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {v7}, Lokhttp3/HttpUrl$Companion;->a(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    goto :goto_0

    .line 42
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    .line 43
    .line 44
    iget-object v9, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/ArrayList;

    .line 45
    .line 46
    const/16 v10, 0xa

    .line 47
    .line 48
    invoke-static {v9, v10}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 49
    .line 50
    .line 51
    move-result v11

    .line 52
    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v11

    .line 63
    if-eqz v11, :cond_1

    .line 64
    .line 65
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    check-cast v11, Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v11, v3, v3, v8}, Lokhttp3/internal/url/_UrlKt;->d(Ljava/lang/String;III)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_1
    iget-object v9, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    .line 80
    .line 81
    if-eqz v9, :cond_3

    .line 82
    .line 83
    new-instance v11, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-static {v9, v10}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    .line 91
    .line 92
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v10

    .line 100
    if-eqz v10, :cond_4

    .line 101
    .line 102
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    check-cast v10, Ljava/lang/String;

    .line 107
    .line 108
    if-eqz v10, :cond_2

    .line 109
    .line 110
    const/4 v12, 0x3

    .line 111
    invoke-static {v10, v3, v3, v12}, Lokhttp3/internal/url/_UrlKt;->d(Ljava/lang/String;III)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    goto :goto_4

    .line 116
    :cond_2
    move-object v10, v0

    .line 117
    :goto_4
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_3
    move-object v11, v0

    .line 122
    :cond_4
    iget-object v9, p0, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    .line 123
    .line 124
    if-eqz v9, :cond_5

    .line 125
    .line 126
    invoke-static {v9, v3, v3, v8}, Lokhttp3/internal/url/_UrlKt;->d(Ljava/lang/String;III)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    :cond_5
    move-object v8, v0

    .line 131
    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v9

    .line 135
    new-instance v0, Lokhttp3/HttpUrl;

    .line 136
    .line 137
    move-object v3, v5

    .line 138
    move v5, v7

    .line 139
    move-object v7, v11

    .line 140
    invoke-direct/range {v0 .. v9}, Lokhttp3/HttpUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-object v0

    .line 144
    :cond_6
    const-string p0, "host == null"

    .line 145
    .line 146
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-object v0

    .line 150
    :cond_7
    const-string p0, "scheme == null"

    .line 151
    .line 152
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "/"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v0, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0, v1, v0, p1}, Lokhttp3/HttpUrl$Builder;->k(IILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const-string p0, "unexpected encodedPath: "

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x7

    .line 6
    invoke-static {p1, v0, v0, v1}, Lokhttp3/internal/url/_UrlKt;->d(Ljava/lang/String;III)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lokhttp3/internal/_HostnamesCommonKt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const-string p0, "unexpected host: "

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final h(Lokhttp3/HttpUrl;Ljava/lang/String;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v4, p2

    .line 6
    .line 7
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v2, Lokhttp3/internal/_UtilCommonKt;->a:[B

    .line 11
    .line 12
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {v3, v2, v4}, Lokhttp3/internal/_UtilCommonKt;->h(IILjava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    invoke-static {v2, v5, v4}, Lokhttp3/internal/_UtilCommonKt;->i(IILjava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    sub-int v5, v7, v2

    .line 30
    .line 31
    const/16 v8, 0x5b

    .line 32
    .line 33
    const/16 v9, 0x3a

    .line 34
    .line 35
    const/4 v10, -0x1

    .line 36
    const/4 v6, 0x2

    .line 37
    if-ge v5, v6, :cond_1

    .line 38
    .line 39
    :cond_0
    :goto_0
    move v5, v10

    .line 40
    goto :goto_3

    .line 41
    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const/16 v11, 0x61

    .line 46
    .line 47
    invoke-static {v5, v11}, Lpe4;->f(II)I

    .line 48
    .line 49
    .line 50
    move-result v12

    .line 51
    const/16 v13, 0x41

    .line 52
    .line 53
    if-ltz v12, :cond_2

    .line 54
    .line 55
    const/16 v12, 0x7a

    .line 56
    .line 57
    invoke-static {v5, v12}, Lpe4;->f(II)I

    .line 58
    .line 59
    .line 60
    move-result v12

    .line 61
    if-lez v12, :cond_3

    .line 62
    .line 63
    :cond_2
    invoke-static {v5, v13}, Lpe4;->f(II)I

    .line 64
    .line 65
    .line 66
    move-result v12

    .line 67
    if-ltz v12, :cond_0

    .line 68
    .line 69
    const/16 v12, 0x5a

    .line 70
    .line 71
    invoke-static {v5, v12}, Lpe4;->f(II)I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-lez v5, :cond_3

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    add-int/lit8 v5, v2, 0x1

    .line 79
    .line 80
    :goto_1
    if-ge v5, v7, :cond_0

    .line 81
    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    .line 83
    .line 84
    .line 85
    move-result v12

    .line 86
    if-gt v11, v12, :cond_4

    .line 87
    .line 88
    const/16 v14, 0x7b

    .line 89
    .line 90
    if-ge v12, v14, :cond_4

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_4
    if-gt v13, v12, :cond_5

    .line 94
    .line 95
    if-ge v12, v8, :cond_5

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    const/16 v14, 0x30

    .line 99
    .line 100
    if-gt v14, v12, :cond_6

    .line 101
    .line 102
    if-ge v12, v9, :cond_6

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_6
    const/16 v14, 0x2b

    .line 106
    .line 107
    if-eq v12, v14, :cond_8

    .line 108
    .line 109
    const/16 v14, 0x2d

    .line 110
    .line 111
    if-eq v12, v14, :cond_8

    .line 112
    .line 113
    const/16 v14, 0x2e

    .line 114
    .line 115
    if-ne v12, v14, :cond_7

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_7
    if-ne v12, v9, :cond_0

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_8
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :goto_3
    const/4 v11, 0x1

    .line 125
    if-eq v5, v10, :cond_b

    .line 126
    .line 127
    const-string v12, "https:"

    .line 128
    .line 129
    invoke-static {v2, v4, v12, v11}, Luq7;->U(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 130
    .line 131
    .line 132
    move-result v12

    .line 133
    if-eqz v12, :cond_9

    .line 134
    .line 135
    const-string v5, "https"

    .line 136
    .line 137
    iput-object v5, v0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 138
    .line 139
    add-int/lit8 v2, v2, 0x6

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_9
    const-string v12, "http:"

    .line 143
    .line 144
    invoke-static {v2, v4, v12, v11}, Luq7;->U(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 145
    .line 146
    .line 147
    move-result v12

    .line 148
    if-eqz v12, :cond_a

    .line 149
    .line 150
    const-string v5, "http"

    .line 151
    .line 152
    iput-object v5, v0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 153
    .line 154
    add-int/lit8 v2, v2, 0x5

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 158
    .line 159
    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string v3, "Expected URL scheme \'http\' or \'https\' but was \'"

    .line 166
    .line 167
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const/16 v1, 0x27

    .line 174
    .line 175
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw v0

    .line 186
    :cond_b
    if-eqz v1, :cond_23

    .line 187
    .line 188
    iget-object v5, v1, Lokhttp3/HttpUrl;->a:Ljava/lang/String;

    .line 189
    .line 190
    iput-object v5, v0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 191
    .line 192
    :goto_4
    move v5, v2

    .line 193
    move v12, v3

    .line 194
    :goto_5
    const/16 v13, 0x5c

    .line 195
    .line 196
    const/16 v14, 0x2f

    .line 197
    .line 198
    if-ge v5, v7, :cond_d

    .line 199
    .line 200
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    .line 201
    .line 202
    .line 203
    move-result v15

    .line 204
    if-eq v15, v14, :cond_c

    .line 205
    .line 206
    if-eq v15, v13, :cond_c

    .line 207
    .line 208
    goto :goto_6

    .line 209
    :cond_c
    add-int/lit8 v12, v12, 0x1

    .line 210
    .line 211
    add-int/lit8 v5, v5, 0x1

    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_d
    :goto_6
    const/16 v15, 0x3f

    .line 215
    .line 216
    const/16 v5, 0x23

    .line 217
    .line 218
    if-ge v12, v6, :cond_11

    .line 219
    .line 220
    if-eqz v1, :cond_11

    .line 221
    .line 222
    iget-object v6, v1, Lokhttp3/HttpUrl;->a:Ljava/lang/String;

    .line 223
    .line 224
    iget-object v3, v0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 225
    .line 226
    invoke-static {v6, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    if-nez v3, :cond_e

    .line 231
    .line 232
    goto :goto_8

    .line 233
    :cond_e
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->e()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    .line 238
    .line 239
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->a()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 244
    .line 245
    iget-object v3, v1, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 246
    .line 247
    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 248
    .line 249
    iget v3, v1, Lokhttp3/HttpUrl;->e:I

    .line 250
    .line 251
    iput v3, v0, Lokhttp3/HttpUrl$Builder;->e:I

    .line 252
    .line 253
    iget-object v3, v0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->c()Ljava/util/ArrayList;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 263
    .line 264
    .line 265
    if-eq v2, v7, :cond_f

    .line 266
    .line 267
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    .line 268
    .line 269
    .line 270
    move-result v3

    .line 271
    if-ne v3, v5, :cond_1f

    .line 272
    .line 273
    :cond_f
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->d()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v19

    .line 277
    if-eqz v19, :cond_10

    .line 278
    .line 279
    const/16 v21, 0x1

    .line 280
    .line 281
    const/16 v18, 0x53

    .line 282
    .line 283
    const/16 v16, 0x0

    .line 284
    .line 285
    const/16 v17, 0x0

    .line 286
    .line 287
    const-string v20, " \"\'<>#"

    .line 288
    .line 289
    invoke-static/range {v16 .. v21}, Lokhttp3/internal/url/_UrlKt;->a(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-static {v1}, Lokhttp3/HttpUrl$Builder;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    goto :goto_7

    .line 298
    :cond_10
    const/4 v1, 0x0

    .line 299
    :goto_7
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    .line 300
    .line 301
    goto/16 :goto_12

    .line 302
    .line 303
    :cond_11
    :goto_8
    add-int/2addr v2, v12

    .line 304
    move v1, v2

    .line 305
    const/4 v12, 0x0

    .line 306
    const/16 v16, 0x0

    .line 307
    .line 308
    :goto_9
    const-string v2, "@/\\?#"

    .line 309
    .line 310
    invoke-static {v4, v1, v7, v2}, Lokhttp3/internal/_UtilCommonKt;->d(Ljava/lang/String;IILjava/lang/String;)I

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    if-eq v2, v7, :cond_12

    .line 315
    .line 316
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    goto :goto_a

    .line 321
    :cond_12
    move v3, v10

    .line 322
    :goto_a
    if-eq v3, v10, :cond_17

    .line 323
    .line 324
    if-eq v3, v5, :cond_17

    .line 325
    .line 326
    if-eq v3, v14, :cond_17

    .line 327
    .line 328
    if-eq v3, v13, :cond_17

    .line 329
    .line 330
    if-eq v3, v15, :cond_17

    .line 331
    .line 332
    const/16 v6, 0x40

    .line 333
    .line 334
    if-eq v3, v6, :cond_13

    .line 335
    .line 336
    goto :goto_9

    .line 337
    :cond_13
    const-string v3, "%40"

    .line 338
    .line 339
    if-nez v16, :cond_16

    .line 340
    .line 341
    move v6, v2

    .line 342
    invoke-static {v4, v9, v1, v6}, Lokhttp3/internal/_UtilCommonKt;->c(Ljava/lang/String;CII)I

    .line 343
    .line 344
    .line 345
    move-result v2

    .line 346
    move/from16 v17, v6

    .line 347
    .line 348
    const/4 v6, 0x1

    .line 349
    move-object/from16 v18, v3

    .line 350
    .line 351
    const/16 v3, 0x70

    .line 352
    .line 353
    move/from16 v19, v5

    .line 354
    .line 355
    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    .line 356
    .line 357
    move/from16 v13, v17

    .line 358
    .line 359
    move-object/from16 v14, v18

    .line 360
    .line 361
    invoke-static/range {v1 .. v6}, Lokhttp3/internal/url/_UrlKt;->a(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    if-eqz v12, :cond_14

    .line 366
    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .line 371
    .line 372
    iget-object v4, v0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    .line 373
    .line 374
    invoke-static {v3, v4, v14, v1}, Leq3;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    :cond_14
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    .line 379
    .line 380
    if-eq v2, v13, :cond_15

    .line 381
    .line 382
    add-int/lit8 v1, v2, 0x1

    .line 383
    .line 384
    const/4 v6, 0x1

    .line 385
    const/16 v3, 0x70

    .line 386
    .line 387
    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    .line 388
    .line 389
    move-object/from16 v4, p2

    .line 390
    .line 391
    move v2, v13

    .line 392
    invoke-static/range {v1 .. v6}, Lokhttp3/internal/url/_UrlKt;->a(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 397
    .line 398
    move/from16 v16, v11

    .line 399
    .line 400
    goto :goto_b

    .line 401
    :cond_15
    move v2, v13

    .line 402
    :goto_b
    move-object/from16 v4, p2

    .line 403
    .line 404
    move v12, v11

    .line 405
    goto :goto_c

    .line 406
    :cond_16
    move-object v14, v3

    .line 407
    new-instance v13, Ljava/lang/StringBuilder;

    .line 408
    .line 409
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    .line 411
    .line 412
    iget-object v3, v0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 413
    .line 414
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    const/4 v6, 0x1

    .line 421
    const/16 v3, 0x70

    .line 422
    .line 423
    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    .line 424
    .line 425
    move-object/from16 v4, p2

    .line 426
    .line 427
    invoke-static/range {v1 .. v6}, Lokhttp3/internal/url/_UrlKt;->a(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 439
    .line 440
    :goto_c
    add-int/lit8 v1, v2, 0x1

    .line 441
    .line 442
    const/16 v5, 0x23

    .line 443
    .line 444
    const/16 v13, 0x5c

    .line 445
    .line 446
    const/16 v14, 0x2f

    .line 447
    .line 448
    goto/16 :goto_9

    .line 449
    .line 450
    :cond_17
    move v12, v1

    .line 451
    move v1, v12

    .line 452
    :goto_d
    if-ge v1, v2, :cond_1b

    .line 453
    .line 454
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    .line 455
    .line 456
    .line 457
    move-result v3

    .line 458
    if-eq v3, v9, :cond_1a

    .line 459
    .line 460
    if-eq v3, v8, :cond_18

    .line 461
    .line 462
    goto :goto_e

    .line 463
    :cond_18
    add-int/2addr v1, v11

    .line 464
    if-ge v1, v2, :cond_19

    .line 465
    .line 466
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    .line 467
    .line 468
    .line 469
    move-result v3

    .line 470
    const/16 v5, 0x5d

    .line 471
    .line 472
    if-ne v3, v5, :cond_18

    .line 473
    .line 474
    :cond_19
    :goto_e
    add-int/2addr v1, v11

    .line 475
    goto :goto_d

    .line 476
    :cond_1a
    move v8, v1

    .line 477
    goto :goto_f

    .line 478
    :cond_1b
    move v8, v2

    .line 479
    :goto_f
    add-int/lit8 v1, v8, 0x1

    .line 480
    .line 481
    const/4 v3, 0x4

    .line 482
    const/16 v9, 0x22

    .line 483
    .line 484
    if-ge v1, v2, :cond_1e

    .line 485
    .line 486
    invoke-static {v4, v12, v8, v3}, Lokhttp3/internal/url/_UrlKt;->d(Ljava/lang/String;III)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v3

    .line 490
    invoke-static {v3}, Lokhttp3/internal/_HostnamesCommonKt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 495
    .line 496
    :try_start_0
    const-string v5, ""

    .line 497
    .line 498
    const/4 v6, 0x0

    .line 499
    const/16 v3, 0x78

    .line 500
    .line 501
    invoke-static/range {v1 .. v6}, Lokhttp3/internal/url/_UrlKt;->a(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v3

    .line 505
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 506
    .line 507
    .line 508
    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    if-gt v11, v3, :cond_1c

    .line 510
    .line 511
    const/high16 v5, 0x10000

    .line 512
    .line 513
    if-ge v3, v5, :cond_1c

    .line 514
    .line 515
    goto :goto_10

    .line 516
    :catch_0
    :cond_1c
    move v3, v10

    .line 517
    :goto_10
    iput v3, v0, Lokhttp3/HttpUrl$Builder;->e:I

    .line 518
    .line 519
    if-eq v3, v10, :cond_1d

    .line 520
    .line 521
    goto :goto_11

    .line 522
    :cond_1d
    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    .line 527
    .line 528
    const-string v2, "Invalid URL port: \""

    .line 529
    .line 530
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 544
    .line 545
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    throw v1

    .line 553
    :cond_1e
    invoke-static {v4, v12, v8, v3}, Lokhttp3/internal/url/_UrlKt;->d(Ljava/lang/String;III)Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v1

    .line 557
    invoke-static {v1}, Lokhttp3/internal/_HostnamesCommonKt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 562
    .line 563
    iget-object v1, v0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 564
    .line 565
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 566
    .line 567
    .line 568
    invoke-static {v1}, Lokhttp3/HttpUrl$Companion;->a(Ljava/lang/String;)I

    .line 569
    .line 570
    .line 571
    move-result v1

    .line 572
    iput v1, v0, Lokhttp3/HttpUrl$Builder;->e:I

    .line 573
    .line 574
    :goto_11
    iget-object v1, v0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 575
    .line 576
    if-eqz v1, :cond_22

    .line 577
    .line 578
    :cond_1f
    :goto_12
    const-string v1, "?#"

    .line 579
    .line 580
    invoke-static {v4, v2, v7, v1}, Lokhttp3/internal/_UtilCommonKt;->d(Ljava/lang/String;IILjava/lang/String;)I

    .line 581
    .line 582
    .line 583
    move-result v1

    .line 584
    invoke-virtual {v0, v2, v1, v4}, Lokhttp3/HttpUrl$Builder;->k(IILjava/lang/String;)V

    .line 585
    .line 586
    .line 587
    if-ge v1, v7, :cond_20

    .line 588
    .line 589
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    .line 590
    .line 591
    .line 592
    move-result v2

    .line 593
    if-ne v2, v15, :cond_20

    .line 594
    .line 595
    const/16 v8, 0x23

    .line 596
    .line 597
    invoke-static {v4, v8, v1, v7}, Lokhttp3/internal/_UtilCommonKt;->c(Ljava/lang/String;CII)I

    .line 598
    .line 599
    .line 600
    move-result v2

    .line 601
    add-int/lit8 v1, v1, 0x1

    .line 602
    .line 603
    const/4 v6, 0x1

    .line 604
    const/16 v3, 0x50

    .line 605
    .line 606
    const-string v5, " \"\'<>#"

    .line 607
    .line 608
    invoke-static/range {v1 .. v6}, Lokhttp3/internal/url/_UrlKt;->a(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v1

    .line 612
    invoke-static {v1}, Lokhttp3/HttpUrl$Builder;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 613
    .line 614
    .line 615
    move-result-object v1

    .line 616
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    .line 617
    .line 618
    move v1, v2

    .line 619
    goto :goto_13

    .line 620
    :cond_20
    const/16 v8, 0x23

    .line 621
    .line 622
    :goto_13
    if-ge v1, v7, :cond_21

    .line 623
    .line 624
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    .line 625
    .line 626
    .line 627
    move-result v2

    .line 628
    if-ne v2, v8, :cond_21

    .line 629
    .line 630
    add-int/2addr v1, v11

    .line 631
    const/4 v6, 0x1

    .line 632
    const/16 v3, 0x30

    .line 633
    .line 634
    const-string v5, ""

    .line 635
    .line 636
    move v2, v7

    .line 637
    invoke-static/range {v1 .. v6}, Lokhttp3/internal/url/_UrlKt;->a(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v1

    .line 641
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    .line 642
    .line 643
    :cond_21
    return-void

    .line 644
    :cond_22
    invoke-virtual {v4, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    .line 649
    .line 650
    const-string v2, "Invalid URL host: \""

    .line 651
    .line 652
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 666
    .line 667
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    throw v1

    .line 675
    :cond_23
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 676
    .line 677
    .line 678
    move-result v0

    .line 679
    const/4 v1, 0x6

    .line 680
    if-le v0, v1, :cond_24

    .line 681
    .line 682
    invoke-static {v1, v4}, Lnq7;->G0(ILjava/lang/String;)Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    const-string v1, "..."

    .line 687
    .line 688
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v0

    .line 692
    goto :goto_14

    .line 693
    :cond_24
    move-object v0, v4

    .line 694
    :goto_14
    const-string v1, "Expected URL scheme \'http\' or \'https\' but no scheme was found for "

    .line 695
    .line 696
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    return-void
.end method

.method public final i(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-gt v0, p1, :cond_0

    .line 3
    .line 4
    const/high16 v0, 0x10000

    .line 5
    .line 6
    if-ge p1, v0, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lokhttp3/HttpUrl$Builder;->e:I

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string p0, "unexpected port: "

    .line 12
    .line 13
    invoke-static {p1, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final j(Ljava/lang/String;IIZZ)V
    .locals 6

    .line 1
    const-string v4, " \"<>^`{}|/\\?#"

    .line 2
    .line 3
    const/16 v2, 0x70

    .line 4
    .line 5
    move-object v3, p1

    .line 6
    move v0, p2

    .line 7
    move v1, p3

    .line 8
    move v5, p5

    .line 9
    invoke-static/range {v0 .. v5}, Lokhttp3/internal/url/_UrlKt;->a(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string p2, "."

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-nez p2, :cond_5

    .line 20
    .line 21
    const-string p2, "%2e"

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_0
    const-string p2, ".."

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    const-string p3, ""

    .line 37
    .line 38
    iget-object p0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/ArrayList;

    .line 39
    .line 40
    const/4 p5, 0x1

    .line 41
    if-nez p2, :cond_3

    .line 42
    .line 43
    const-string p2, "%2e."

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-nez p2, :cond_3

    .line 50
    .line 51
    const-string p2, ".%2e"

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-nez p2, :cond_3

    .line 58
    .line 59
    const-string p2, "%2e%2e"

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-eqz p2, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    invoke-static {p0, p5}, Ldj7;->e(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    check-cast p2, Ljava/lang/CharSequence;

    .line 73
    .line 74
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-nez p2, :cond_2

    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    sub-int/2addr p2, p5

    .line 85
    invoke-virtual {p0, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    :goto_0
    if-eqz p4, :cond_5

    .line 93
    .line 94
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    sub-int/2addr p1, p5

    .line 103
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_4

    .line 114
    .line 115
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_4

    .line 120
    .line 121
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    sub-int/2addr p1, p5

    .line 126
    invoke-virtual {p0, p1, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_4
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    :cond_5
    :goto_2
    return-void
.end method

.method public final k(IILjava/lang/String;)V
    .locals 11

    .line 1
    if-ne p1, p2, :cond_0

    .line 2
    .line 3
    goto :goto_3

    .line 4
    :cond_0
    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x2f

    .line 9
    .line 10
    const-string v2, ""

    .line 11
    .line 12
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/ArrayList;

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/16 v1, 0x5c

    .line 18
    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sub-int/2addr v0, v4

    .line 26
    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    add-int/lit8 p1, p1, 0x1

    .line 37
    .line 38
    :goto_0
    move v7, p1

    .line 39
    :goto_1
    if-ge v7, p2, :cond_4

    .line 40
    .line 41
    const-string p1, "/\\"

    .line 42
    .line 43
    invoke-static {p3, v7, p2, p1}, Lokhttp3/internal/_UtilCommonKt;->d(Ljava/lang/String;IILjava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-ge v8, p2, :cond_2

    .line 48
    .line 49
    move v9, v4

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/4 p1, 0x0

    .line 52
    move v9, p1

    .line 53
    :goto_2
    const/4 v10, 0x1

    .line 54
    move-object v5, p0

    .line 55
    move-object v6, p3

    .line 56
    invoke-virtual/range {v5 .. v10}, Lokhttp3/HttpUrl$Builder;->j(Ljava/lang/String;IIZZ)V

    .line 57
    .line 58
    .line 59
    if-eqz v9, :cond_3

    .line 60
    .line 61
    add-int/lit8 v7, v8, 0x1

    .line 62
    .line 63
    move-object p0, v5

    .line 64
    move-object p3, v6

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    move-object p0, v5

    .line 67
    move-object p3, v6

    .line 68
    move v7, v8

    .line 69
    goto :goto_1

    .line 70
    :cond_4
    :goto_3
    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "http"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string v0, "https"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    const-string p0, "unexpected scheme: "

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "://"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v1, "//"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/16 v2, 0x3a

    .line 31
    .line 32
    if-lez v1, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-lez v1, :cond_3

    .line 42
    .line 43
    :goto_1
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-lez v1, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    :cond_2
    const/16 v1, 0x40

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    :cond_3
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 70
    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    invoke-static {v1, v2}, Lnq7;->a0(Ljava/lang/CharSequence;C)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    const/16 v1, 0x5b

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const/16 v1, 0x5d

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    :cond_5
    :goto_2
    iget v1, p0, Lokhttp3/HttpUrl$Builder;->e:I

    .line 101
    .line 102
    const/4 v3, -0x1

    .line 103
    if-ne v1, v3, :cond_6

    .line 104
    .line 105
    iget-object v4, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 106
    .line 107
    if-eqz v4, :cond_9

    .line 108
    .line 109
    :cond_6
    if-eq v1, v3, :cond_7

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_7
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-static {v1}, Lokhttp3/HttpUrl$Companion;->a(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    :goto_3
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 122
    .line 123
    if-eqz v3, :cond_8

    .line 124
    .line 125
    invoke-static {v3}, Lokhttp3/HttpUrl$Companion;->a(Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-eq v1, v3, :cond_9

    .line 130
    .line 131
    :cond_8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    :cond_9
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    const/4 v3, 0x0

    .line 144
    move v4, v3

    .line 145
    :goto_4
    if-ge v4, v2, :cond_a

    .line 146
    .line 147
    const/16 v5, 0x2f

    .line 148
    .line 149
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    check-cast v5, Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    add-int/lit8 v4, v4, 0x1

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_a
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    .line 165
    .line 166
    if-eqz v1, :cond_f

    .line 167
    .line 168
    const/16 v1, 0x3f

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    invoke-static {v3, v2}, Ll73;->F(II)Lnd4;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    const/4 v3, 0x2

    .line 187
    invoke-static {v2, v3}, Ll73;->D(Lnd4;I)Lld4;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    iget v3, v2, Lld4;->a:I

    .line 192
    .line 193
    iget v4, v2, Lld4;->b:I

    .line 194
    .line 195
    iget v2, v2, Lld4;->c:I

    .line 196
    .line 197
    if-lez v2, :cond_b

    .line 198
    .line 199
    if-le v3, v4, :cond_c

    .line 200
    .line 201
    :cond_b
    if-gez v2, :cond_f

    .line 202
    .line 203
    if-gt v4, v3, :cond_f

    .line 204
    .line 205
    :cond_c
    :goto_5
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    check-cast v5, Ljava/lang/String;

    .line 210
    .line 211
    add-int/lit8 v6, v3, 0x1

    .line 212
    .line 213
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    check-cast v6, Ljava/lang/String;

    .line 218
    .line 219
    if-lez v3, :cond_d

    .line 220
    .line 221
    const/16 v7, 0x26

    .line 222
    .line 223
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    :cond_d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    if-eqz v6, :cond_e

    .line 230
    .line 231
    const/16 v5, 0x3d

    .line 232
    .line 233
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    :cond_e
    if-eq v3, v4, :cond_f

    .line 240
    .line 241
    add-int/2addr v3, v2

    .line 242
    goto :goto_5

    .line 243
    :cond_f
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    .line 244
    .line 245
    if-eqz v1, :cond_10

    .line 246
    .line 247
    const/16 v1, 0x23

    .line 248
    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    iget-object p0, p0, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    .line 253
    .line 254
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    :cond_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    return-object p0
.end method
