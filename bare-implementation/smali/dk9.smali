.class public final Ldk9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final c:Ldk9;


# instance fields
.field public final a:Lrb;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ldk9;

    .line 2
    .line 3
    invoke-direct {v0}, Ldk9;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ldk9;->c:Ldk9;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ldk9;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Lrb;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-direct {v0, v1}, Lrb;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Ldk9;->a:Lrb;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljk9;
    .locals 7

    .line 1
    sget-object v0, Lvh9;->a:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_e

    .line 5
    .line 6
    iget-object v1, p0, Ldk9;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Ljk9;

    .line 13
    .line 14
    if-nez v2, :cond_d

    .line 15
    .line 16
    iget-object p0, p0, Ldk9;->a:Lrb;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget-object v2, Lnk9;->a:Ljava/lang/Class;

    .line 22
    .line 23
    const-class v2, Lih9;

    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    sget-object v3, Lnk9;->a:Ljava/lang/Class;

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string p0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    .line 43
    .line 44
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_1
    :goto_0
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p0, Lpi9;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lpi9;->zzb(Ljava/lang/Class;)Lhk9;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    iget v3, p0, Lhk9;->c:I

    .line 57
    .line 58
    const/4 v4, 0x2

    .line 59
    and-int/2addr v3, v4

    .line 60
    const/4 v5, 0x1

    .line 61
    if-ne v3, v4, :cond_2

    .line 62
    .line 63
    move v3, v5

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const/4 v3, 0x0

    .line 66
    :goto_1
    const-string v6, "Protobuf runtime is not correctly loaded."

    .line 67
    .line 68
    if-eqz v3, :cond_5

    .line 69
    .line 70
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    sget-object v0, Lnk9;->c:Ljl9;

    .line 77
    .line 78
    sget-object v2, Lxg9;->a:Lwg9;

    .line 79
    .line 80
    iget-object p0, p0, Lhk9;->a:Ljf9;

    .line 81
    .line 82
    new-instance v3, Lrj9;

    .line 83
    .line 84
    invoke-direct {v3, v0, v2, p0}, Lrj9;-><init>(Ljl9;Lwg9;Ljf9;)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_2

    .line 88
    .line 89
    :cond_3
    sget-object v2, Lnk9;->b:Ljl9;

    .line 90
    .line 91
    sget-object v3, Lxg9;->b:Lwg9;

    .line 92
    .line 93
    if-eqz v3, :cond_4

    .line 94
    .line 95
    iget-object p0, p0, Lhk9;->a:Ljf9;

    .line 96
    .line 97
    new-instance v0, Lrj9;

    .line 98
    .line 99
    invoke-direct {v0, v2, v3, p0}, Lrj9;-><init>(Ljl9;Lwg9;Ljf9;)V

    .line 100
    .line 101
    .line 102
    move-object v3, v0

    .line 103
    goto :goto_2

    .line 104
    :cond_4
    invoke-static {v6}, Ll0;->e(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-object v0

    .line 108
    :cond_5
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_8

    .line 113
    .line 114
    iget v0, p0, Lhk9;->c:I

    .line 115
    .line 116
    and-int/2addr v0, v5

    .line 117
    if-eqz v0, :cond_6

    .line 118
    .line 119
    move v4, v5

    .line 120
    :cond_6
    add-int/lit8 v4, v4, -0x1

    .line 121
    .line 122
    if-eq v4, v5, :cond_7

    .line 123
    .line 124
    sget v0, Lzj9;->a:I

    .line 125
    .line 126
    sget-object v0, Lli9;->b:Lii9;

    .line 127
    .line 128
    sget-object v2, Lnk9;->c:Ljl9;

    .line 129
    .line 130
    sget-object v3, Lxg9;->a:Lwg9;

    .line 131
    .line 132
    sget v3, Lwi9;->a:I

    .line 133
    .line 134
    invoke-static {p0, v0, v2}, Loj9;->n(Lhk9;Lli9;Ljl9;)Loj9;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    goto :goto_2

    .line 139
    :cond_7
    sget v0, Lzj9;->a:I

    .line 140
    .line 141
    sget-object v0, Lli9;->b:Lii9;

    .line 142
    .line 143
    sget-object v2, Lnk9;->c:Ljl9;

    .line 144
    .line 145
    sget v3, Lwi9;->a:I

    .line 146
    .line 147
    invoke-static {p0, v0, v2}, Loj9;->n(Lhk9;Lli9;Ljl9;)Loj9;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    goto :goto_2

    .line 152
    :cond_8
    iget v2, p0, Lhk9;->c:I

    .line 153
    .line 154
    and-int/2addr v2, v5

    .line 155
    if-eqz v2, :cond_9

    .line 156
    .line 157
    move v4, v5

    .line 158
    :cond_9
    add-int/lit8 v4, v4, -0x1

    .line 159
    .line 160
    if-eq v4, v5, :cond_b

    .line 161
    .line 162
    sget v2, Lzj9;->a:I

    .line 163
    .line 164
    sget-object v2, Lli9;->a:Lgi9;

    .line 165
    .line 166
    sget-object v3, Lnk9;->b:Ljl9;

    .line 167
    .line 168
    sget-object v4, Lxg9;->b:Lwg9;

    .line 169
    .line 170
    if-eqz v4, :cond_a

    .line 171
    .line 172
    sget v0, Lwi9;->a:I

    .line 173
    .line 174
    invoke-static {p0, v2, v3}, Loj9;->n(Lhk9;Lli9;Ljl9;)Loj9;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    goto :goto_2

    .line 179
    :cond_a
    invoke-static {v6}, Ll0;->e(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    return-object v0

    .line 183
    :cond_b
    sget v0, Lzj9;->a:I

    .line 184
    .line 185
    sget-object v0, Lli9;->a:Lgi9;

    .line 186
    .line 187
    sget-object v2, Lnk9;->b:Ljl9;

    .line 188
    .line 189
    sget v3, Lwi9;->a:I

    .line 190
    .line 191
    invoke-static {p0, v0, v2}, Loj9;->n(Lhk9;Lli9;Ljl9;)Loj9;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    :goto_2
    invoke-virtual {v1, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    check-cast p0, Ljk9;

    .line 200
    .line 201
    if-nez p0, :cond_c

    .line 202
    .line 203
    return-object v3

    .line 204
    :cond_c
    return-object p0

    .line 205
    :cond_d
    return-object v2

    .line 206
    :cond_e
    const-string p0, "messageType"

    .line 207
    .line 208
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    return-object v0
.end method
