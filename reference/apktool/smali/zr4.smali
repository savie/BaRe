.class public final Lzr4;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public e:Z

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/Set;

.field public final i:Lex6;

.field public final j:Lu95;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lsv2;->a:Lsv2;

    .line 5
    .line 6
    iput-object v0, p0, Lzr4;->h:Ljava/util/Set;

    .line 7
    .line 8
    new-instance v0, Lex6;

    .line 9
    .line 10
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lzr4;->i:Lex6;

    .line 14
    .line 15
    new-instance v0, Lu95;

    .line 16
    .line 17
    invoke-direct {v0}, Lu95;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lzr4;->j:Lu95;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final j()Ljava/util/ArrayList;
    .locals 3

    .line 1
    iget-object p0, p0, Lzr4;->h:Ljava/util/Set;

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/String;

    .line 23
    .line 24
    sget-object v2, Llr4;->a:Llr4;

    .line 25
    .line 26
    invoke-static {v1}, Llr4;->c(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-object v0
.end method

.method public final k(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lw13;->g(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lzr4;->f:Ljava/lang/Integer;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    :goto_0
    iget-object v0, p0, Lzr4;->f:Ljava/lang/Integer;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v2, 0x2

    .line 28
    if-ne v0, v2, :cond_9

    .line 29
    .line 30
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    move-object v3, v2

    .line 50
    check-cast v3, Lvq4;

    .line 51
    .line 52
    iget-object v4, p0, Lzr4;->h:Ljava/util/Set;

    .line 53
    .line 54
    iget-object v3, v3, Lvq4;->a:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 55
    .line 56
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v4, v3}, Lel1;->M0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-nez v3, :cond_3

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    iget-object p1, p0, Lzr4;->g:Ljava/lang/String;

    .line 71
    .line 72
    if-eqz p1, :cond_8

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    iput-object v2, p0, Lzr4;->g:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v2, p0, Lzr4;->h:Ljava/util/Set;

    .line 78
    .line 79
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    const/4 v3, 0x5

    .line 84
    if-lt v2, v3, :cond_5

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_7

    .line 101
    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    move-object v4, v3

    .line 107
    check-cast v4, Lvq4;

    .line 108
    .line 109
    iget-object v4, v4, Lvq4;->a:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 110
    .line 111
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-static {v4, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-nez v4, :cond_6

    .line 120
    .line 121
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_7
    iget-object v0, p0, Lzr4;->h:Ljava/util/Set;

    .line 126
    .line 127
    invoke-static {v0, p1}, Lsz8;->S(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iput-object p1, p0, Lzr4;->h:Ljava/util/Set;

    .line 132
    .line 133
    move-object p1, v2

    .line 134
    goto :goto_4

    .line 135
    :cond_8
    :goto_3
    move-object p1, v0

    .line 136
    :cond_9
    :goto_4
    new-instance v2, Lfm7;

    .line 137
    .line 138
    new-instance v0, Lcl7;

    .line 139
    .line 140
    const/4 v3, 0x7

    .line 141
    invoke-direct {v0, v3}, Lcl7;-><init>(I)V

    .line 142
    .line 143
    .line 144
    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 145
    .line 146
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    new-instance v3, Lm54;

    .line 150
    .line 151
    invoke-direct {v3, v0, v1}, Lm54;-><init>(Ljava/util/Comparator;I)V

    .line 152
    .line 153
    .line 154
    invoke-static {p1, v3}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    const/4 v6, 0x0

    .line 159
    const/16 v7, 0x1e

    .line 160
    .line 161
    const/4 v4, 0x0

    .line 162
    const/4 v5, 0x0

    .line 163
    invoke-direct/range {v2 .. v7}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 164
    .line 165
    .line 166
    iget-object p0, p0, Lzr4;->j:Lu95;

    .line 167
    .line 168
    invoke-virtual {p0, v2}, Lzy4;->k(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    return-void
.end method
