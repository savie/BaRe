.class public abstract Lhb1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-string v6, "expLink"

    .line 2
    .line 3
    const-string v7, "specialDataLink"

    .line 4
    .line 5
    const-string v0, "apkLink"

    .line 6
    .line 7
    const-string v1, "splitsLink"

    .line 8
    .line 9
    const-string v2, "sharedLibsLink"

    .line 10
    .line 11
    const-string v3, "dataLink"

    .line 12
    .line 13
    const-string v4, "extDataLink"

    .line 14
    .line 15
    const-string v5, "mediaLink"

    .line 16
    .line 17
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "backupLink"

    .line 26
    .line 27
    const-string v2, "manifestLink"

    .line 28
    .line 29
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    new-instance v2, Lpw5;

    .line 38
    .line 39
    const-string v3, "apps"

    .line 40
    .line 41
    invoke-direct {v2, v3, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    new-instance v3, Lpw5;

    .line 45
    .line 46
    const-string v4, "cloudBackupsList"

    .line 47
    .line 48
    invoke-direct {v3, v4, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lpw5;

    .line 52
    .line 53
    const-string v4, "folders"

    .line 54
    .line 55
    invoke-direct {v0, v4, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    filled-new-array {v2, v3, v0}, [Lpw5;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 63
    .line 64
    const/4 v2, 0x3

    .line 65
    invoke-static {v2}, Lx65;->q0(I)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-static {v1, v0}, Lx65;->s0(Ljava/util/HashMap;[Lpw5;)V

    .line 73
    .line 74
    .line 75
    sput-object v1, Lhb1;->a:Ljava/util/LinkedHashMap;

    .line 76
    .line 77
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/util/Set;Ljava/util/LinkedHashSet;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    goto/16 :goto_5

    .line 5
    .line 6
    :cond_0
    instance-of v1, p0, Ljava/util/Map;

    .line 7
    .line 8
    const-string v2, "/"

    .line 9
    .line 10
    if-eqz v1, :cond_8

    .line 11
    .line 12
    check-cast p0, Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_e

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/util/Map$Entry;

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    instance-of v4, v3, Ljava/lang/String;

    .line 43
    .line 44
    const-string v5, "\' is not a string"

    .line 45
    .line 46
    if-nez v4, :cond_2

    .line 47
    .line 48
    const-string v1, "Cloud metadata key at \'"

    .line 49
    .line 50
    invoke-static {v1, p3, v5}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_6

    .line 60
    .line 61
    if-nez v1, :cond_4

    .line 62
    .line 63
    :cond_3
    :goto_0
    move-object v1, v0

    .line 64
    goto :goto_1

    .line 65
    :cond_4
    instance-of v4, v1, Ljava/lang/String;

    .line 66
    .line 67
    if-eqz v4, :cond_5

    .line 68
    .line 69
    move-object v3, v1

    .line 70
    check-cast v3, Ljava/lang/CharSequence;

    .line 71
    .line 72
    invoke-static {v3}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-nez v3, :cond_3

    .line 77
    .line 78
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v4, "Cloud link \'"

    .line 85
    .line 86
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    goto :goto_1

    .line 106
    :cond_6
    instance-of v4, v1, Ljava/util/Map;

    .line 107
    .line 108
    if-nez v4, :cond_7

    .line 109
    .line 110
    instance-of v4, v1, Ljava/lang/Iterable;

    .line 111
    .line 112
    if-eqz v4, :cond_3

    .line 113
    .line 114
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-static {v1, p1, p2, v3}, Lhb1;->a(Ljava/lang/Object;Ljava/util/Set;Ljava/util/LinkedHashSet;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    :goto_1
    if-eqz v1, :cond_1

    .line 137
    .line 138
    return-object v1

    .line 139
    :cond_8
    instance-of v1, p0, Ljava/lang/Iterable;

    .line 140
    .line 141
    const-string v3, "\' is not a container"

    .line 142
    .line 143
    const-string v4, "Cloud metadata value at \'"

    .line 144
    .line 145
    if-eqz v1, :cond_f

    .line 146
    .line 147
    check-cast p0, Ljava/lang/Iterable;

    .line 148
    .line 149
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    check-cast p0, Ljava/util/Iterator;

    .line 154
    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    const/4 v1, 0x0

    .line 159
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    if-eqz v5, :cond_e

    .line 164
    .line 165
    new-instance v5, Lub4;

    .line 166
    .line 167
    add-int/lit8 v6, v1, 0x1

    .line 168
    .line 169
    if-ltz v1, :cond_d

    .line 170
    .line 171
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    invoke-direct {v5, v1, v7}, Lub4;-><init>(ILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    iget-object v1, v5, Lub4;->b:Ljava/lang/Object;

    .line 179
    .line 180
    if-nez v1, :cond_9

    .line 181
    .line 182
    move-object v1, v0

    .line 183
    goto :goto_4

    .line 184
    :cond_9
    instance-of v7, v1, Ljava/util/Map;

    .line 185
    .line 186
    iget v5, v5, Lub4;->a:I

    .line 187
    .line 188
    if-nez v7, :cond_b

    .line 189
    .line 190
    instance-of v7, v1, Ljava/lang/Iterable;

    .line 191
    .line 192
    if-eqz v7, :cond_a

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_a
    invoke-static {v4, p3, v2, v5, v3}, Lu48;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    goto :goto_4

    .line 200
    :cond_b
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    invoke-static {v1, p1, p2, v5}, Lhb1;->a(Ljava/lang/Object;Ljava/util/Set;Ljava/util/LinkedHashSet;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    :goto_4
    if-eqz v1, :cond_c

    .line 223
    .line 224
    return-object v1

    .line 225
    :cond_c
    move v1, v6

    .line 226
    goto :goto_2

    .line 227
    :cond_d
    invoke-static {}, Lfl1;->F0()V

    .line 228
    .line 229
    .line 230
    throw v0

    .line 231
    :cond_e
    :goto_5
    return-object v0

    .line 232
    :cond_f
    invoke-static {v4, p3, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    return-object p0
.end method
