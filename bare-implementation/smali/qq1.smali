.class public final Lqq1;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public e:Z

.field public f:Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

.field public final g:Lgv7;

.field public final h:Lgv7;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lb7;

    .line 5
    .line 6
    const/16 v1, 0xb

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lb7;-><init>(I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lgv7;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lqq1;->g:Lgv7;

    .line 17
    .line 18
    new-instance v0, Lov;

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    invoke-direct {v0, v1}, Lov;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lgv7;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lqq1;->h:Lgv7;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final j()Lorg/swiftapps/swiftbackup/appconfigs/data/Config;
    .locals 8

    .line 1
    iget-object v0, p0, Lqq1;->g:Lgv7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lex6;

    .line 8
    .line 9
    invoke-virtual {v0}, Lzy4;->d()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Lqq1;->f:Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 18
    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    new-instance v0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 22
    .line 23
    const/16 v6, 0x1f

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v1, 0x0

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-direct/range {v0 .. v7}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_0
    return-object p0

    .line 36
    :cond_1
    return-object v0
.end method

.method public final k(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;I)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lqq1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getValidSettings()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :cond_1
    if-eqz v0, :cond_2

    .line 22
    .line 23
    new-instance v5, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    add-int/2addr p2, p1

    .line 33
    invoke-static {v5, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lqq1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/16 v7, 0x17

    .line 41
    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v2, 0x0

    .line 44
    const/4 v3, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    const/4 v6, 0x0

    .line 47
    invoke-static/range {v1 .. v8}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->copy$default(Lorg/swiftapps/swiftbackup/appconfigs/data/Config;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const/4 p2, 0x0

    .line 52
    invoke-virtual {p0, p1, p2}, Lqq1;->l(Lorg/swiftapps/swiftbackup/appconfigs/data/Config;Z)V

    .line 53
    .line 54
    .line 55
    :cond_2
    return-void
.end method

.method public final l(Lorg/swiftapps/swiftbackup/appconfigs/data/Config;Z)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lqq1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    const/16 v7, 0x1d

    .line 13
    .line 14
    const/4 v8, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    move-object v1, p1

    .line 20
    invoke-static/range {v1 .. v8}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->copy$default(Lorg/swiftapps/swiftbackup/appconfigs/data/Config;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    iput-object p1, p0, Lqq1;->f:Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 27
    .line 28
    :cond_0
    iget-object p2, p0, Lqq1;->g:Lgv7;

    .line 29
    .line 30
    invoke-virtual {p2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    check-cast p2, Lex6;

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->isNameValid()Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    const/4 v0, 0x0

    .line 44
    if-nez p2, :cond_1

    .line 45
    .line 46
    sget-object p2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 47
    .line 48
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    const v1, 0x7f1302d1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move-object p2, v0

    .line 61
    :goto_0
    if-eqz p2, :cond_2

    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_5

    .line 68
    .line 69
    :cond_2
    sget-object v1, Lbr1;->a:Lbr1;

    .line 70
    .line 71
    invoke-static {p1}, Lbr1;->c(Lorg/swiftapps/swiftbackup/appconfigs/data/Config;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_5

    .line 76
    .line 77
    iget-object v1, p0, Lqq1;->f:Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 78
    .line 79
    if-eqz v1, :cond_4

    .line 80
    .line 81
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->get_name()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object v1, p0, Lqq1;->f:Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->get_name()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-eqz v1, :cond_3

    .line 95
    .line 96
    invoke-static {v1}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    :cond_3
    const/4 v1, 0x1

    .line 105
    invoke-static {p1, v0, v1}, Luq7;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_4

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_4
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 113
    .line 114
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const p2, 0x7f1301ab

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    :cond_5
    :goto_1
    iget-object p0, p0, Lqq1;->h:Lgv7;

    .line 126
    .line 127
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    check-cast p0, Lex6;

    .line 132
    .line 133
    invoke-virtual {p0, p2}, Lex6;->k(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method
