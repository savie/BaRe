.class public final Lkm5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ldc5;
.implements Lri0;
.implements Lsl0;
.implements Laj8;
.implements Lh9;
.implements Ldh5;
.implements Ljk8;
.implements Lav7;
.implements Lhu5;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(BI)V
    .locals 0

    .line 1
    iput p2, p0, Lkm5;->a:I

    .line 2
    .line 3
    sparse-switch p2, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lkm5;->b:Ljava/lang/Object;

    .line 15
    .line 16
    return-void

    .line 17
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x4

    .line 21
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lkm5;->b:Ljava/lang/Object;

    .line 26
    .line 27
    return-void

    .line 28
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance p1, Lvk9;

    .line 36
    .line 37
    const/16 p2, 0xc

    .line 38
    .line 39
    invoke-direct {p1, p2}, Lvk9;-><init>(I)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lkm5;->b:Ljava/lang/Object;

    .line 43
    .line 44
    return-void

    .line 45
    :sswitch_3
    const-string p1, "name"

    .line 46
    .line 47
    filled-new-array {p1}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lkm5;->b:Ljava/lang/Object;

    .line 55
    .line 56
    return-void

    .line 57
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_3
        0xc -> :sswitch_2
        0x12 -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(I)V
    .locals 4

    const/4 v0, 0x5

    iput v0, p0, Lkm5;->a:I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    const-wide/16 v0, 0x1

    shl-long v2, v0, p1

    sub-long/2addr v2, v0

    long-to-int p1, v2

    .line 67
    new-array p1, p1, [I

    const/4 v0, -0x1

    .line 68
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 69
    iput-object p1, p0, Lkm5;->b:Ljava/lang/Object;

    return-void

    .line 70
    :cond_0
    const-string p0, "depth must be bigger than 0 and not bigger than 30 but is "

    .line 71
    invoke-static {p1, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 72
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lkm5;->a:I

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lro;

    invoke-direct {v0, p1}, Lro;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Lkm5;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Laz3;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lkm5;->a:I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lkm5;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    const/16 p2, 0xd

    iput p2, p0, Lkm5;->a:I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lkm5;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 61
    iput p2, p0, Lkm5;->a:I

    iput-object p1, p0, Lkm5;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Matcher;)V
    .locals 1

    const/16 v0, 0x14

    iput v0, p0, Lkm5;->a:I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    iput-object p1, p0, Lkm5;->b:Ljava/lang/Object;

    return-void
.end method

.method public static k(Lwu0;I)Lkm5;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p1, :cond_d

    .line 3
    .line 4
    invoke-virtual {p0}, Lwu0;->read()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x1

    .line 9
    add-int/2addr v1, v2

    .line 10
    if-eqz v1, :cond_c

    .line 11
    .line 12
    invoke-static {p0, v1}, Ly13;->x(Ljava/io/InputStream;I)[B

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    array-length v3, p0

    .line 17
    if-ne v3, v1, :cond_b

    .line 18
    .line 19
    new-array v1, p1, [I

    .line 20
    .line 21
    array-length v3, p0

    .line 22
    const/4 v4, 0x0

    .line 23
    move v5, v4

    .line 24
    move v6, v5

    .line 25
    move v7, v6

    .line 26
    :goto_0
    if-ge v5, v3, :cond_2

    .line 27
    .line 28
    aget-byte v8, p0, v5

    .line 29
    .line 30
    and-int/lit16 v9, v8, 0xf0

    .line 31
    .line 32
    shr-int/lit8 v9, v9, 0x4

    .line 33
    .line 34
    add-int/2addr v9, v2

    .line 35
    add-int v10, v6, v9

    .line 36
    .line 37
    if-gt v10, p1, :cond_1

    .line 38
    .line 39
    and-int/lit8 v8, v8, 0xf

    .line 40
    .line 41
    add-int/2addr v8, v2

    .line 42
    move v10, v4

    .line 43
    :goto_1
    if-ge v10, v9, :cond_0

    .line 44
    .line 45
    add-int/lit8 v11, v6, 0x1

    .line 46
    .line 47
    aput v8, v1, v6

    .line 48
    .line 49
    add-int/lit8 v10, v10, 0x1

    .line 50
    .line 51
    move v6, v11

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    add-int/lit8 v5, v5, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const-string p0, "Number of values exceeds given total number of values"

    .line 61
    .line 62
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_2
    new-array p0, p1, [I

    .line 67
    .line 68
    move v0, v4

    .line 69
    :goto_2
    if-ge v0, p1, :cond_3

    .line 70
    .line 71
    aput v0, p0, v0

    .line 72
    .line 73
    add-int/lit8 v0, v0, 0x1

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    new-array v0, p1, [I

    .line 77
    .line 78
    move v3, v4

    .line 79
    move v5, v3

    .line 80
    :goto_3
    if-ge v3, p1, :cond_6

    .line 81
    .line 82
    move v6, v4

    .line 83
    :goto_4
    if-ge v6, p1, :cond_5

    .line 84
    .line 85
    aget v8, v1, v6

    .line 86
    .line 87
    if-ne v8, v3, :cond_4

    .line 88
    .line 89
    aput v3, v0, v5

    .line 90
    .line 91
    aput v6, p0, v5

    .line 92
    .line 93
    add-int/lit8 v5, v5, 0x1

    .line 94
    .line 95
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_6
    new-array v3, p1, [I

    .line 102
    .line 103
    add-int/lit8 v5, p1, -0x1

    .line 104
    .line 105
    move v6, v4

    .line 106
    move v8, v6

    .line 107
    move v9, v8

    .line 108
    :goto_5
    if-ltz v5, :cond_8

    .line 109
    .line 110
    add-int/2addr v6, v8

    .line 111
    aget v10, v0, v5

    .line 112
    .line 113
    if-eq v10, v9, :cond_7

    .line 114
    .line 115
    rsub-int/lit8 v8, v10, 0x10

    .line 116
    .line 117
    shl-int v8, v2, v8

    .line 118
    .line 119
    move v9, v10

    .line 120
    :cond_7
    aget v10, p0, v5

    .line 121
    .line 122
    aput v6, v3, v10

    .line 123
    .line 124
    add-int/lit8 v5, v5, -0x1

    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_8
    new-instance p0, Lkm5;

    .line 128
    .line 129
    invoke-direct {p0, v7}, Lkm5;-><init>(I)V

    .line 130
    .line 131
    .line 132
    move v0, v4

    .line 133
    :goto_6
    if-ge v0, p1, :cond_a

    .line 134
    .line 135
    aget v2, v1, v0

    .line 136
    .line 137
    if-lez v2, :cond_9

    .line 138
    .line 139
    aget v5, v3, v0

    .line 140
    .line 141
    shl-int/lit8 v5, v5, 0x10

    .line 142
    .line 143
    invoke-static {v5}, Ljava/lang/Integer;->reverse(I)I

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    invoke-virtual {p0, v4, v5, v2, v0}, Lkm5;->j(IIII)V

    .line 148
    .line 149
    .line 150
    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 151
    .line 152
    goto :goto_6

    .line 153
    :cond_a
    return-object p0

    .line 154
    :cond_b
    invoke-static {}, Ld6;->d()V

    .line 155
    .line 156
    .line 157
    return-object v0

    .line 158
    :cond_c
    const-string p0, "Cannot read the size of the encoded tree, unexpected end of stream"

    .line 159
    .line 160
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    return-object v0

    .line 164
    :cond_d
    const-string p0, "totalNumberOfValues must be bigger than 0, is "

    .line 165
    .line 166
    invoke-static {p1, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    return-object v0
.end method

.method public static l(Ljava/lang/String;Lm73;Z)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "lottie_cache_"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "\\W+"

    .line 9
    .line 10
    const-string v2, ""

    .line 11
    .line 12
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object p0, p1, Lm73;->a:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    const-string p1, ".temp"

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method


# virtual methods
.method public a(Lty7;)V
    .locals 8

    .line 1
    iget-object p0, p0, Lkm5;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 4
    .line 5
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->m0:Ll20;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_d

    .line 9
    .line 10
    invoke-virtual {v0}, Lgm7;->l()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    const/16 v3, 0xa

    .line 17
    .line 18
    invoke-static {v0, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lji;

    .line 40
    .line 41
    new-instance v5, Liz;

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-direct {v5, v4}, Lkz;-><init>(Lji;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    sget-object v3, Lsy7;->f:Lsy7;

    .line 54
    .line 55
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    const/4 v4, 0x1

    .line 60
    const/4 v5, 0x0

    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    goto/16 :goto_3

    .line 64
    .line 65
    :cond_1
    instance-of v3, p1, Loy7;

    .line 66
    .line 67
    if-eqz v3, :cond_8

    .line 68
    .line 69
    move-object v3, p1

    .line 70
    check-cast v3, Loy7;

    .line 71
    .line 72
    iget-object v6, v3, Loy7;->g:Ljava/util/List;

    .line 73
    .line 74
    invoke-static {v6}, Lji8;->r(Ljava/util/Collection;)Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-eqz v6, :cond_a

    .line 79
    .line 80
    iget-object v3, v3, Loy7;->h:Lny7;

    .line 81
    .line 82
    instance-of v6, v3, Lly7;

    .line 83
    .line 84
    if-eqz v6, :cond_5

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-eqz v6, :cond_2

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-eqz v6, :cond_a

    .line 102
    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    check-cast v6, Lji;

    .line 108
    .line 109
    invoke-virtual {v6}, Lji;->getCloudBackups()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    if-eqz v6, :cond_4

    .line 114
    .line 115
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->getBackups()Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    goto :goto_2

    .line 120
    :cond_4
    move-object v6, v1

    .line 121
    :goto_2
    move-object v7, v3

    .line 122
    check-cast v7, Lly7;

    .line 123
    .line 124
    invoke-static {v6, v7}, Lik;->b(Ljava/util/List;Lly7;)Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    if-eqz v6, :cond_3

    .line 129
    .line 130
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-eqz v6, :cond_6

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_5
    instance-of v0, v3, Lmy7;

    .line 138
    .line 139
    if-eqz v0, :cond_7

    .line 140
    .line 141
    check-cast v3, Lmy7;

    .line 142
    .line 143
    iget-object v0, v3, Lmy7;->b:Ljava/util/List;

    .line 144
    .line 145
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-nez v0, :cond_a

    .line 150
    .line 151
    :cond_6
    move v5, v4

    .line 152
    goto :goto_3

    .line 153
    :cond_7
    invoke-static {}, Lq;->j()V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_8
    sget-object v0, Lqy7;->f:Lqy7;

    .line 158
    .line 159
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_9

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_9
    instance-of v0, p1, Lpy7;

    .line 167
    .line 168
    if-eqz v0, :cond_c

    .line 169
    .line 170
    :cond_a
    :goto_3
    new-instance v0, Lmh;

    .line 171
    .line 172
    invoke-direct {v0, v4, p0, v2, p1}, Lmh;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    if-eqz v5, :cond_b

    .line 176
    .line 177
    invoke-static {p0, v1, v0, v4}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :cond_b
    invoke-virtual {v0}, Lmh;->invoke()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :cond_c
    new-instance v0, Lio5;

    .line 186
    .line 187
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string p0, ": Unhandled taskParams="

    .line 200
    .line 201
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string p0, " in onTaskParams()"

    .line 208
    .line 209
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw v0

    .line 220
    :cond_d
    const-string p0, "mAdapter"

    .line 221
    .line 222
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw v1
.end method

.method public b([BLjava/lang/Object;Ljava/security/MessageDigest;)V
    .locals 2

    .line 1
    check-cast p2, Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p3, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lkm5;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    monitor-enter p1

    .line 14
    :try_start_0
    iget-object v0, p0, Lkm5;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lkm5;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p3, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 39
    .line 40
    .line 41
    monitor-exit p1

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public c(Lqc6;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lkm5;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lwj6;

    .line 4
    .line 5
    iget-object p0, p0, Lwj6;->c:Lwz5;

    .line 6
    .line 7
    iget-object v0, p1, Lqc6;->a:Lgy5;

    .line 8
    .line 9
    invoke-virtual {v0}, Lgy5;->c()Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object p1, p1, Lqc6;->b:Loc6;

    .line 14
    .line 15
    invoke-virtual {p1}, Loc6;->a()Ljava/util/HashMap;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance v1, Lvz5;

    .line 23
    .line 24
    invoke-direct {v1, v0, p1}, Lvz5;-><init>(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lwz5;->y:Lu00;

    .line 28
    .line 29
    invoke-virtual {p1}, Lu00;->e()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v4, "unlistening on "

    .line 40
    .line 41
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-array v4, v3, [Ljava/lang/Object;

    .line 52
    .line 53
    invoke-virtual {p1, v0, v2, v4}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-virtual {p0, v1}, Lwz5;->f(Lvz5;)Ltz5;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    iget-object v0, p1, Ltz5;->b:Lvz5;

    .line 63
    .line 64
    invoke-virtual {p0}, Lwz5;->a()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    new-instance v1, Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 73
    .line 74
    .line 75
    iget-object v4, v0, Lvz5;->a:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-static {v4}, Lyc9;->M(Ljava/util/List;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    const-string v5, "p"

    .line 82
    .line 83
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    iget-object p1, p1, Ltz5;->d:Ljava/lang/Long;

    .line 87
    .line 88
    if-eqz p1, :cond_1

    .line 89
    .line 90
    const-string v4, "q"

    .line 91
    .line 92
    iget-object v0, v0, Lvz5;->b:Ljava/util/HashMap;

    .line 93
    .line 94
    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    const-string v0, "t"

    .line 98
    .line 99
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    :cond_1
    const-string p1, "n"

    .line 103
    .line 104
    invoke-virtual {p0, p1, v3, v1, v2}, Lwz5;->n(Ljava/lang/String;ZLjava/util/Map;Lqz5;)V

    .line 105
    .line 106
    .line 107
    :cond_2
    invoke-virtual {p0}, Lwz5;->b()V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public d(Ljava/util/List;Ljava/util/List;ZZLcd;)V
    .locals 14

    .line 1
    iget-object p0, p0, Lkm5;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 4
    .line 5
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->m0:Ll20;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_10

    .line 9
    .line 10
    invoke-virtual {v0}, Lgm7;->l()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    new-instance v2, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    move-object v4, v3

    .line 40
    check-cast v4, Lji;

    .line 41
    .line 42
    invoke-virtual {v4}, Lji;->isBundled()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_0

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move-object v0, v2

    .line 53
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    .line 54
    .line 55
    const/16 v3, 0xa

    .line 56
    .line 57
    invoke-static {v0, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    const/4 v4, 0x1

    .line 73
    if-eqz v3, :cond_e

    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    move-object v6, v3

    .line 80
    check-cast v6, Lji;

    .line 81
    .line 82
    const/4 v3, 0x0

    .line 83
    const-string v5, "restore_ssaids"

    .line 84
    .line 85
    const-string v7, "restore_special_permissions"

    .line 86
    .line 87
    const-string v8, "prefs"

    .line 88
    .line 89
    if-eqz p3, :cond_8

    .line 90
    .line 91
    invoke-virtual {v6}, Lji;->getCloudBackups()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    if-eqz v9, :cond_3

    .line 96
    .line 97
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->getBackups()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    if-eqz v9, :cond_3

    .line 102
    .line 103
    invoke-static {v9}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    check-cast v9, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 108
    .line 109
    move-object v12, v9

    .line 110
    goto :goto_2

    .line 111
    :cond_3
    move-object v12, v1

    .line 112
    :goto_2
    if-eqz v12, :cond_7

    .line 113
    .line 114
    new-instance v9, Ljz;

    .line 115
    .line 116
    invoke-virtual {v6}, Lji;->isBundled()Z

    .line 117
    .line 118
    .line 119
    move-result v10

    .line 120
    if-eqz v10, :cond_4

    .line 121
    .line 122
    move-object/from16 v10, p2

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_4
    move-object v10, p1

    .line 126
    :goto_3
    sget-object v11, Lyu;->Companion:Lwu;

    .line 127
    .line 128
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    move-object v11, v8

    .line 132
    invoke-static {}, Lwu;->a()Lyu;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    :try_start_0
    sget-object v13, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 137
    .line 138
    if-eqz v13, :cond_5

    .line 139
    .line 140
    invoke-interface {v13, v7, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    goto :goto_4

    .line 145
    :cond_5
    invoke-static {v11}, Lpe4;->F(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :catch_0
    move v7, v4

    .line 150
    :goto_4
    :try_start_1
    sget-object v13, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 151
    .line 152
    if-eqz v13, :cond_6

    .line 153
    .line 154
    invoke-interface {v13, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    goto :goto_5

    .line 159
    :cond_6
    invoke-static {v11}, Lpe4;->F(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw v1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    :catch_1
    :goto_5
    new-instance v11, Lhk;

    .line 164
    .line 165
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getBackupId()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-virtual {v6}, Lji;->getPackageName()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v13

    .line 173
    invoke-direct {v11, v5, v13, v4}, Lhk;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 174
    .line 175
    .line 176
    move-object v5, v9

    .line 177
    move v9, v7

    .line 178
    move-object v7, v10

    .line 179
    move v10, v3

    .line 180
    invoke-direct/range {v5 .. v12}, Ljz;-><init>(Lji;Ljava/util/List;Lyu;ZZLhk;Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;)V

    .line 181
    .line 182
    .line 183
    :goto_6
    move-object v9, v5

    .line 184
    goto/16 :goto_b

    .line 185
    .line 186
    :cond_7
    invoke-virtual {v6}, Lji;->asString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    const-string v0, "isCloudRestore is true but we don\'t have any cloud backups for app: "

    .line 191
    .line 192
    invoke-static {v0, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :cond_8
    move-object v11, v8

    .line 201
    invoke-virtual {v6}, Lji;->getLocalBackups()Ljava/util/List;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    if-eqz v8, :cond_9

    .line 206
    .line 207
    invoke-static {v8}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    check-cast v8, Lgm;

    .line 212
    .line 213
    if-eqz v8, :cond_9

    .line 214
    .line 215
    iget-object v8, v8, Lgm;->a:Lhk;

    .line 216
    .line 217
    goto :goto_7

    .line 218
    :cond_9
    move-object v8, v1

    .line 219
    :goto_7
    if-eqz v8, :cond_d

    .line 220
    .line 221
    new-instance v9, Ljz;

    .line 222
    .line 223
    invoke-virtual {v6}, Lji;->isBundled()Z

    .line 224
    .line 225
    .line 226
    move-result v10

    .line 227
    if-eqz v10, :cond_a

    .line 228
    .line 229
    move-object/from16 v10, p2

    .line 230
    .line 231
    goto :goto_8

    .line 232
    :cond_a
    move-object v10, p1

    .line 233
    :goto_8
    sget-object v12, Lyu;->Companion:Lwu;

    .line 234
    .line 235
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    move-object v12, v11

    .line 239
    move-object v11, v8

    .line 240
    invoke-static {}, Lwu;->a()Lyu;

    .line 241
    .line 242
    .line 243
    move-result-object v8

    .line 244
    :try_start_2
    sget-object v13, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 245
    .line 246
    if-eqz v13, :cond_b

    .line 247
    .line 248
    invoke-interface {v13, v7, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 249
    .line 250
    .line 251
    move-result v4

    .line 252
    goto :goto_9

    .line 253
    :cond_b
    invoke-static {v12}, Lpe4;->F(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw v1
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .line 257
    :catch_2
    :goto_9
    :try_start_3
    sget-object v7, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 258
    .line 259
    if-eqz v7, :cond_c

    .line 260
    .line 261
    invoke-interface {v7, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    goto :goto_a

    .line 266
    :cond_c
    invoke-static {v12}, Lpe4;->F(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw v1
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    .line 270
    :catch_3
    :goto_a
    const/4 v12, 0x0

    .line 271
    move-object v5, v9

    .line 272
    move-object v7, v10

    .line 273
    move v10, v3

    .line 274
    move v9, v4

    .line 275
    invoke-direct/range {v5 .. v12}, Ljz;-><init>(Lji;Ljava/util/List;Lyu;ZZLhk;Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;)V

    .line 276
    .line 277
    .line 278
    goto :goto_6

    .line 279
    :goto_b
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    goto/16 :goto_1

    .line 283
    .line 284
    :cond_d
    invoke-virtual {v6}, Lji;->asString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p0

    .line 288
    const-string v0, "No local backup for app: "

    .line 289
    .line 290
    invoke-static {v0, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    return-void

    .line 298
    :cond_e
    new-instance v0, Lry7;

    .line 299
    .line 300
    move/from16 v3, p4

    .line 301
    .line 302
    invoke-direct {v0, v3}, Lry7;-><init>(Z)V

    .line 303
    .line 304
    .line 305
    new-instance v3, Loj;

    .line 306
    .line 307
    invoke-direct {v3, v4, p0, v2, v0}, Loj;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    if-eqz p3, :cond_f

    .line 311
    .line 312
    invoke-static {p0, v1, v3, v4}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 313
    .line 314
    .line 315
    return-void

    .line 316
    :cond_f
    invoke-virtual {v3}, Loj;->invoke()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    return-void

    .line 320
    :cond_10
    const-string p0, "mAdapter"

    .line 321
    .line 322
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    throw v1
.end method

.method public e(Lfc5;Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lkm5;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/appcompat/widget/ActionMenuView;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->S:Lr8;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    if-eqz p0, :cond_3

    .line 9
    .line 10
    check-cast p0, Ls79;

    .line 11
    .line 12
    iget-object p0, p0, Ls79;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b0:Lka;

    .line 17
    .line 18
    iget-object v0, v0, Lka;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lxc5;

    .line 38
    .line 39
    invoke-interface {v1, p2}, Lxc5;->a(Landroid/view/MenuItem;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    move p0, v2

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->d0:Lm88;

    .line 48
    .line 49
    if-eqz p0, :cond_2

    .line 50
    .line 51
    check-cast p0, Lvk9;

    .line 52
    .line 53
    iget-object p0, p0, Lvk9;->b:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p0, Lo88;

    .line 56
    .line 57
    iget-object p0, p0, Lo88;->f:Landroid/view/Window$Callback;

    .line 58
    .line 59
    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move p0, p1

    .line 65
    :goto_0
    if-eqz p0, :cond_3

    .line 66
    .line 67
    return v2

    .line 68
    :cond_3
    return p1
.end method

.method public f(Lqc6;Lhx7;Lgd;Lgd;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lkm5;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lwj6;

    .line 4
    .line 5
    iget-object v0, v0, Lwj6;->c:Lwz5;

    .line 6
    .line 7
    iget-object v1, p1, Lqc6;->a:Lgy5;

    .line 8
    .line 9
    invoke-virtual {v1}, Lgy5;->c()Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object p1, p1, Lqc6;->b:Loc6;

    .line 14
    .line 15
    invoke-virtual {p1}, Loc6;->a()Ljava/util/HashMap;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    iget-wide v3, p2, Lhx7;->a:J

    .line 23
    .line 24
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object p2, v2

    .line 30
    :goto_0
    new-instance v3, Lro;

    .line 31
    .line 32
    const/16 v4, 0xc

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    invoke-direct {v3, p0, p4, v4, v5}, Lro;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 36
    .line 37
    .line 38
    iget-object p0, v0, Lwz5;->p:Ljava/util/HashMap;

    .line 39
    .line 40
    new-instance p4, Lvz5;

    .line 41
    .line 42
    invoke-direct {p4, v1, p1}, Lvz5;-><init>(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, v0, Lwz5;->y:Lu00;

    .line 46
    .line 47
    invoke-virtual {p1}, Lu00;->e()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v4, "Listening on "

    .line 56
    .line 57
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    new-array v4, v5, [Ljava/lang/Object;

    .line 68
    .line 69
    invoke-virtual {p1, v1, v2, v4}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-virtual {p0, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    xor-int/lit8 v1, v1, 0x1

    .line 77
    .line 78
    const-string v4, "listen() called twice for same QuerySpec."

    .line 79
    .line 80
    new-array v6, v5, [Ljava/lang/Object;

    .line 81
    .line 82
    invoke-static {v1, v4, v6}, Lyc9;->D(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lu00;->e()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v4, "Adding listen query: "

    .line 94
    .line 95
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    new-array v4, v5, [Ljava/lang/Object;

    .line 106
    .line 107
    invoke-virtual {p1, v1, v2, v4}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :cond_2
    new-instance p1, Ltz5;

    .line 111
    .line 112
    invoke-direct {p1, v3, p4, p2, p3}, Ltz5;-><init>(Lro;Lvz5;Ljava/lang/Long;Lgd;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Lwz5;->a()Z

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    if-eqz p0, :cond_3

    .line 123
    .line 124
    invoke-virtual {v0, p1}, Lwz5;->l(Ltz5;)V

    .line 125
    .line 126
    .line 127
    :cond_3
    invoke-virtual {v0}, Lwz5;->b()V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public g(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V
    .locals 14

    .line 1
    iget-object p0, p0, Lkm5;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 4
    .line 5
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->m0:Ll20;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_7

    .line 9
    .line 10
    invoke-virtual {v0}, Lgm7;->l()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    new-instance v2, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    move-object v4, v3

    .line 40
    check-cast v4, Lji;

    .line 41
    .line 42
    invoke-virtual {v4}, Lji;->isBundled()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_0

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move-object v0, v2

    .line 53
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    .line 54
    .line 55
    const/16 v3, 0xa

    .line 56
    .line 57
    invoke-static {v0, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_5

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    move-object v5, v3

    .line 79
    check-cast v5, Lji;

    .line 80
    .line 81
    if-eqz p4, :cond_3

    .line 82
    .line 83
    invoke-virtual {v5}, Lji;->getLocalBackups()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    if-eqz v3, :cond_3

    .line 88
    .line 89
    invoke-static {v3}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Lgm;

    .line 94
    .line 95
    if-eqz v3, :cond_3

    .line 96
    .line 97
    iget-object v3, v3, Lgm;->a:Lhk;

    .line 98
    .line 99
    move-object v8, v3

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    move-object v8, v1

    .line 102
    :goto_2
    new-instance v4, Lhz;

    .line 103
    .line 104
    invoke-virtual {v5}, Lji;->isBundled()Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_4

    .line 109
    .line 110
    move-object/from16 v6, p2

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_4
    move-object v6, p1

    .line 114
    :goto_3
    invoke-static {}, Lz85;->w()Z

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    invoke-static {}, Lz85;->r()Lxp1;

    .line 119
    .line 120
    .line 121
    move-result-object v11

    .line 122
    sget-object v3, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->Companion:Lorg/swiftapps/swiftbackup/settings/b;

    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/b;->c()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 128
    .line 129
    .line 130
    move-result-object v12

    .line 131
    invoke-static {}, Lok;->d()Ljava/util/ArrayList;

    .line 132
    .line 133
    .line 134
    move-result-object v13

    .line 135
    const/4 v9, 0x0

    .line 136
    move-object/from16 v7, p3

    .line 137
    .line 138
    invoke-direct/range {v4 .. v13}, Lhz;-><init>(Lji;Ljava/util/List;Ljava/util/List;Lhk;Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;ZLxp1;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/util/List;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_5
    new-instance v0, Lky7;

    .line 146
    .line 147
    const/4 v3, 0x2

    .line 148
    const/4 v4, 0x0

    .line 149
    invoke-direct {v0, v3, v4}, Lty7;-><init>(II)V

    .line 150
    .line 151
    .line 152
    new-instance v3, Ly10;

    .line 153
    .line 154
    invoke-direct {v3, v4, p0, v2, v0}, Ly10;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    sget-object v0, Lq05;->CLOUD:Lq05;

    .line 158
    .line 159
    move-object/from16 v7, p3

    .line 160
    .line 161
    invoke-interface {v7, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_6

    .line 166
    .line 167
    const/4 v0, 0x1

    .line 168
    invoke-static {p0, v1, v3, v0}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :cond_6
    invoke-virtual {v3}, Ly10;->invoke()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_7
    const-string p0, "mAdapter"

    .line 177
    .line 178
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw v1
.end method

.method public getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lkm5;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/card/MaterialCardView;

    .line 4
    .line 5
    return-object p0
.end method

.method public h(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Ljava/util/Map;

    .line 2
    .line 3
    iget-object v0, p0, Lkm5;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroidx/fragment/app/z;

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    new-array v3, v2, [Ljava/lang/String;

    .line 13
    .line 14
    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, [Ljava/lang/String;

    .line 19
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    new-array p1, p1, [I

    .line 34
    .line 35
    move v3, v2

    .line 36
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-ge v3, v4, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    move v4, v2

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    const/4 v4, -0x1

    .line 57
    :goto_1
    aput v4, p1, v3

    .line 58
    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object p1, v0, Landroidx/fragment/app/z;->F:Ljava/util/ArrayDeque;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lrr3;

    .line 69
    .line 70
    const-string v1, "FragmentManager"

    .line 71
    .line 72
    if-nez p1, :cond_2

    .line 73
    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v0, "No permissions were requested for "

    .line 77
    .line 78
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_2
    iget-object p0, p1, Lrr3;->a:Ljava/lang/String;

    .line 93
    .line 94
    iget-object p1, v0, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 95
    .line 96
    invoke-virtual {p1, p0}, Landroidx/fragment/app/e0;->c(Ljava/lang/String;)Landroidx/fragment/app/o;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-nez p1, :cond_3

    .line 101
    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v0, "Permission request result delivered for unknown Fragment "

    .line 105
    .line 106
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    :cond_3
    return-void
.end method

.method public i(Lhs1;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lhs1;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lkm5;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Laz3;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Laz3;->w:Ljava/util/Set;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0, p1}, Laz3;->k(Ln74;Ljava/util/Set;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object p0, p0, Laz3;->o:Ljq6;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Ljq6;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Loz3;

    .line 25
    .line 26
    invoke-interface {p0, p1}, Loz3;->a(Lhs1;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public j(IIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lkm5;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    if-nez p3, :cond_1

    .line 6
    .line 7
    aget p0, v0, p1

    .line 8
    .line 9
    const/4 p2, -0x1

    .line 10
    if-ne p0, p2, :cond_0

    .line 11
    .line 12
    aput p4, v0, p1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string p0, "Tree value at index "

    .line 16
    .line 17
    const-string p2, " has already been assigned ("

    .line 18
    .line 19
    invoke-static {p1, p0, p2}, Ldj7;->r(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    aget p1, v0, p1

    .line 24
    .line 25
    const-string p2, ")"

    .line 26
    .line 27
    invoke-static {p0, p1, p2}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    const/4 v1, -0x2

    .line 36
    aput v1, v0, p1

    .line 37
    .line 38
    mul-int/lit8 p1, p1, 0x2

    .line 39
    .line 40
    add-int/lit8 p1, p1, 0x1

    .line 41
    .line 42
    and-int/lit8 v0, p2, 0x1

    .line 43
    .line 44
    add-int/2addr p1, v0

    .line 45
    ushr-int/lit8 p2, p2, 0x1

    .line 46
    .line 47
    add-int/lit8 p3, p3, -0x1

    .line 48
    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Lkm5;->j(IIII)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public m(Lfc5;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lkm5;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/appcompat/widget/ActionMenuView;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->N:Ldc5;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-interface {p0, p1}, Ldc5;->m(Lfc5;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public n(Ljava/lang/Class;)Lpd5;
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Lpd5;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, v1, Lpd5;->a:Ljava/util/ArrayList;

    .line 14
    .line 15
    const-class v2, Lty4;

    .line 16
    .line 17
    invoke-static {v0, v2}, Lvm4;->m(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lty4;

    .line 22
    .line 23
    iput-object v2, v1, Lpd5;->b:Lty4;

    .line 24
    .line 25
    new-instance v2, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v2}, Lvm4;->o(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    new-array v4, v3, [Ljava/lang/reflect/Method;

    .line 38
    .line 39
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    move v5, v2

    .line 44
    :goto_0
    if-ge v5, v3, :cond_16

    .line 45
    .line 46
    aget-object v6, v4, v5

    .line 47
    .line 48
    move v7, v2

    .line 49
    :goto_1
    if-ge v7, v3, :cond_4

    .line 50
    .line 51
    aget-object v8, v4, v7

    .line 52
    .line 53
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    if-nez v9, :cond_3

    .line 66
    .line 67
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    if-eqz v9, :cond_3

    .line 80
    .line 81
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    if-nez v9, :cond_0

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_0
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    move v10, v2

    .line 105
    :goto_2
    array-length v11, v8

    .line 106
    if-ge v10, v11, :cond_2

    .line 107
    .line 108
    aget-object v11, v9, v10

    .line 109
    .line 110
    aget-object v12, v8, v10

    .line 111
    .line 112
    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v11

    .line 116
    if-nez v11, :cond_1

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_2
    :goto_3
    move-object/from16 v10, p0

    .line 123
    .line 124
    goto/16 :goto_12

    .line 125
    .line 126
    :cond_3
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_4
    const-class v7, Lo24;

    .line 130
    .line 131
    invoke-static {v6, v7}, Lvm4;->m(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    check-cast v8, Lo24;

    .line 136
    .line 137
    invoke-interface {v8}, Lo24;->enabled()Z

    .line 138
    .line 139
    .line 140
    move-result v9

    .line 141
    if-eqz v9, :cond_2

    .line 142
    .line 143
    if-eqz v6, :cond_2

    .line 144
    .line 145
    invoke-static {v6, v7}, Lvm4;->m(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    if-nez v7, :cond_5

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_5
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    array-length v7, v7

    .line 157
    const/4 v9, 0x1

    .line 158
    if-eq v7, v9, :cond_6

    .line 159
    .line 160
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 161
    .line 162
    new-instance v8, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v9, "Found no or more than one parameter in messageHandler ["

    .line 165
    .line 166
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v6, "]. A messageHandler must define exactly one parameter"

    .line 177
    .line 178
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_6
    const-class v7, Ltx2;

    .line 190
    .line 191
    invoke-static {v6, v7}, Lvm4;->m(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 192
    .line 193
    .line 194
    move-result-object v10

    .line 195
    check-cast v10, Ltx2;

    .line 196
    .line 197
    if-eqz v10, :cond_7

    .line 198
    .line 199
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    move-result-object v11

    .line 203
    aget-object v11, v11, v2

    .line 204
    .line 205
    const-class v12, Lmd5;

    .line 206
    .line 207
    invoke-virtual {v12, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 208
    .line 209
    .line 210
    move-result v11

    .line 211
    if-nez v11, :cond_7

    .line 212
    .line 213
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 214
    .line 215
    const-string v7, "Message envelope configured but no subclass of MessageEnvelope found as parameter"

    .line 216
    .line 217
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_7
    if-eqz v10, :cond_8

    .line 222
    .line 223
    invoke-interface {v10}, Ltx2;->messages()[Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    move-result-object v10

    .line 227
    array-length v10, v10

    .line 228
    if-nez v10, :cond_8

    .line 229
    .line 230
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 231
    .line 232
    const-string v7, "Message envelope configured but message types defined for handler"

    .line 233
    .line 234
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_8
    move-object v10, v0

    .line 239
    :goto_5
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    move-result-object v11

    .line 243
    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v11

    .line 247
    if-nez v11, :cond_9

    .line 248
    .line 249
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v11

    .line 253
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    move-result-object v13

    .line 257
    invoke-virtual {v10, v11, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 258
    .line 259
    .line 260
    move-result-object v10
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    goto :goto_6

    .line 262
    :catch_0
    invoke-virtual {v10}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    move-result-object v10

    .line 266
    goto :goto_5

    .line 267
    :cond_9
    const/4 v10, 0x0

    .line 268
    :goto_6
    if-nez v10, :cond_a

    .line 269
    .line 270
    :goto_7
    move-object/from16 v10, p0

    .line 271
    .line 272
    goto :goto_8

    .line 273
    :cond_a
    move-object v6, v10

    .line 274
    goto :goto_7

    .line 275
    :goto_8
    iget-object v11, v10, Lkm5;->b:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast v11, Ljava/util/HashMap;

    .line 278
    .line 279
    invoke-interface {v8}, Lo24;->filters()[Lqc3;

    .line 280
    .line 281
    .line 282
    move-result-object v13

    .line 283
    array-length v13, v13

    .line 284
    if-nez v13, :cond_c

    .line 285
    .line 286
    const/4 v13, 0x0

    .line 287
    const/16 v16, 0x0

    .line 288
    .line 289
    :cond_b
    move/from16 v19, v9

    .line 290
    .line 291
    goto :goto_b

    .line 292
    :cond_c
    invoke-interface {v8}, Lo24;->filters()[Lqc3;

    .line 293
    .line 294
    .line 295
    move-result-object v13

    .line 296
    array-length v13, v13

    .line 297
    new-array v13, v13, [Ly74;

    .line 298
    .line 299
    invoke-interface {v8}, Lo24;->filters()[Lqc3;

    .line 300
    .line 301
    .line 302
    move-result-object v14

    .line 303
    array-length v15, v14

    .line 304
    move v12, v2

    .line 305
    move/from16 v17, v12

    .line 306
    .line 307
    const/16 v16, 0x0

    .line 308
    .line 309
    :goto_9
    if-ge v12, v15, :cond_b

    .line 310
    .line 311
    aget-object v18, v14, v12

    .line 312
    .line 313
    move/from16 v19, v9

    .line 314
    .line 315
    invoke-interface/range {v18 .. v18}, Lqc3;->value()Ljava/lang/Class;

    .line 316
    .line 317
    .line 318
    move-result-object v9

    .line 319
    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v9

    .line 323
    check-cast v9, Ly74;

    .line 324
    .line 325
    if-nez v9, :cond_d

    .line 326
    .line 327
    :try_start_1
    invoke-interface/range {v18 .. v18}, Lqc3;->value()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    move-result-object v9

    .line 331
    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v9

    .line 335
    check-cast v9, Ly74;

    .line 336
    .line 337
    invoke-interface/range {v18 .. v18}, Lqc3;->value()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    invoke-virtual {v11, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 342
    .line 343
    .line 344
    goto :goto_a

    .line 345
    :catch_1
    move-exception v0

    .line 346
    invoke-static {v0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 347
    .line 348
    .line 349
    return-object v16

    .line 350
    :cond_d
    :goto_a
    aput-object v9, v13, v17

    .line 351
    .line 352
    add-int/lit8 v17, v17, 0x1

    .line 353
    .line 354
    add-int/lit8 v12, v12, 0x1

    .line 355
    .line 356
    move/from16 v9, v19

    .line 357
    .line 358
    const/4 v2, 0x0

    .line 359
    goto :goto_9

    .line 360
    :goto_b
    const/4 v2, 0x0

    .line 361
    if-nez v13, :cond_e

    .line 362
    .line 363
    new-array v13, v2, [Ly74;

    .line 364
    .line 365
    :cond_e
    invoke-static {v6, v7}, Lvm4;->m(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 366
    .line 367
    .line 368
    move-result-object v7

    .line 369
    check-cast v7, Ltx2;

    .line 370
    .line 371
    if-eqz v7, :cond_f

    .line 372
    .line 373
    invoke-interface {v7}, Ltx2;->messages()[Ljava/lang/Class;

    .line 374
    .line 375
    .line 376
    move-result-object v9

    .line 377
    :goto_c
    move/from16 v11, v19

    .line 378
    .line 379
    goto :goto_d

    .line 380
    :cond_f
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 381
    .line 382
    .line 383
    move-result-object v9

    .line 384
    goto :goto_c

    .line 385
    :goto_d
    invoke-virtual {v6, v11}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 386
    .line 387
    .line 388
    new-instance v12, Ljava/util/HashMap;

    .line 389
    .line 390
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 391
    .line 392
    .line 393
    const-string v14, "handler"

    .line 394
    .line 395
    invoke-virtual {v12, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    invoke-interface {v8}, Lo24;->condition()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v14

    .line 402
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 403
    .line 404
    .line 405
    move-result v14

    .line 406
    if-lez v14, :cond_12

    .line 407
    .line 408
    sget-object v14, Lxs2;->a:Ljavax/el/ExpressionFactory;

    .line 409
    .line 410
    if-eqz v14, :cond_11

    .line 411
    .line 412
    array-length v14, v13

    .line 413
    add-int/2addr v14, v11

    .line 414
    new-array v11, v14, [Ly74;

    .line 415
    .line 416
    move v14, v2

    .line 417
    :goto_e
    array-length v15, v13

    .line 418
    if-ge v14, v15, :cond_10

    .line 419
    .line 420
    aget-object v15, v13, v14

    .line 421
    .line 422
    aput-object v15, v11, v14

    .line 423
    .line 424
    add-int/lit8 v14, v14, 0x1

    .line 425
    .line 426
    goto :goto_e

    .line 427
    :cond_10
    array-length v13, v13

    .line 428
    new-instance v14, Lys2;

    .line 429
    .line 430
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 431
    .line 432
    .line 433
    aput-object v14, v11, v13

    .line 434
    .line 435
    move-object v13, v11

    .line 436
    goto :goto_f

    .line 437
    :cond_11
    const-string v0, "A handler uses an EL filter but no EL implementation is available."

    .line 438
    .line 439
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    return-object v16

    .line 443
    :cond_12
    :goto_f
    const-string v11, "filter"

    .line 444
    .line 445
    invoke-virtual {v12, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    invoke-interface {v8}, Lo24;->condition()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v11

    .line 452
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v13

    .line 456
    const-string v14, "${"

    .line 457
    .line 458
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 459
    .line 460
    .line 461
    move-result v13

    .line 462
    if-nez v13, :cond_13

    .line 463
    .line 464
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v13

    .line 468
    const-string v15, "#{"

    .line 469
    .line 470
    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 471
    .line 472
    .line 473
    move-result v13

    .line 474
    if-nez v13, :cond_13

    .line 475
    .line 476
    const-string v13, "}"

    .line 477
    .line 478
    invoke-static {v14, v11, v13}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v11

    .line 482
    :cond_13
    const-string v13, "condition"

    .line 483
    .line 484
    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    invoke-interface {v8}, Lo24;->priority()I

    .line 488
    .line 489
    .line 490
    move-result v11

    .line 491
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 492
    .line 493
    .line 494
    move-result-object v11

    .line 495
    const-string v13, "priority"

    .line 496
    .line 497
    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    const-string v11, "invocation"

    .line 501
    .line 502
    invoke-interface {v8}, Lo24;->invocation()Ljava/lang/Class;

    .line 503
    .line 504
    .line 505
    move-result-object v13

    .line 506
    invoke-virtual {v12, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    const-string v11, "invocationMode"

    .line 510
    .line 511
    invoke-interface {v8}, Lo24;->delivery()Llg4;

    .line 512
    .line 513
    .line 514
    move-result-object v13

    .line 515
    invoke-virtual {v12, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    if-eqz v7, :cond_14

    .line 519
    .line 520
    const/4 v11, 0x1

    .line 521
    goto :goto_10

    .line 522
    :cond_14
    move v11, v2

    .line 523
    :goto_10
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 524
    .line 525
    .line 526
    move-result-object v7

    .line 527
    const-string v11, "envelope"

    .line 528
    .line 529
    invoke-virtual {v12, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    invoke-interface {v8}, Lo24;->rejectSubtypes()Z

    .line 533
    .line 534
    .line 535
    move-result v7

    .line 536
    const/16 v19, 0x1

    .line 537
    .line 538
    xor-int/lit8 v7, v7, 0x1

    .line 539
    .line 540
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 541
    .line 542
    .line 543
    move-result-object v7

    .line 544
    const-string v8, "subtypes"

    .line 545
    .line 546
    invoke-virtual {v12, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    const-string v7, "listener"

    .line 550
    .line 551
    invoke-virtual {v12, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    const-class v7, Lev7;

    .line 555
    .line 556
    invoke-static {v6, v7}, Lvm4;->m(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 557
    .line 558
    .line 559
    move-result-object v6

    .line 560
    if-eqz v6, :cond_15

    .line 561
    .line 562
    goto :goto_11

    .line 563
    :cond_15
    move/from16 v19, v2

    .line 564
    .line 565
    :goto_11
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 566
    .line 567
    .line 568
    move-result-object v6

    .line 569
    const-string v7, "synchronized"

    .line 570
    .line 571
    invoke-virtual {v12, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    const-string v6, "messages"

    .line 575
    .line 576
    invoke-virtual {v12, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    new-instance v6, Lnd5;

    .line 580
    .line 581
    invoke-direct {v6, v12}, Lnd5;-><init>(Ljava/util/HashMap;)V

    .line 582
    .line 583
    .line 584
    iget-object v7, v1, Lpd5;->a:Ljava/util/ArrayList;

    .line 585
    .line 586
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    .line 588
    .line 589
    :goto_12
    add-int/lit8 v5, v5, 0x1

    .line 590
    .line 591
    goto/16 :goto_0

    .line 592
    .line 593
    :cond_16
    return-object v1
.end method

.method public o(Lf80;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 8

    .line 1
    iget-object p0, p0, Lkm5;->b:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    check-cast v1, Lsy1;

    .line 5
    .line 6
    const-string p0, "Handling uncaught exception \""

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p0, "\" from thread "

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string v0, "FirebaseCrashlytics"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v7, 0x0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    const-string v0, "FirebaseCrashlytics"

    .line 44
    .line 45
    invoke-static {v0, p0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-static {}, Lwx3;->v()V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    iget-object p0, v1, Lsy1;->e:Ls02;

    .line 56
    .line 57
    iget-object p0, p0, Ls02;->a:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p0, Lo02;

    .line 60
    .line 61
    new-instance v0, Lqy1;

    .line 62
    .line 63
    move-object v6, p1

    .line 64
    move-object v5, p2

    .line 65
    move-object v4, p3

    .line 66
    invoke-direct/range {v0 .. v6}, Lqy1;-><init>(Lsy1;JLjava/lang/Throwable;Ljava/lang/Thread;Lf80;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Lo02;->b(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 70
    .line 71
    .line 72
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :try_start_1
    invoke-static {p0}, Lgi8;->a(Lcom/google/android/gms/tasks/Task;)V
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    move-object p0, v0

    .line 79
    goto :goto_1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    move-object p0, v0

    .line 82
    :try_start_2
    const-string p1, "Error handling uncaught exception"

    .line 83
    .line 84
    const-string p2, "FirebaseCrashlytics"

    .line 85
    .line 86
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catch_1
    const-string p0, "Cannot send reports. Timed out while fetching settings."

    .line 91
    .line 92
    const-string p1, "FirebaseCrashlytics"

    .line 93
    .line 94
    invoke-static {p1, p0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    .line 96
    .line 97
    :goto_0
    monitor-exit v1

    .line 98
    return-void

    .line 99
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    throw p0
.end method

.method public onCancelled(Lwc2;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lkm5;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p0, Ldm3;

    .line 7
    .line 8
    iget-object v0, p0, La55;->b:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "onCancelled: "

    .line 11
    .line 12
    invoke-virtual {p1}, Lwc2;->c()Lxc2;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Ldm3;->i:Lex6;

    .line 20
    .line 21
    sget-object p1, Lrl3;->a:Lrl3;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onDataChange(Leb2;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lkm5;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ldm3;

    .line 4
    .line 5
    iget-object p0, p0, Ldm3;->i:Lex6;

    .line 6
    .line 7
    const-class v0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Leb2;->c(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->hasBackups()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Lol3;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Lol3;-><init>(Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    :goto_0
    sget-object p1, Lsl3;->a:Lsl3;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public p()Ljava/io/File;
    .locals 2

    .line 1
    iget-object p0, p0, Lkm5;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lke;

    .line 4
    .line 5
    new-instance v0, Ljava/io/File;

    .line 6
    .line 7
    iget-object p0, p0, Lke;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v1, "lottie_network_cache"

    .line 16
    .line 17
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 36
    .line 37
    .line 38
    :cond_1
    return-object v0
.end method

.method public q(Lfh6;Lmg6;Lmg6;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lkm5;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lfh6;->o(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->g0:Lng6;

    .line 10
    .line 11
    move-object v1, v0

    .line 12
    check-cast v1, Lcf2;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget v3, p2, Lmg6;->a:I

    .line 20
    .line 21
    iget v5, p3, Lmg6;->a:I

    .line 22
    .line 23
    if-ne v3, v5, :cond_1

    .line 24
    .line 25
    iget v0, p2, Lmg6;->b:I

    .line 26
    .line 27
    iget v2, p3, Lmg6;->b:I

    .line 28
    .line 29
    if-eq v0, v2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v2, p1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    iget v4, p2, Lmg6;->b:I

    .line 35
    .line 36
    iget v6, p3, Lmg6;->b:I

    .line 37
    .line 38
    move-object v2, p1

    .line 39
    invoke-virtual/range {v1 .. v6}, Lcf2;->g(Lfh6;IIII)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    goto :goto_2

    .line 44
    :goto_1
    invoke-virtual {v1, v2}, Lcf2;->l(Lfh6;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, v2, Lfh6;->a:Landroid/view/View;

    .line 48
    .line 49
    const/4 p2, 0x0

    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 51
    .line 52
    .line 53
    iget-object p1, v1, Lcf2;->i:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x1

    .line 59
    :goto_2
    if-eqz p1, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->V()V

    .line 62
    .line 63
    .line 64
    :cond_2
    return-void
.end method

.method public r(Lfh6;Lmg6;Lmg6;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lkm5;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->c:Lvg6;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lvg6;->m(Lfh6;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->g(Lfh6;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Lfh6;->o(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->g0:Lng6;

    .line 18
    .line 19
    move-object v1, v0

    .line 20
    check-cast v1, Lcf2;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget v3, p2, Lmg6;->a:I

    .line 26
    .line 27
    iget v4, p2, Lmg6;->b:I

    .line 28
    .line 29
    iget-object p2, p1, Lfh6;->a:Landroid/view/View;

    .line 30
    .line 31
    if-nez p3, :cond_0

    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    :goto_0
    move v5, v0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    iget v0, p3, Lmg6;->a:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :goto_1
    if-nez p3, :cond_1

    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    :goto_2
    move v6, p3

    .line 49
    goto :goto_3

    .line 50
    :cond_1
    iget p3, p3, Lmg6;->b:I

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :goto_3
    invoke-virtual {p1}, Lfh6;->i()Z

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    if-nez p3, :cond_2

    .line 58
    .line 59
    if-ne v3, v5, :cond_3

    .line 60
    .line 61
    if-eq v4, v6, :cond_2

    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_2
    move-object v2, p1

    .line 65
    goto :goto_5

    .line 66
    :cond_3
    :goto_4
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 67
    .line 68
    .line 69
    move-result p3

    .line 70
    add-int/2addr p3, v5

    .line 71
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    add-int/2addr v0, v6

    .line 76
    invoke-virtual {p2, v5, v6, p3, v0}, Landroid/view/View;->layout(IIII)V

    .line 77
    .line 78
    .line 79
    move-object v2, p1

    .line 80
    invoke-virtual/range {v1 .. v6}, Lcf2;->g(Lfh6;IIII)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    goto :goto_6

    .line 85
    :goto_5
    invoke-virtual {v1, v2}, Lcf2;->l(Lfh6;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, v1, Lcf2;->h:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    const/4 p1, 0x1

    .line 94
    :goto_6
    if-eqz p1, :cond_4

    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->V()V

    .line 97
    .line 98
    .line 99
    :cond_4
    return-void
.end method

.method public s(Lhr0;)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v1}, Lgr0;->a(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    long-to-int v2, v2

    .line 8
    const/4 v3, -0x1

    .line 9
    if-ne v2, v3, :cond_0

    .line 10
    .line 11
    return v3

    .line 12
    :cond_0
    mul-int/lit8 v4, v0, 0x2

    .line 13
    .line 14
    add-int/2addr v4, v1

    .line 15
    add-int v1, v4, v2

    .line 16
    .line 17
    iget-object v4, p0, Lkm5;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v4, [I

    .line 20
    .line 21
    aget v4, v4, v1

    .line 22
    .line 23
    const/4 v5, -0x2

    .line 24
    if-ne v4, v5, :cond_1

    .line 25
    .line 26
    move v0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    if-eq v4, v3, :cond_2

    .line 29
    .line 30
    return v4

    .line 31
    :cond_2
    const-string p0, " of node at index "

    .line 32
    .line 33
    const-string p1, " is not defined"

    .line 34
    .line 35
    const-string v1, "The child "

    .line 36
    .line 37
    invoke-static {v1, v2, p0, p1, v0}, Ldj7;->j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    return p0
.end method

.method public t(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lkm5;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lkm0;->setProgress(I)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, v0}, Lkm0;->setIndeterminate(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public u(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lkm5;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public v(IZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lkm5;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 4
    .line 5
    invoke-static {p0, p1, p2}, Lsz8;->b0(Lkm0;IZ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public w()V
    .locals 1

    .line 1
    iget-object p0, p0, Lkm5;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public x(Ljava/lang/String;Ljava/io/InputStream;Lm73;)Ljava/io/File;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, p3, v0}, Lkm5;->l(Ljava/lang/String;Lm73;Z)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    new-instance p3, Ljava/io/File;

    .line 7
    .line 8
    invoke-virtual {p0}, Lkm5;->p()Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-direct {p3, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    .line 16
    .line 17
    invoke-direct {p0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    .line 19
    .line 20
    const/16 p1, 0x400

    .line 21
    .line 22
    :try_start_1
    new-array p1, p1, [B

    .line 23
    .line 24
    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, -0x1

    .line 29
    if-eq v0, v1, :cond_0

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 45
    .line 46
    .line 47
    return-object p3

    .line 48
    :catchall_1
    move-exception p0

    .line 49
    goto :goto_2

    .line 50
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 51
    .line 52
    .line 53
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 54
    :goto_2
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 55
    .line 56
    .line 57
    throw p0
.end method

.method public y(Lai5;)Lch5;
    .locals 3

    .line 1
    iget v0, p0, Lkm5;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lbm6;

    .line 7
    .line 8
    iget-object p0, p0, Lkm5;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroid/content/Context;

    .line 11
    .line 12
    const-class v1, Ljava/lang/Integer;

    .line 13
    .line 14
    const-class v2, Landroid/content/res/AssetFileDescriptor;

    .line 15
    .line 16
    invoke-virtual {p1, v1, v2}, Lai5;->a(Ljava/lang/Class;Ljava/lang/Class;)Lch5;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p0, p1}, Lbm6;-><init>(Landroid/content/Context;Lch5;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_0
    new-instance p1, Ld74;

    .line 25
    .line 26
    iget-object p0, p0, Lkm5;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Lvk9;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Ld74;-><init>(Lvk9;)V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method
