.class public final Liw7;
.super Lg3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lhw7;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lhw7;

    .line 5
    .line 6
    invoke-direct {v0}, Lon5;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Liw7;->a:Lhw7;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Liw7;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Liw7;->e:Z

    .line 20
    .line 21
    iput-object p1, p0, Liw7;->c:Ljava/util/ArrayList;

    .line 22
    .line 23
    iput-object p2, p0, Liw7;->d:Ljava/util/ArrayList;

    .line 24
    .line 25
    return-void
.end method

.method public static i(Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 9

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "|"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    move v4, v3

    .line 34
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-ge v4, v5, :cond_4

    .line 39
    .line 40
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const/16 v6, 0x5c

    .line 45
    .line 46
    const/16 v7, 0x7c

    .line 47
    .line 48
    if-eq v5, v6, :cond_2

    .line 49
    .line 50
    if-eq v5, v7, :cond_1

    .line 51
    .line 52
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    add-int/lit8 v5, v4, 0x1

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    if-ge v5, v8, :cond_3

    .line 74
    .line 75
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    if-ne v8, v7, :cond_3

    .line 80
    .line 81
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    move v4, v5

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    :goto_1
    add-int/2addr v4, v1

    .line 90
    goto :goto_0

    .line 91
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-lez p0, :cond_5

    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    :cond_5
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Liw7;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Liw7;->e:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object p0, p0, Liw7;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final e()Lws0;
    .locals 0

    .line 1
    iget-object p0, p0, Liw7;->a:Lhw7;

    .line 2
    .line 3
    return-object p0
.end method

.method public final g(Lic4;)V
    .locals 11

    .line 1
    iget-object v0, p0, Liw7;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    new-instance v2, Lmw7;

    .line 8
    .line 9
    invoke-direct {v2}, Lon5;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v3, p0, Liw7;->a:Lhw7;

    .line 13
    .line 14
    invoke-virtual {v3, v2}, Lon5;->b(Lon5;)V

    .line 15
    .line 16
    .line 17
    new-instance v4, Lww7;

    .line 18
    .line 19
    invoke-direct {v4}, Lon5;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v4}, Lon5;->b(Lon5;)V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    move v5, v2

    .line 27
    :goto_0
    iget-object v6, p0, Liw7;->c:Ljava/util/ArrayList;

    .line 28
    .line 29
    if-ge v5, v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    check-cast v7, Ljava/lang/String;

    .line 36
    .line 37
    new-instance v8, Llw7;

    .line 38
    .line 39
    invoke-direct {v8}, Lon5;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    if-ge v5, v9, :cond_0

    .line 47
    .line 48
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    check-cast v6, Lkw7;

    .line 53
    .line 54
    iput-object v6, v8, Llw7;->g:Lkw7;

    .line 55
    .line 56
    :cond_0
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {p1, v6, v8}, Lic4;->f(Ljava/lang/String;Lon5;)V

    .line 61
    .line 62
    .line 63
    const/4 v6, 0x1

    .line 64
    iput-boolean v6, v8, Llw7;->f:Z

    .line 65
    .line 66
    invoke-virtual {v4, v8}, Lon5;->b(Lon5;)V

    .line 67
    .line 68
    .line 69
    add-int/lit8 v5, v5, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    iget-object p0, p0, Liw7;->b:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const/4 v0, 0x0

    .line 79
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_6

    .line 84
    .line 85
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Ljava/lang/CharSequence;

    .line 90
    .line 91
    invoke-static {v4}, Liw7;->i(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    new-instance v5, Lww7;

    .line 96
    .line 97
    invoke-direct {v5}, Lon5;-><init>()V

    .line 98
    .line 99
    .line 100
    move v7, v2

    .line 101
    :goto_2
    if-ge v7, v1, :cond_4

    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    if-ge v7, v8, :cond_2

    .line 108
    .line 109
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    check-cast v8, Ljava/lang/String;

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_2
    const-string v8, ""

    .line 117
    .line 118
    :goto_3
    new-instance v9, Llw7;

    .line 119
    .line 120
    invoke-direct {v9}, Lon5;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    if-ge v7, v10, :cond_3

    .line 128
    .line 129
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    check-cast v10, Lkw7;

    .line 134
    .line 135
    iput-object v10, v9, Llw7;->g:Lkw7;

    .line 136
    .line 137
    :cond_3
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    invoke-virtual {p1, v8, v9}, Lic4;->f(Ljava/lang/String;Lon5;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5, v9}, Lon5;->b(Lon5;)V

    .line 145
    .line 146
    .line 147
    add-int/lit8 v7, v7, 0x1

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_4
    if-nez v0, :cond_5

    .line 151
    .line 152
    new-instance v0, Ljw7;

    .line 153
    .line 154
    invoke-direct {v0}, Lon5;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, v0}, Lon5;->b(Lon5;)V

    .line 158
    .line 159
    .line 160
    :cond_5
    invoke-virtual {v0, v5}, Lon5;->b(Lon5;)V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_6
    return-void
.end method

.method public final h(Lun2;)Lys0;
    .locals 1

    .line 1
    iget-object p0, p1, Lun2;->a:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "|"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    iget p0, p1, Lun2;->b:I

    .line 16
    .line 17
    invoke-static {p0}, Lys0;->a(I)Lys0;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method
