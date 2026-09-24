.class public final Loh0;
.super Lxh2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final c:Lkh0;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkh0;Lzv1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lxh2;-><init>(Lzv1;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Loh0;->c:Lkh0;

    .line 5
    .line 6
    const-string p1, "BDeleteSession"

    .line 7
    .line 8
    iput-object p1, p0, Loh0;->d:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Ljava/util/List;)Z
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object v2, v1

    .line 21
    check-cast v2, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-lez v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_7

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    move-object v1, v0

    .line 48
    check-cast v1, Ljava/lang/String;

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    :try_start_0
    iget-object v0, p0, Loh0;->c:Lkh0;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lkh0;->s()Lmv0;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    const-string v3, "/2.0/files/"

    .line 67
    .line 68
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v0, v3}, Lmv0;->a(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-static {v3}, Lmv0;->b(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v3}, Lokhttp3/Request$Builder;->a(Lokhttp3/Request$Builder;)V

    .line 81
    .line 82
    .line 83
    new-instance v4, Lokhttp3/Request;

    .line 84
    .line 85
    invoke-direct {v4, v3}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v4}, Lmv0;->j(Lokhttp3/Request;)Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-virtual {v0, v4, v3, v2}, Lmv0;->e(Lokhttp3/Request;ZLjv0;)Lokhttp3/Response;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lokhttp3/Response;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_5

    .line 100
    :catch_0
    move-exception v0

    .line 101
    instance-of v3, v0, Lhv0;

    .line 102
    .line 103
    if-eqz v3, :cond_2

    .line 104
    .line 105
    move-object v3, v0

    .line 106
    check-cast v3, Lhv0;

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_2
    move-object v3, v2

    .line 110
    :goto_2
    if-eqz v3, :cond_3

    .line 111
    .line 112
    iget v3, v3, Lhv0;->a:I

    .line 113
    .line 114
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    goto :goto_3

    .line 119
    :cond_3
    move-object v3, v2

    .line 120
    :goto_3
    if-nez v3, :cond_4

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    const/16 v4, 0x194

    .line 128
    .line 129
    if-eq v3, v4, :cond_5

    .line 130
    .line 131
    :goto_4
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 132
    .line 133
    invoke-static {v0}, Ldv0;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    const-string v3, "deleteFilesByIds: "

    .line 138
    .line 139
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    const/4 v9, 0x4

    .line 144
    const/4 v10, 0x0

    .line 145
    iget-object v6, p0, Loh0;->d:Ljava/lang/String;

    .line 146
    .line 147
    const/4 v8, 0x0

    .line 148
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    move-object v2, v0

    .line 152
    :cond_5
    :goto_5
    if-nez v2, :cond_6

    .line 153
    .line 154
    sget-object v0, Lgv0;->a:Ljava/util/List;

    .line 155
    .line 156
    invoke-static {v1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {v0}, Lgv0;->c(Ljava/util/List;)V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_6
    throw v2

    .line 165
    :cond_7
    const/4 p0, 0x1

    .line 166
    return p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Loh0;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
