.class public final Lwa7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final s:[Lwa7;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Ljava/nio/file/attribute/FileTime;

.field public i:Ljava/nio/file/attribute/FileTime;

.field public j:Ljava/nio/file/attribute/FileTime;

.field public k:Z

.field public l:I

.field public m:Z

.field public n:J

.field public o:J

.field public p:J

.field public q:J

.field public r:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lwa7;

    .line 3
    .line 4
    sput-object v0, Lwa7;->s:[Lwa7;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Iterable;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/util/LinkedList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v1, Luo1;

    .line 9
    .line 10
    const/4 v2, 0x7

    .line 11
    invoke-direct {v1, v0, v2}, Luo1;-><init>(Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lwa7;->r:Ljava/util/List;

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lwa7;->r:Ljava/util/List;

    .line 26
    .line 27
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    goto/16 :goto_2

    .line 5
    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_7

    .line 8
    .line 9
    const-class v2, Lwa7;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    if-eq v2, v3, :cond_1

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_1
    check-cast p1, Lwa7;

    .line 20
    .line 21
    iget-object v2, p0, Lwa7;->a:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v3, p1, Lwa7;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_7

    .line 30
    .line 31
    iget-boolean v2, p0, Lwa7;->b:Z

    .line 32
    .line 33
    iget-boolean v3, p1, Lwa7;->b:Z

    .line 34
    .line 35
    if-ne v2, v3, :cond_7

    .line 36
    .line 37
    iget-boolean v2, p0, Lwa7;->c:Z

    .line 38
    .line 39
    iget-boolean v3, p1, Lwa7;->c:Z

    .line 40
    .line 41
    if-ne v2, v3, :cond_7

    .line 42
    .line 43
    iget-boolean v2, p0, Lwa7;->d:Z

    .line 44
    .line 45
    iget-boolean v3, p1, Lwa7;->d:Z

    .line 46
    .line 47
    if-ne v2, v3, :cond_7

    .line 48
    .line 49
    iget-boolean v2, p0, Lwa7;->e:Z

    .line 50
    .line 51
    iget-boolean v3, p1, Lwa7;->e:Z

    .line 52
    .line 53
    if-ne v2, v3, :cond_7

    .line 54
    .line 55
    iget-boolean v2, p0, Lwa7;->f:Z

    .line 56
    .line 57
    iget-boolean v3, p1, Lwa7;->f:Z

    .line 58
    .line 59
    if-ne v2, v3, :cond_7

    .line 60
    .line 61
    iget-boolean v2, p0, Lwa7;->g:Z

    .line 62
    .line 63
    iget-boolean v3, p1, Lwa7;->g:Z

    .line 64
    .line 65
    if-ne v2, v3, :cond_7

    .line 66
    .line 67
    iget-object v2, p0, Lwa7;->h:Ljava/nio/file/attribute/FileTime;

    .line 68
    .line 69
    iget-object v3, p1, Lwa7;->h:Ljava/nio/file/attribute/FileTime;

    .line 70
    .line 71
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_7

    .line 76
    .line 77
    iget-object v2, p0, Lwa7;->i:Ljava/nio/file/attribute/FileTime;

    .line 78
    .line 79
    iget-object v3, p1, Lwa7;->i:Ljava/nio/file/attribute/FileTime;

    .line 80
    .line 81
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_7

    .line 86
    .line 87
    iget-object v2, p0, Lwa7;->j:Ljava/nio/file/attribute/FileTime;

    .line 88
    .line 89
    iget-object v3, p1, Lwa7;->j:Ljava/nio/file/attribute/FileTime;

    .line 90
    .line 91
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_7

    .line 96
    .line 97
    iget-boolean v2, p0, Lwa7;->k:Z

    .line 98
    .line 99
    iget-boolean v3, p1, Lwa7;->k:Z

    .line 100
    .line 101
    if-ne v2, v3, :cond_7

    .line 102
    .line 103
    iget v2, p0, Lwa7;->l:I

    .line 104
    .line 105
    iget v3, p1, Lwa7;->l:I

    .line 106
    .line 107
    if-ne v2, v3, :cond_7

    .line 108
    .line 109
    iget-boolean v2, p0, Lwa7;->m:Z

    .line 110
    .line 111
    iget-boolean v3, p1, Lwa7;->m:Z

    .line 112
    .line 113
    if-ne v2, v3, :cond_7

    .line 114
    .line 115
    iget-wide v2, p0, Lwa7;->n:J

    .line 116
    .line 117
    iget-wide v4, p1, Lwa7;->n:J

    .line 118
    .line 119
    cmp-long v2, v2, v4

    .line 120
    .line 121
    if-nez v2, :cond_7

    .line 122
    .line 123
    iget-wide v2, p0, Lwa7;->o:J

    .line 124
    .line 125
    iget-wide v4, p1, Lwa7;->o:J

    .line 126
    .line 127
    cmp-long v2, v2, v4

    .line 128
    .line 129
    if-nez v2, :cond_7

    .line 130
    .line 131
    iget-wide v2, p0, Lwa7;->p:J

    .line 132
    .line 133
    iget-wide v4, p1, Lwa7;->p:J

    .line 134
    .line 135
    cmp-long v2, v2, v4

    .line 136
    .line 137
    if-nez v2, :cond_7

    .line 138
    .line 139
    iget-wide v2, p0, Lwa7;->q:J

    .line 140
    .line 141
    iget-wide v4, p1, Lwa7;->q:J

    .line 142
    .line 143
    cmp-long v2, v2, v4

    .line 144
    .line 145
    if-nez v2, :cond_7

    .line 146
    .line 147
    iget-object p0, p0, Lwa7;->r:Ljava/util/List;

    .line 148
    .line 149
    iget-object p1, p1, Lwa7;->r:Ljava/util/List;

    .line 150
    .line 151
    if-nez p0, :cond_3

    .line 152
    .line 153
    if-nez p1, :cond_2

    .line 154
    .line 155
    move p0, v0

    .line 156
    goto :goto_1

    .line 157
    :cond_2
    :goto_0
    move p0, v1

    .line 158
    goto :goto_1

    .line 159
    :cond_3
    if-nez p1, :cond_4

    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-eqz v2, :cond_6

    .line 175
    .line 176
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    check-cast v2, Lgb7;

    .line 181
    .line 182
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    if-eqz v3, :cond_2

    .line 187
    .line 188
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v2, v3}, Lgb7;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-nez v2, :cond_5

    .line 197
    .line 198
    goto :goto_0

    .line 199
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 200
    .line 201
    .line 202
    move-result p0

    .line 203
    xor-int/2addr p0, v0

    .line 204
    :goto_1
    if-eqz p0, :cond_7

    .line 205
    .line 206
    :goto_2
    return v0

    .line 207
    :cond_7
    :goto_3
    return v1
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lwa7;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method
