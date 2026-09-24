.class public final Lyg;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;I)V
    .locals 0

    .line 1
    iput p2, p0, Lyg;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lyg;->b:Ljava/util/Comparator;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    iget v0, p0, Lyg;->a:I

    .line 2
    .line 3
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 4
    .line 5
    iget-object p0, p0, Lyg;->b:Ljava/util/Comparator;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lxg;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lxg;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    check-cast p1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 20
    .line 21
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v0, ""

    .line 26
    .line 27
    if-nez p0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    if-nez p0, :cond_1

    .line 34
    .line 35
    move-object p0, v0

    .line 36
    :cond_1
    check-cast p2, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 37
    .line 38
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    move-object v0, p1

    .line 52
    :goto_0
    invoke-interface {v1, p0, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    :goto_1
    return p0

    .line 57
    :pswitch_0
    check-cast p0, Lyx;

    .line 58
    .line 59
    invoke-virtual {p0, p1, p2}, Lyx;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_3

    .line 64
    .line 65
    goto :goto_5

    .line 66
    :cond_3
    check-cast p1, Lpw5;

    .line 67
    .line 68
    sget-object p0, Lo54;->a:Lai6;

    .line 69
    .line 70
    iget-object p0, p1, Lpw5;->b:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p0, Ls54;

    .line 73
    .line 74
    iget-object p1, p0, Ls54;->b:Lu54;

    .line 75
    .line 76
    sget-object v0, Lu54;->APPS:Lu54;

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    const/4 v2, 0x1

    .line 80
    if-eq p1, v0, :cond_4

    .line 81
    .line 82
    move p0, v1

    .line 83
    goto :goto_3

    .line 84
    :cond_4
    iget-object p0, p0, Ls54;->n:Lji;

    .line 85
    .line 86
    if-eqz p0, :cond_5

    .line 87
    .line 88
    invoke-virtual {p0}, Lji;->isLaunchable()Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-ne p0, v2, :cond_5

    .line 93
    .line 94
    move p0, v2

    .line 95
    goto :goto_2

    .line 96
    :cond_5
    move p0, v1

    .line 97
    :goto_2
    xor-int/2addr p0, v2

    .line 98
    :goto_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    check-cast p2, Lpw5;

    .line 103
    .line 104
    iget-object p1, p2, Lpw5;->b:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast p1, Ls54;

    .line 107
    .line 108
    iget-object p2, p1, Ls54;->b:Lu54;

    .line 109
    .line 110
    if-eq p2, v0, :cond_6

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_6
    iget-object p1, p1, Ls54;->n:Lji;

    .line 114
    .line 115
    if-eqz p1, :cond_7

    .line 116
    .line 117
    invoke-virtual {p1}, Lji;->isLaunchable()Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-ne p1, v2, :cond_7

    .line 122
    .line 123
    move v1, v2

    .line 124
    :cond_7
    xor-int/2addr v1, v2

    .line 125
    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    :goto_5
    return p0

    .line 134
    :pswitch_1
    check-cast p0, Lxg;

    .line 135
    .line 136
    invoke-virtual {p0, p1, p2}, Lxg;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    if-eqz p0, :cond_8

    .line 141
    .line 142
    goto :goto_6

    .line 143
    :cond_8
    check-cast p1, Lr00;

    .line 144
    .line 145
    iget-object p0, p1, Lr00;->b:Ljava/lang/String;

    .line 146
    .line 147
    check-cast p2, Lr00;

    .line 148
    .line 149
    iget-object p1, p2, Lr00;->b:Ljava/lang/String;

    .line 150
    .line 151
    invoke-interface {v1, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 152
    .line 153
    .line 154
    move-result p0

    .line 155
    :goto_6
    return p0

    .line 156
    :pswitch_2
    check-cast p0, Ljava/text/Collator;

    .line 157
    .line 158
    check-cast p1, Lji;

    .line 159
    .line 160
    invoke-virtual {p1}, Lji;->getName()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    check-cast p2, Lji;

    .line 165
    .line 166
    invoke-virtual {p2}, Lji;->getName()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 171
    .line 172
    .line 173
    move-result p0

    .line 174
    return p0

    .line 175
    :pswitch_3
    check-cast p0, Lxg;

    .line 176
    .line 177
    invoke-virtual {p0, p1, p2}, Lxg;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    if-eqz p0, :cond_9

    .line 182
    .line 183
    goto :goto_7

    .line 184
    :cond_9
    check-cast p1, Lq63;

    .line 185
    .line 186
    invoke-virtual {p1}, Lq63;->p()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    check-cast p2, Lq63;

    .line 191
    .line 192
    invoke-virtual {p2}, Lq63;->p()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 197
    .line 198
    .line 199
    move-result p0

    .line 200
    :goto_7
    return p0

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
