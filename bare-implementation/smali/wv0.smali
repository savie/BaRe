.class public final Lwv0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lwv0;->a:I

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lwv0;->d:Ljava/lang/Object;

    .line 196
    iput-object p2, p0, Lwv0;->e:Ljava/lang/Object;

    .line 197
    iput-object p3, p0, Lwv0;->f:Ljava/lang/Object;

    .line 198
    iput-object p4, p0, Lwv0;->b:Ljava/lang/Object;

    .line 199
    iput-object p5, p0, Lwv0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lwv0;->a:I

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lwv0;->d:Ljava/lang/Object;

    .line 190
    iput-object p2, p0, Lwv0;->b:Ljava/lang/Object;

    .line 191
    iput-object p3, p0, Lwv0;->e:Ljava/lang/Object;

    .line 192
    iput-object p4, p0, Lwv0;->f:Ljava/lang/Object;

    .line 193
    iput-object p5, p0, Lwv0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Constructor;Luw5;Lx44;)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lwv0;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lot9;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lzw5;

    .line 13
    .line 14
    invoke-direct {v1}, Lzw5;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, v0, Lot9;->a:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object p1, v0, Lot9;->b:Ljava/lang/Object;

    .line 20
    .line 21
    iput-object v0, p0, Lwv0;->d:Ljava/lang/Object;

    .line 22
    .line 23
    new-instance v0, Lvk9;

    .line 24
    .line 25
    invoke-direct {v0, p3}, Lvk9;-><init>(Lx44;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lwv0;->b:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    iput-object p3, p0, Lwv0;->c:Ljava/lang/Object;

    .line 35
    .line 36
    iput-object p1, p0, Lwv0;->f:Ljava/lang/Object;

    .line 37
    .line 38
    iput-object p2, p0, Lwv0;->e:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const/4 p3, 0x0

    .line 45
    move v0, p3

    .line 46
    :goto_0
    array-length v1, p2

    .line 47
    if-ge v0, v1, :cond_c

    .line 48
    .line 49
    aget-object v1, p2, v0

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    move v2, p3

    .line 56
    :goto_1
    aget-object v3, v1, v0

    .line 57
    .line 58
    array-length v4, v3

    .line 59
    if-ge v2, v4, :cond_b

    .line 60
    .line 61
    aget-object v3, v3, v2

    .line 62
    .line 63
    instance-of v4, v3, Lu70;

    .line 64
    .line 65
    if-eqz v4, :cond_0

    .line 66
    .line 67
    invoke-virtual {p0, v3, v0}, Lwv0;->a(Ljava/lang/annotation/Annotation;I)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    goto :goto_2

    .line 72
    :cond_0
    instance-of v4, v3, Lat2;

    .line 73
    .line 74
    if-eqz v4, :cond_1

    .line 75
    .line 76
    invoke-virtual {p0, v3, v0}, Lwv0;->a(Ljava/lang/annotation/Annotation;I)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    goto :goto_2

    .line 81
    :cond_1
    instance-of v4, v3, Lgt2;

    .line 82
    .line 83
    if-eqz v4, :cond_2

    .line 84
    .line 85
    invoke-virtual {p0, v3, v0}, Lwv0;->a(Ljava/lang/annotation/Annotation;I)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    goto :goto_2

    .line 90
    :cond_2
    instance-of v4, v3, Lct2;

    .line 91
    .line 92
    if-eqz v4, :cond_3

    .line 93
    .line 94
    invoke-virtual {p0, v3, v0}, Lwv0;->a(Ljava/lang/annotation/Annotation;I)Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    goto :goto_2

    .line 99
    :cond_3
    instance-of v4, v3, Lmt2;

    .line 100
    .line 101
    if-eqz v4, :cond_4

    .line 102
    .line 103
    invoke-virtual {p0, v3, v0}, Lwv0;->a(Ljava/lang/annotation/Annotation;I)Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    goto :goto_2

    .line 108
    :cond_4
    instance-of v4, v3, Ljt2;

    .line 109
    .line 110
    if-eqz v4, :cond_5

    .line 111
    .line 112
    invoke-virtual {p0, v3, v0}, Lwv0;->c(Ljava/lang/annotation/Annotation;I)Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    goto :goto_2

    .line 117
    :cond_5
    instance-of v4, v3, Lpt2;

    .line 118
    .line 119
    if-eqz v4, :cond_6

    .line 120
    .line 121
    invoke-virtual {p0, v3, v0}, Lwv0;->c(Ljava/lang/annotation/Annotation;I)Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    goto :goto_2

    .line 126
    :cond_6
    instance-of v4, v3, Lut2;

    .line 127
    .line 128
    if-eqz v4, :cond_7

    .line 129
    .line 130
    invoke-virtual {p0, v3, v0}, Lwv0;->c(Ljava/lang/annotation/Annotation;I)Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    goto :goto_2

    .line 135
    :cond_7
    instance-of v4, v3, Lq08;

    .line 136
    .line 137
    if-eqz v4, :cond_8

    .line 138
    .line 139
    invoke-virtual {p0, v3, v0}, Lwv0;->a(Ljava/lang/annotation/Annotation;I)Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    goto :goto_2

    .line 144
    :cond_8
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 145
    .line 146
    :goto_2
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    :cond_9
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    if-eqz v4, :cond_a

    .line 155
    .line 156
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    check-cast v4, Ltw5;

    .line 161
    .line 162
    iget-object v5, p0, Lwv0;->d:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v5, Lot9;

    .line 165
    .line 166
    iget-object v5, v5, Lot9;->a:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v5, Lzw5;

    .line 169
    .line 170
    invoke-virtual {v5, v0}, Lzw5;->c(I)Lvf7;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    if-eqz v5, :cond_9

    .line 175
    .line 176
    invoke-virtual {v5, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_b
    add-int/lit8 v0, v0, 0x1

    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :cond_c
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/annotation/Annotation;I)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lwv0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lvk9;

    .line 4
    .line 5
    iget-object v1, p0, Lwv0;->f:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, p1, v2, p2}, Lvk9;->o(Ljava/lang/reflect/Constructor;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;I)Ltw5;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lwv0;->b(Ltw5;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public b(Ltw5;)V
    .locals 4

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lhz0;

    .line 3
    .line 4
    iget-object v0, v0, Lhz0;->b:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v1, p0, Lwv0;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Luw5;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p1, v0}, Lwv0;->d(Ltw5;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v1, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, p1, v2}, Lwv0;->d(Ltw5;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {v1, v2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public c(Ljava/lang/annotation/Annotation;I)Ljava/util/List;
    .locals 9

    .line 1
    iget-object v0, p0, Lwv0;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Class;

    .line 4
    .line 5
    iget-object v1, p0, Lwv0;->f:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v2, Luw5;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    array-length v4, v3

    .line 26
    const/4 v5, 0x1

    .line 27
    if-ne v4, v5, :cond_2

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    aget-object v3, v3, v4

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, [Ljava/lang/annotation/Annotation;

    .line 38
    .line 39
    check-cast v3, [Ljava/lang/annotation/Annotation;

    .line 40
    .line 41
    array-length v6, v3

    .line 42
    :goto_0
    if-ge v4, v6, :cond_1

    .line 43
    .line 44
    aget-object v7, v3, v4

    .line 45
    .line 46
    iget-object v8, p0, Lwv0;->b:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v8, Lvk9;

    .line 49
    .line 50
    invoke-virtual {v8, v1, p1, v7, p2}, Lvk9;->o(Ljava/lang/reflect/Constructor;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;I)Ltw5;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    move-object v8, v7

    .line 55
    check-cast v8, Lhz0;

    .line 56
    .line 57
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v5}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    if-nez v8, :cond_0

    .line 65
    .line 66
    invoke-virtual {v2, v5, v7}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v7}, Lwv0;->b(Ltw5;)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v4, v4, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    new-instance p0, Lwt1;

    .line 76
    .line 77
    const-string p2, "Annotation name \'%s\' used more than once in %s for %s"

    .line 78
    .line 79
    filled-new-array {v5, p1, v0}, [Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p0, p2, p1}, Lwt1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :cond_1
    invoke-virtual {v2}, Luw5;->d()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0

    .line 92
    :cond_2
    new-instance p0, Lwt1;

    .line 93
    .line 94
    const-string p2, "Annotation \'%s\' is not a valid union for %s"

    .line 95
    .line 96
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-direct {p0, p2, p1}, Lwt1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    throw p0
.end method

.method public d(Ltw5;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lwv0;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Luw5;

    .line 4
    .line 5
    invoke-virtual {p0, p2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ltw5;

    .line 10
    .line 11
    check-cast p0, Lhz0;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget v0, p0, Lwv0;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lwv0;->d:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroid/widget/LinearLayout;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    .line 13
    return-object p0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
