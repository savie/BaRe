.class public final Lcl7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final b:Lcl7;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcl7;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcl7;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcl7;->b:Lcl7;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcl7;->a:I

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
    iget p0, p0, Lcl7;->a:I

    .line 2
    .line 3
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lcom/google/android/gms/common/api/Scope;

    .line 9
    .line 10
    check-cast p2, Lcom/google/android/gms/common/api/Scope;

    .line 11
    .line 12
    iget-object p0, p1, Lcom/google/android/gms/common/api/Scope;->b:Ljava/lang/String;

    .line 13
    .line 14
    iget-object p1, p2, Lcom/google/android/gms/common/api/Scope;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :pswitch_0
    check-cast p1, Lxy8;

    .line 22
    .line 23
    iget-object p0, p1, Lxy8;->a:Ley5;

    .line 24
    .line 25
    check-cast p2, Lxy8;

    .line 26
    .line 27
    iget-object p1, p2, Lxy8;->a:Ley5;

    .line 28
    .line 29
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0

    .line 34
    :pswitch_1
    check-cast p1, Ljava/lang/Comparable;

    .line 35
    .line 36
    check-cast p2, Ljava/lang/Comparable;

    .line 37
    .line 38
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0

    .line 43
    :pswitch_2
    check-cast p1, Lvq4;

    .line 44
    .line 45
    iget-object p0, p1, Lvq4;->a:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 46
    .line 47
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->isBuiltInLabel()Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p2, Lvq4;

    .line 56
    .line 57
    iget-object p1, p2, Lvq4;->a:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 58
    .line 59
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->isBuiltInLabel()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    return p0

    .line 72
    :pswitch_3
    check-cast p1, Lsu3;

    .line 73
    .line 74
    check-cast p2, Lsu3;

    .line 75
    .line 76
    iget-object p0, p1, Lsu3;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 77
    .line 78
    const/4 v0, 0x0

    .line 79
    const/4 v1, 0x1

    .line 80
    if-nez p0, :cond_0

    .line 81
    .line 82
    move v2, v1

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    move v2, v0

    .line 85
    :goto_0
    iget-object v3, p2, Lsu3;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 86
    .line 87
    if-nez v3, :cond_1

    .line 88
    .line 89
    move v3, v1

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    move v3, v0

    .line 92
    :goto_1
    if-eq v2, v3, :cond_2

    .line 93
    .line 94
    if-nez p0, :cond_3

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    iget-boolean p0, p1, Lsu3;->a:Z

    .line 98
    .line 99
    iget-boolean v2, p2, Lsu3;->a:Z

    .line 100
    .line 101
    if-eq p0, v2, :cond_5

    .line 102
    .line 103
    if-eqz p0, :cond_4

    .line 104
    .line 105
    :cond_3
    const/4 v0, -0x1

    .line 106
    goto :goto_4

    .line 107
    :cond_4
    :goto_2
    move v0, v1

    .line 108
    goto :goto_4

    .line 109
    :cond_5
    iget p0, p2, Lsu3;->b:I

    .line 110
    .line 111
    iget v1, p1, Lsu3;->b:I

    .line 112
    .line 113
    sub-int/2addr p0, v1

    .line 114
    if-eqz p0, :cond_6

    .line 115
    .line 116
    :goto_3
    move v0, p0

    .line 117
    goto :goto_4

    .line 118
    :cond_6
    iget p0, p1, Lsu3;->c:I

    .line 119
    .line 120
    iget p1, p2, Lsu3;->c:I

    .line 121
    .line 122
    sub-int/2addr p0, p1

    .line 123
    if-eqz p0, :cond_7

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_7
    :goto_4
    return v0

    .line 127
    :pswitch_4
    check-cast p1, Lzk3;

    .line 128
    .line 129
    iget-object p0, p1, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 130
    .line 131
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    const/16 p1, 0x2e

    .line 136
    .line 137
    invoke-static {p0, p1}, Lnq7;->y0(Ljava/lang/CharSequence;C)Z

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    check-cast p2, Lzk3;

    .line 146
    .line 147
    iget-object p2, p2, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 148
    .line 149
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-static {p2, p1}, Lnq7;->y0(Ljava/lang/CharSequence;C)Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    return p0

    .line 166
    :pswitch_5
    check-cast p1, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 167
    .line 168
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getName()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    check-cast p2, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 173
    .line 174
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getName()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 179
    .line 180
    .line 181
    move-result p0

    .line 182
    return p0

    .line 183
    :pswitch_6
    check-cast p1, Ljava/lang/String;

    .line 184
    .line 185
    check-cast p2, Ljava/lang/String;

    .line 186
    .line 187
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 188
    .line 189
    .line 190
    move-result p0

    .line 191
    return p0

    .line 192
    :pswitch_7
    check-cast p1, Lrv0;

    .line 193
    .line 194
    iget-wide p0, p1, Lrv0;->b:J

    .line 195
    .line 196
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    check-cast p2, Lrv0;

    .line 201
    .line 202
    iget-wide p1, p2, Lrv0;->b:J

    .line 203
    .line 204
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 209
    .line 210
    .line 211
    move-result p0

    .line 212
    return p0

    .line 213
    :pswitch_8
    check-cast p2, Lhk;

    .line 214
    .line 215
    iget-object p0, p2, Lhk;->G:Lgv7;

    .line 216
    .line 217
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    check-cast p0, Ljava/lang/Number;

    .line 222
    .line 223
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 224
    .line 225
    .line 226
    move-result-wide v0

    .line 227
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    check-cast p1, Lhk;

    .line 232
    .line 233
    iget-object p1, p1, Lhk;->G:Lgv7;

    .line 234
    .line 235
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    check-cast p1, Ljava/lang/Number;

    .line 240
    .line 241
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 242
    .line 243
    .line 244
    move-result-wide p1

    .line 245
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 250
    .line 251
    .line 252
    move-result p0

    .line 253
    return p0

    .line 254
    :pswitch_9
    check-cast p1, Ljava/lang/Comparable;

    .line 255
    .line 256
    check-cast p2, Ljava/lang/Comparable;

    .line 257
    .line 258
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 259
    .line 260
    .line 261
    move-result p0

    .line 262
    return p0

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
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
