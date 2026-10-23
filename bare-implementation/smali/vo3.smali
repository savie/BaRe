.class public final synthetic Lvo3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lil0;


# direct methods
.method public synthetic constructor <init>(Lil0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lvo3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lvo3;->b:Lil0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lvo3;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object p0, p0, Lvo3;->b:Lil0;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;

    .line 11
    .line 12
    check-cast p1, Lvq4;

    .line 13
    .line 14
    check-cast p2, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sget p2, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Z:I

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object p1, p1, Lvq4;->a:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    sget-object p2, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 30
    .line 31
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-nez p2, :cond_0

    .line 36
    .line 37
    sget-object p1, Lzn4;->a:Lzn4;

    .line 38
    .line 39
    new-instance p1, Lb56;

    .line 40
    .line 41
    const/4 p2, 0x0

    .line 42
    invoke-direct {p1, p0, p2}, Lb56;-><init>(Lk28;I)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lzn4;->e(Lbt3;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance p2, Landroid/content/Intent;

    .line 50
    .line 51
    const-class v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;

    .line 52
    .line 53
    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "label_edit"

    .line 57
    .line 58
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-object v1

    .line 65
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;

    .line 66
    .line 67
    check-cast p1, Ls54;

    .line 68
    .line 69
    check-cast p2, Ljava/lang/Integer;

    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    sget-object p2, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X:Landroid/view/animation/PathInterpolator;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->Z(Ls54;)V

    .line 80
    .line 81
    .line 82
    return-object v1

    .line 83
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 84
    .line 85
    check-cast p1, Lxk3;

    .line 86
    .line 87
    check-cast p2, Lvk3;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p1, ":"

    .line 104
    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    sget-object p2, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 116
    .line 117
    if-eqz p2, :cond_3

    .line 118
    .line 119
    const-string v0, "folders_list_sort_options"

    .line 120
    .line 121
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 126
    .line 127
    .line 128
    sget p1, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->U:I

    .line 129
    .line 130
    invoke-virtual {p0}, Landroidx/fragment/app/u;->getSupportFragmentManager()Lur3;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    iget-object p0, p0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 135
    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/e0;->f()Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    new-instance p1, Ljava/util/ArrayList;

    .line 144
    .line 145
    const/16 p2, 0xa

    .line 146
    .line 147
    invoke-static {p0, p2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    .line 153
    .line 154
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    if-eqz p2, :cond_1

    .line 163
    .line 164
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    check-cast p2, Landroidx/fragment/app/o;

    .line 169
    .line 170
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    check-cast p2, Lkp3;

    .line 174
    .line 175
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    if-eqz p1, :cond_2

    .line 188
    .line 189
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    check-cast p1, Lkp3;

    .line 194
    .line 195
    invoke-virtual {p1}, Lkp3;->m()Lnp3;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    sget-object p2, Lzn4;->a:Lzn4;

    .line 203
    .line 204
    new-instance p2, Lmo3;

    .line 205
    .line 206
    const/4 v0, 0x2

    .line 207
    invoke-direct {p2, p1, v0}, Lmo3;-><init>(Ljava/lang/Object;I)V

    .line 208
    .line 209
    .line 210
    invoke-static {p2}, Lzn4;->c(Lbt3;)V

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_2
    return-object v1

    .line 215
    :cond_3
    const-string p0, "editor"

    .line 216
    .line 217
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    const/4 p0, 0x0

    .line 221
    throw p0

    .line 222
    nop

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
