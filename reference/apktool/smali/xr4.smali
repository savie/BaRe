.class public final synthetic Lxr4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lzr4;

.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lzr4;Ljava/util/Set;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxr4;->a:Lzr4;

    .line 5
    .line 6
    iput-object p2, p0, Lxr4;->b:Ljava/util/Set;

    .line 7
    .line 8
    iput p3, p0, Lxr4;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lxr4;->a:Lzr4;

    .line 2
    .line 3
    invoke-virtual {v0}, Lzr4;->j()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v1, v3

    .line 20
    :goto_0
    if-nez v1, :cond_4

    .line 21
    .line 22
    iget-object v1, p0, Lxr4;->b:Ljava/util/Set;

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    new-instance v2, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Ljava/lang/String;

    .line 46
    .line 47
    sget-object v5, Llr4;->a:Llr4;

    .line 48
    .line 49
    invoke-static {v4}, Llr4;->c(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    if-eqz v4, :cond_1

    .line 54
    .line 55
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-static {v2}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    move-object v1, v3

    .line 65
    :cond_4
    :goto_2
    if-eqz v1, :cond_6

    .line 66
    .line 67
    new-instance v2, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_7

    .line 81
    .line 82
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    check-cast v4, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 87
    .line 88
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    if-eqz v4, :cond_5

    .line 93
    .line 94
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_6
    move-object v2, v3

    .line 99
    :cond_7
    if-nez v2, :cond_8

    .line 100
    .line 101
    sget-object v2, Lov2;->a:Lov2;

    .line 102
    .line 103
    :cond_8
    invoke-static {v2}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iput-object v1, v0, Lzr4;->h:Ljava/util/Set;

    .line 108
    .line 109
    iget-object v1, v0, Lzr4;->j:Lu95;

    .line 110
    .line 111
    sget-object v2, Llr4;->a:Llr4;

    .line 112
    .line 113
    sget-object v2, Llr4;->f:Lgv7;

    .line 114
    .line 115
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Lex6;

    .line 120
    .line 121
    new-instance v4, Lu10;

    .line 122
    .line 123
    const/16 v5, 0xd

    .line 124
    .line 125
    invoke-direct {v4, v0, v5}, Lu10;-><init>(Ljava/lang/Object;I)V

    .line 126
    .line 127
    .line 128
    new-instance v5, Lwr4;

    .line 129
    .line 130
    const/4 v6, 0x0

    .line 131
    invoke-direct {v5, v6, v4}, Lwr4;-><init>(ILmt3;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v2, v5}, Lu95;->l(Lex6;Les5;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, v0, Lzr4;->i:Lex6;

    .line 138
    .line 139
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Lex6;->k(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    sget-object v1, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 145
    .line 146
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/common/V;->getVp()Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-nez v1, :cond_a

    .line 151
    .line 152
    const-string v1, "mode="

    .line 153
    .line 154
    iget p0, p0, Lxr4;->c:I

    .line 155
    .line 156
    invoke-static {p0, v1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    sget-object v1, Llr4;->e:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;

    .line 161
    .line 162
    if-eqz v1, :cond_9

    .line 163
    .line 164
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;->getLabelParamsMap()Ljava/util/Map;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    if-eqz v1, :cond_9

    .line 169
    .line 170
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string v2, "numLabels="

    .line 181
    .line 182
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    filled-new-array {p0, v1}, [Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-static {p0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    sget-object p0, Lre3;->a:Lzc2;

    .line 201
    .line 202
    iget-object p0, v0, La55;->b:Ljava/lang/String;

    .line 203
    .line 204
    const/4 v5, 0x0

    .line 205
    const/16 v6, 0x3f

    .line 206
    .line 207
    const/4 v2, 0x0

    .line 208
    const/4 v3, 0x0

    .line 209
    const/4 v4, 0x0

    .line 210
    invoke-static/range {v1 .. v6}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    new-instance v1, Lqe3;

    .line 215
    .line 216
    invoke-direct {v1, p0, v0}, Lqe3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    :try_start_0
    invoke-virtual {v1}, Lqe3;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .line 221
    .line 222
    :catch_0
    :cond_a
    sget-object p0, Lbe8;->a:Lbe8;

    .line 223
    .line 224
    return-object p0
.end method
