.class public final synthetic Llu;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Llu;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Llu;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Llu;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 1
    iget p1, p0, Llu;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Llu;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Llu;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;

    .line 11
    .line 12
    move-object v4, v0

    .line 13
    check-cast v4, Landroid/graphics/Bitmap;

    .line 14
    .line 15
    sget-object p1, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->O:Lao8;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    if-eqz p2, :cond_2

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    if-eq p2, p1, :cond_1

    .line 22
    .line 23
    const/4 p1, 0x2

    .line 24
    if-eq p2, p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->O()Lco8;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    sget-object v3, Lho8;->BOTH:Lho8;

    .line 32
    .line 33
    sget-object p0, Lzn4;->a:Lzn4;

    .line 34
    .line 35
    new-instance v1, Lm30;

    .line 36
    .line 37
    const/4 v6, 0x1

    .line 38
    invoke-direct/range {v1 .. v6}, Lm30;-><init>(Lqo0;Ljava/lang/Object;Landroid/os/Parcelable;Ljv1;I)V

    .line 39
    .line 40
    .line 41
    invoke-static {v5, v1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->O()Lco8;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    sget-object v3, Lho8;->LOCK:Lho8;

    .line 50
    .line 51
    sget-object p0, Lzn4;->a:Lzn4;

    .line 52
    .line 53
    new-instance v1, Lm30;

    .line 54
    .line 55
    const/4 v6, 0x1

    .line 56
    invoke-direct/range {v1 .. v6}, Lm30;-><init>(Lqo0;Ljava/lang/Object;Landroid/os/Parcelable;Ljv1;I)V

    .line 57
    .line 58
    .line 59
    invoke-static {v5, v1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->O()Lco8;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    sget-object v3, Lho8;->HOME:Lho8;

    .line 68
    .line 69
    sget-object p0, Lzn4;->a:Lzn4;

    .line 70
    .line 71
    new-instance v1, Lm30;

    .line 72
    .line 73
    const/4 v6, 0x1

    .line 74
    invoke-direct/range {v1 .. v6}, Lm30;-><init>(Lqo0;Ljava/lang/Object;Landroid/os/Parcelable;Ljv1;I)V

    .line 75
    .line 76
    .line 77
    invoke-static {v5, v1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void

    .line 81
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 82
    .line 83
    check-cast v0, Lvi1;

    .line 84
    .line 85
    sget p1, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 86
    .line 87
    invoke-virtual {p0, v0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->Y(Lvi1;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_1
    check-cast p0, Lx01;

    .line 92
    .line 93
    check-cast v0, Lrz0;

    .line 94
    .line 95
    invoke-virtual {p0}, Lx01;->U()Lb11;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {v0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {v0}, Lrz0;->isCloudItem()Z

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    invoke-virtual {p0, p1, p2}, Lb11;->j(Ljava/util/List;Z)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :pswitch_2
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 112
    .line 113
    check-cast v0, Lmt3;

    .line 114
    .line 115
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    new-instance p1, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    if-eqz p2, :cond_4

    .line 133
    .line 134
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    check-cast p2, Ljava/lang/String;

    .line 139
    .line 140
    sget-object v1, Liu;->Companion:Lgu;

    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-static {p2}, Lgu;->a(Ljava/lang/String;)Liu;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    if-eqz p2, :cond_3

    .line 150
    .line 151
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result p2

    .line 168
    if-eqz p2, :cond_6

    .line 169
    .line 170
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    move-object v1, p2

    .line 175
    check-cast v1, Liu;

    .line 176
    .line 177
    invoke-virtual {v1}, Liu;->getBackupReq()Lsk0;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {v1}, Lsk0;->isPossible()Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_5

    .line 186
    .line 187
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_6
    invoke-static {p0}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    invoke-interface {v0, p0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
