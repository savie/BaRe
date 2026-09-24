.class public final synthetic Llv5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lov5;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lov5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llv5;->a:Lov5;

    .line 5
    .line 6
    iput-object p2, p0, Llv5;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Llv5;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Llv5;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/16 v2, 0x2f

    .line 6
    .line 7
    aput-char v2, v0, v1

    .line 8
    .line 9
    iget-object v3, p0, Llv5;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v3, v0}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v3, ""

    .line 16
    .line 17
    invoke-static {v2, v0, v3}, Lnq7;->E0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget-object v3, p0, Llv5;->a:Lov5;

    .line 26
    .line 27
    if-lez v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v3, v0}, Lov5;->t(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Llv5;->c:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v0}, Lov5;->w(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    iget-object p0, p0, Llv5;->d:Ljava/lang/String;

    .line 39
    .line 40
    const-string v4, "POST"

    .line 41
    .line 42
    const-string v5, "topath"

    .line 43
    .line 44
    const-string v6, "toPath"

    .line 45
    .line 46
    const-string v7, "path"

    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    invoke-virtual {v3}, Lov5;->u()Lpe;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lcom/pcloud/sdk/internal/a;

    .line 55
    .line 56
    invoke-static {p0, v7}, Lcom/pcloud/sdk/internal/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v6}, Lcom/pcloud/sdk/internal/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v3, Lokhttp3/FormBody$Builder;

    .line 63
    .line 64
    invoke-direct {v3, v1}, Lokhttp3/FormBody$Builder;-><init>(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v7, p0}, Lokhttp3/FormBody$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v5, v0}, Lokhttp3/FormBody$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Lokhttp3/FormBody$Builder;->c()Lokhttp3/FormBody;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {v2}, Lcom/pcloud/sdk/internal/a;->i()Lokhttp3/Request$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object v1, v2, Lcom/pcloud/sdk/internal/a;->c:Lokhttp3/HttpUrl;

    .line 82
    .line 83
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const-string v3, "renamefile"

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Lokhttp3/HttpUrl$Builder;->c(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iput-object v1, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 97
    .line 98
    invoke-virtual {v0, v4, p0}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 99
    .line 100
    .line 101
    new-instance p0, Lokhttp3/Request;

    .line 102
    .line 103
    invoke-direct {p0, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 104
    .line 105
    .line 106
    new-instance v0, Llb;

    .line 107
    .line 108
    invoke-direct {v0, v2}, Llb;-><init>(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, p0, v0}, Lcom/pcloud/sdk/internal/a;->h(Lokhttp3/Request;Lhm6;)Lks5;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {p0}, Lks5;->a()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    return-object p0

    .line 120
    :cond_1
    invoke-virtual {v3}, Lov5;->u()Lpe;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Lcom/pcloud/sdk/internal/a;

    .line 125
    .line 126
    invoke-static {p0, v7}, Lcom/pcloud/sdk/internal/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v0, v6}, Lcom/pcloud/sdk/internal/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    new-instance v3, Lokhttp3/FormBody$Builder;

    .line 133
    .line 134
    invoke-direct {v3, v1}, Lokhttp3/FormBody$Builder;-><init>(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v7, p0}, Lokhttp3/FormBody$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v5, v0}, Lokhttp3/FormBody$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3}, Lokhttp3/FormBody$Builder;->c()Lokhttp3/FormBody;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-virtual {v2}, Lcom/pcloud/sdk/internal/a;->i()Lokhttp3/Request$Builder;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iget-object v1, v2, Lcom/pcloud/sdk/internal/a;->c:Lokhttp3/HttpUrl;

    .line 152
    .line 153
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    const-string v3, "renamefolder"

    .line 158
    .line 159
    invoke-virtual {v1, v3}, Lokhttp3/HttpUrl$Builder;->c(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    iput-object v1, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 167
    .line 168
    invoke-virtual {v0, v4, p0}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 169
    .line 170
    .line 171
    new-instance p0, Lokhttp3/Request;

    .line 172
    .line 173
    invoke-direct {p0, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 174
    .line 175
    .line 176
    new-instance v0, Lgb;

    .line 177
    .line 178
    const/4 v1, 0x7

    .line 179
    invoke-direct {v0, v2, v1}, Lgb;-><init>(Ljava/lang/Object;I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, p0, v0}, Lcom/pcloud/sdk/internal/a;->h(Lokhttp3/Request;Lhm6;)Lks5;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    return-object p0
.end method
