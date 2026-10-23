.class public final synthetic Lrf;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lrf;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lrf;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lrf;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lrf;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    sget-object v3, Lbe8;->a:Lbe8;

    .line 6
    .line 7
    iget-object v4, p0, Lrf;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p0, p0, Lrf;->b:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Lmt3;

    .line 15
    .line 16
    check-cast v4, Lj57;

    .line 17
    .line 18
    check-cast p1, Ljava/util/Set;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 28
    .line 29
    iget-object p1, v4, Lj57;->o:Lu10;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1, p0}, Lu10;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_0
    return-object v3

    .line 37
    :pswitch_0
    check-cast p0, Ljava/lang/String;

    .line 38
    .line 39
    check-cast v4, Ljava/lang/String;

    .line 40
    .line 41
    check-cast p1, Ljava/util/zip/ZipEntry;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-static {p1, p0, v2}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-nez p0, :cond_3

    .line 64
    .line 65
    invoke-static {p1, v4, v2}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-eqz p0, :cond_2

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    :goto_0
    move v1, v2

    .line 73
    :cond_3
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :pswitch_1
    check-cast p0, Lem2;

    .line 79
    .line 80
    check-cast v4, Ljj2;

    .line 81
    .line 82
    check-cast p1, Ljava/lang/Long;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 85
    .line 86
    .line 87
    move-result-wide v0

    .line 88
    iget-wide v5, p0, Lem2;->d:J

    .line 89
    .line 90
    invoke-static {v0, v1, v5, v6}, Lorg/swiftapps/swiftbackup/common/Const;->r(JJ)I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    int-to-double v0, p1

    .line 95
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 96
    .line 97
    rem-double/2addr v0, v5

    .line 98
    const-wide/16 v5, 0x0

    .line 99
    .line 100
    cmpg-double v0, v0, v5

    .line 101
    .line 102
    if-nez v0, :cond_4

    .line 103
    .line 104
    iget v0, p0, Lem2;->e:I

    .line 105
    .line 106
    if-eq p1, v0, :cond_4

    .line 107
    .line 108
    iput p1, p0, Lem2;->e:I

    .line 109
    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {v4, p0}, Ljj2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    :cond_4
    return-object v3

    .line 118
    :pswitch_2
    check-cast p0, Lz11;

    .line 119
    .line 120
    check-cast v4, Lb21;

    .line 121
    .line 122
    iget-object v0, v4, Lb21;->i:Landroid/widget/TextView;

    .line 123
    .line 124
    check-cast p1, Ljava/lang/String;

    .line 125
    .line 126
    if-eqz p1, :cond_6

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-nez v5, :cond_5

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_5
    invoke-virtual {p0}, Lpw6;->e()Lgz7;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {p0}, Lgz7;->isComplete()Z

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    if-nez p0, :cond_6

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_6
    :goto_2
    move v1, v2

    .line 147
    :goto_3
    invoke-static {v0, v1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 148
    .line 149
    .line 150
    iget-object p0, v4, Lb21;->j:Landroid/view/View;

    .line 151
    .line 152
    invoke-static {p0, v1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 153
    .line 154
    .line 155
    iget-object p0, v4, Lb21;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 156
    .line 157
    invoke-static {p0, v1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 158
    .line 159
    .line 160
    if-eqz v1, :cond_7

    .line 161
    .line 162
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    :cond_7
    return-object v3

    .line 166
    :pswitch_3
    check-cast p0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;

    .line 167
    .line 168
    check-cast v4, Lzf;

    .line 169
    .line 170
    check-cast p1, Ljava/lang/Boolean;

    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-eqz p1, :cond_8

    .line 177
    .line 178
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->O()Lmg;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-virtual {p0, v4}, Lmg;->m(Lzf;)V

    .line 183
    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_8
    sget p1, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->Q:I

    .line 187
    .line 188
    invoke-virtual {p0, v4}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->R(Lzf;)V

    .line 189
    .line 190
    .line 191
    :goto_4
    return-object v3

    .line 192
    nop

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
