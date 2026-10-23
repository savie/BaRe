.class public final Lrz0$a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrz0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrz0$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final fromFileNameLegacy(Ljava/lang/String;Ljava/lang/String;J)Lrz0;
    .locals 12

    .line 1
    const-string p0, "_"

    .line 2
    .line 3
    :try_start_0
    const-string v0, ".cls"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lnq7;->r0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lrz0;

    .line 10
    .line 11
    invoke-static {v0, p0}, Lai8;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    invoke-static {v0, p0}, Lai8;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const/16 v10, 0x8

    .line 28
    .line 29
    const/4 v11, 0x0

    .line 30
    const/4 v6, 0x0

    .line 31
    move-object v2, p1

    .line 32
    move-object v7, p2

    .line 33
    move-wide v8, p3

    .line 34
    invoke-direct/range {v1 .. v11}, Lrz0;-><init>(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    return-object v1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    move-object p0, v0

    .line 40
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const-string p2, "Error creating instance for legacy file="

    .line 47
    .line 48
    const-string v1, ", Error="

    .line 49
    .line 50
    invoke-static {p2, p1, v1, p0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const/4 v4, 0x4

    .line 55
    const/4 v5, 0x0

    .line 56
    const-string v1, "CallLogBackupItem"

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    return-object p0
.end method

.method private final fromFileNameV2(Ljava/lang/String;Ljava/lang/String;J)Lrz0;
    .locals 10

    .line 1
    :try_start_0
    const-string p0, "\\."

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-static {v0}, Lnq7;->t0(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 22
    .line 23
    .line 24
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    move-object p0, v0

    .line 38
    move-object v2, p1

    .line 39
    goto :goto_2

    .line 40
    :cond_0
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    .line 41
    .line 42
    const/16 v2, 0xa

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_1

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-object p0, v1

    .line 88
    :goto_0
    const/4 v0, 0x1

    .line 89
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 96
    .line 97
    .line 98
    move-result-wide v3

    .line 99
    const/4 v0, 0x2

    .line 100
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    const/4 v0, 0x3

    .line 111
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    move-object v6, p0

    .line 116
    check-cast v6, Ljava/lang/String;

    .line 117
    .line 118
    new-instance v1, Lrz0;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 119
    .line 120
    move-object v2, p1

    .line 121
    move-object v7, p2

    .line 122
    move-wide v8, p3

    .line 123
    :try_start_3
    invoke-direct/range {v1 .. v9}, Lrz0;-><init>(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 124
    .line 125
    .line 126
    return-object v1

    .line 127
    :catch_1
    move-exception v0

    .line 128
    :goto_1
    move-object p0, v0

    .line 129
    goto :goto_2

    .line 130
    :catch_2
    move-exception v0

    .line 131
    move-object v2, p1

    .line 132
    goto :goto_1

    .line 133
    :goto_2
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 134
    .line 135
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    const-string p1, "Error creating instance for file="

    .line 140
    .line 141
    const-string p2, ", Error="

    .line 142
    .line 143
    invoke-static {p1, v2, p2, p0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    const/4 v4, 0x4

    .line 148
    const/4 v5, 0x0

    .line 149
    const-string v1, "CallLogBackupItem"

    .line 150
    .line 151
    const/4 v3, 0x0

    .line 152
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    const/4 p0, 0x0

    .line 156
    return-object p0
.end method

.method private final fromFileNameV3(Ljava/lang/String;Ljava/lang/String;J)Lrz0;
    .locals 10

    .line 1
    :try_start_0
    const-string p0, "\\."

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-static {v0}, Lnq7;->t0(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 22
    .line 23
    .line 24
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    move-object p0, v0

    .line 38
    move-object v2, p1

    .line 39
    goto :goto_2

    .line 40
    :cond_0
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    .line 41
    .line 42
    const/16 v2, 0xa

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_1

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-object p0, v1

    .line 88
    :goto_0
    const/4 v0, 0x1

    .line 89
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 96
    .line 97
    .line 98
    move-result-wide v3

    .line 99
    const/4 v0, 0x2

    .line 100
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    const/4 v0, 0x3

    .line 111
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    move-object v6, p0

    .line 116
    check-cast v6, Ljava/lang/String;

    .line 117
    .line 118
    new-instance v1, Lrz0;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 119
    .line 120
    move-object v2, p1

    .line 121
    move-object v7, p2

    .line 122
    move-wide v8, p3

    .line 123
    :try_start_3
    invoke-direct/range {v1 .. v9}, Lrz0;-><init>(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 124
    .line 125
    .line 126
    return-object v1

    .line 127
    :catch_1
    move-exception v0

    .line 128
    :goto_1
    move-object p0, v0

    .line 129
    goto :goto_2

    .line 130
    :catch_2
    move-exception v0

    .line 131
    move-object v2, p1

    .line 132
    goto :goto_1

    .line 133
    :goto_2
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 134
    .line 135
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    const-string p1, "Error creating instance for file="

    .line 140
    .line 141
    const-string p2, ", Error="

    .line 142
    .line 143
    invoke-static {p1, v2, p2, p0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    const/4 v4, 0x4

    .line 148
    const/4 v5, 0x0

    .line 149
    const-string v1, "CallLogBackupItem"

    .line 150
    .line 151
    const/4 v3, 0x0

    .line 152
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    const/4 p0, 0x0

    .line 156
    return-object p0
.end method


# virtual methods
.method public final fromFileName(Ljava/lang/String;Ljava/lang/String;J)Lrz0;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "v3"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {p1, v0, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lrz0$a;->fromFileNameV3(Ljava/lang/String;Ljava/lang/String;J)Lrz0;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    const-string v0, "v2"

    .line 19
    .line 20
    invoke-static {p1, v0, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lrz0$a;->fromFileNameV2(Ljava/lang/String;Ljava/lang/String;J)Lrz0;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lrz0$a;->fromFileNameLegacy(Ljava/lang/String;Ljava/lang/String;J)Lrz0;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method
