.class public final Lnx;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnx;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget p0, p0, Lnx;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/util/Map$Entry;

    .line 7
    .line 8
    check-cast p2, Ljava/util/Map$Entry;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p0, Ljava/lang/Comparable;

    .line 25
    .line 26
    check-cast p1, Ljava/lang/Comparable;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0

    .line 39
    :pswitch_0
    check-cast p1, Lpw7;

    .line 40
    .line 41
    iget-object p0, p1, Lpw7;->a:Ljava/lang/String;

    .line 42
    .line 43
    check-cast p2, Lpw7;

    .line 44
    .line 45
    iget-object p1, p2, Lpw7;->a:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0

    .line 52
    :pswitch_1
    check-cast p2, Lvd5;

    .line 53
    .line 54
    invoke-virtual {p2}, Lvd5;->getBackupTime()J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p1, Lvd5;

    .line 63
    .line 64
    invoke-virtual {p1}, Lvd5;->getBackupTime()J

    .line 65
    .line 66
    .line 67
    move-result-wide p1

    .line 68
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    return p0

    .line 77
    :pswitch_2
    check-cast p2, Lis4;

    .line 78
    .line 79
    iget-wide v0, p2, Lis4;->d:D

    .line 80
    .line 81
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    check-cast p1, Lis4;

    .line 86
    .line 87
    iget-wide p1, p1, Lis4;->d:D

    .line 88
    .line 89
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    return p0

    .line 98
    :pswitch_3
    check-cast p2, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;

    .line 99
    .line 100
    invoke-virtual {p2}, Lvm3;->getDate()J

    .line 101
    .line 102
    .line 103
    move-result-wide v0

    .line 104
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    check-cast p1, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;

    .line 109
    .line 110
    invoke-virtual {p1}, Lvm3;->getDate()J

    .line 111
    .line 112
    .line 113
    move-result-wide p1

    .line 114
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    return p0

    .line 123
    :pswitch_4
    check-cast p1, Lq63;

    .line 124
    .line 125
    invoke-virtual {p1}, Lq63;->p()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    check-cast p2, Lq63;

    .line 130
    .line 131
    invoke-virtual {p2}, Lq63;->p()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    return p0

    .line 140
    :pswitch_5
    check-cast p1, Ljava/lang/String;

    .line 141
    .line 142
    check-cast p2, Ljava/lang/String;

    .line 143
    .line 144
    sget-object p0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 145
    .line 146
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    return p0

    .line 151
    :pswitch_6
    check-cast p2, Lrz0;

    .line 152
    .line 153
    invoke-virtual {p2}, Lrz0;->getBackupTime()J

    .line 154
    .line 155
    .line 156
    move-result-wide v0

    .line 157
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    check-cast p1, Lrz0;

    .line 162
    .line 163
    invoke-virtual {p1}, Lrz0;->getBackupTime()J

    .line 164
    .line 165
    .line 166
    move-result-wide p1

    .line 167
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    return p0

    .line 176
    :pswitch_7
    check-cast p2, Lwb6;

    .line 177
    .line 178
    invoke-virtual {p2}, Lwb6;->getPurchaseTime()Ljava/lang/Long;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    const-wide/16 v0, -0x1

    .line 183
    .line 184
    if-eqz p0, :cond_0

    .line 185
    .line 186
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 187
    .line 188
    .line 189
    move-result-wide v2

    .line 190
    goto :goto_0

    .line 191
    :cond_0
    move-wide v2, v0

    .line 192
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    check-cast p1, Lwb6;

    .line 197
    .line 198
    invoke-virtual {p1}, Lwb6;->getPurchaseTime()Ljava/lang/Long;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    if-eqz p1, :cond_1

    .line 203
    .line 204
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 205
    .line 206
    .line 207
    move-result-wide v0

    .line 208
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 213
    .line 214
    .line 215
    move-result p0

    .line 216
    return p0

    .line 217
    :pswitch_8
    check-cast p2, Lmx;

    .line 218
    .line 219
    iget-object p0, p2, Lmx;->h:Lgv7;

    .line 220
    .line 221
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    check-cast p0, Ljava/lang/Number;

    .line 226
    .line 227
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 228
    .line 229
    .line 230
    move-result p0

    .line 231
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    check-cast p1, Lmx;

    .line 236
    .line 237
    iget-object p1, p1, Lmx;->h:Lgv7;

    .line 238
    .line 239
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    check-cast p1, Ljava/lang/Number;

    .line 244
    .line 245
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 254
    .line 255
    .line 256
    move-result p0

    .line 257
    return p0

    .line 258
    nop

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
