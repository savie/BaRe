.class public final Lax4;
.super Lix7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lax4;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lbs2;Lyc9;Lq64;)V
    .locals 10

    .line 1
    iget p0, p0, Lax4;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Lq64;->c()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p3}, Lq64;->b()Lo64;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p1, p2, p0}, Lix7;->c(Lbs2;Lyc9;Lo64;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p0, p1, Lbs2;->d:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lwj7;

    .line 22
    .line 23
    new-instance p1, Landroid/text/style/UnderlineSpan;

    .line 24
    .line 25
    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 26
    .line 27
    .line 28
    iget p2, p3, Lq64;->b:I

    .line 29
    .line 30
    iget p3, p3, Lq64;->d:I

    .line 31
    .line 32
    invoke-static {p0, p1, p2, p3}, Lwj7;->c(Lwj7;Ljava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_0
    sget-object p0, Llg7;->a:Lq86;

    .line 37
    .line 38
    invoke-virtual {p3}, Lq64;->c()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    goto/16 :goto_4

    .line 45
    .line 46
    :cond_1
    invoke-virtual {p3}, Lq64;->b()Lo64;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    iget-object v0, p3, Lq64;->a:Ljava/lang/String;

    .line 51
    .line 52
    const-string v1, "ol"

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iget-object v2, p3, Lq64;->a:Ljava/lang/String;

    .line 59
    .line 60
    const-string v3, "ul"

    .line 61
    .line 62
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    if-nez v2, :cond_2

    .line 69
    .line 70
    goto/16 :goto_4

    .line 71
    .line 72
    :cond_2
    iget-object v2, p1, Lbs2;->b:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v2, Lj75;

    .line 75
    .line 76
    iget-object v4, p1, Lbs2;->c:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v4, Ldi4;

    .line 79
    .line 80
    iget-object v5, v2, Lj75;->k:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v5, Lky3;

    .line 83
    .line 84
    const-class v6, Lbx4;

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Lky3;->a(Ljava/lang/Class;)Lsj7;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    const/4 v6, 0x0

    .line 91
    move-object v7, p3

    .line 92
    :cond_3
    :goto_0
    iget-object v7, v7, Lo64;->e:Lo64;

    .line 93
    .line 94
    if-eqz v7, :cond_5

    .line 95
    .line 96
    iget-object v8, v7, Lq64;->a:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    if-nez v9, :cond_4

    .line 103
    .line 104
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    if-eqz v8, :cond_3

    .line 109
    .line 110
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_5
    iget-object p3, p3, Lo64;->f:Ljava/util/ArrayList;

    .line 114
    .line 115
    if-nez p3, :cond_6

    .line 116
    .line 117
    sget-object p3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_6
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    const/4 v1, 0x1

    .line 129
    :cond_7
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-eqz v3, :cond_9

    .line 134
    .line 135
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    check-cast v3, Lo64;

    .line 140
    .line 141
    invoke-static {p1, p2, v3}, Lix7;->c(Lbs2;Lyc9;Lo64;)V

    .line 142
    .line 143
    .line 144
    if-eqz v5, :cond_7

    .line 145
    .line 146
    const-string v7, "li"

    .line 147
    .line 148
    iget-object v8, v3, Lq64;->a:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    if-eqz v7, :cond_7

    .line 155
    .line 156
    if-eqz v0, :cond_8

    .line 157
    .line 158
    sget-object v7, Lkx1;->b:Lkx1;

    .line 159
    .line 160
    invoke-virtual {p0, v4, v7}, Lq86;->b(Ldi4;Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    sget-object v7, Llg7;->c:Lq86;

    .line 164
    .line 165
    add-int/lit8 v8, v1, 0x1

    .line 166
    .line 167
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v7, v4, v1}, Lq86;->b(Ldi4;Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    move v1, v8

    .line 175
    goto :goto_3

    .line 176
    :cond_8
    sget-object v7, Lkx1;->a:Lkx1;

    .line 177
    .line 178
    invoke-virtual {p0, v4, v7}, Lq86;->b(Ldi4;Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    sget-object v7, Llg7;->b:Lq86;

    .line 182
    .line 183
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    invoke-virtual {v7, v4, v8}, Lq86;->b(Ldi4;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    :goto_3
    iget-object v7, p1, Lbs2;->d:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v7, Lwj7;

    .line 193
    .line 194
    invoke-interface {v5, v2, v4}, Lsj7;->a(Lj75;Ldi4;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    iget v9, v3, Lq64;->b:I

    .line 199
    .line 200
    iget v3, v3, Lq64;->d:I

    .line 201
    .line 202
    invoke-static {v7, v8, v9, v3}, Lwj7;->c(Lwj7;Ljava/lang/Object;II)V

    .line 203
    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_9
    :goto_4
    return-void

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Ljava/util/Collection;
    .locals 1

    .line 1
    iget p0, p0, Lax4;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p0, "u"

    .line 7
    .line 8
    const-string v0, "ins"

    .line 9
    .line 10
    filled-new-array {p0, v0}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :pswitch_0
    const-string p0, "ol"

    .line 20
    .line 21
    const-string v0, "ul"

    .line 22
    .line 23
    filled-new-array {p0, v0}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
