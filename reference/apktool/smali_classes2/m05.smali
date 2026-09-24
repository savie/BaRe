.class public final Lm05;
.super Lxh8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic q:Ln05;


# direct methods
.method public constructor <init>(Ln05;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm05;->q:Ln05;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDataChange(Leb2;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lxh8;->onDataChange(Leb2;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Leb2;->a:Lsb4;

    .line 5
    .line 6
    iget-object v0, v0, Lsb4;->a:Lqn5;

    .line 7
    .line 8
    invoke-interface {v0}, Lqn5;->z()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_4

    .line 13
    .line 14
    invoke-virtual {p1}, Leb2;->b()Ldb2;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p1, Ldb2;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Ljava/util/Iterator;

    .line 21
    .line 22
    sget-object v1, Ll05;->a:Ll05;

    .line 23
    .line 24
    new-instance v2, Ldq;

    .line 25
    .line 26
    const/16 v3, 0x9

    .line 27
    .line 28
    invoke-direct {v2, v3}, Ldq;-><init>(I)V

    .line 29
    .line 30
    .line 31
    new-instance v3, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Lhk5;

    .line 47
    .line 48
    new-instance v5, Leb2;

    .line 49
    .line 50
    iget-object v6, p1, Ldb2;->c:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v6, Leb2;

    .line 53
    .line 54
    iget-object v6, v6, Leb2;->b:Lzc2;

    .line 55
    .line 56
    iget-object v7, v4, Lhk5;->a:Lm61;

    .line 57
    .line 58
    iget-object v7, v7, Lm61;->a:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v6, v7}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    iget-object v4, v4, Lhk5;->b:Lqn5;

    .line 65
    .line 66
    invoke-static {v4}, Lsb4;->d(Lqn5;)Lsb4;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-direct {v5, v6, v4}, Leb2;-><init>(Lzc2;Lsb4;)V

    .line 71
    .line 72
    .line 73
    const/4 v4, 0x0

    .line 74
    :try_start_0
    invoke-virtual {v1, v5}, Ll05;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    instance-of v6, v6, Ljava/util/Map;

    .line 79
    .line 80
    if-nez v6, :cond_1

    .line 81
    .line 82
    invoke-virtual {v2, v4}, Ldq;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_1
    :try_start_1
    const-class v6, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;

    .line 87
    .line 88
    invoke-virtual {v5, v6}, Leb2;->c(Ljava/lang/Class;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    check-cast v5, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;

    .line 93
    .line 94
    if-nez v5, :cond_2

    .line 95
    .line 96
    invoke-virtual {v2, v4}, Ldq;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :catch_0
    move-exception v5

    .line 101
    goto :goto_2

    .line 102
    :cond_2
    :goto_1
    move-object v4, v5

    .line 103
    goto :goto_3

    .line 104
    :goto_2
    invoke-virtual {v2, v5}, Ldq;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :catch_1
    move-exception v5

    .line 109
    invoke-virtual {v2, v5}, Ldq;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    :goto_3
    if-eqz v4, :cond_0

    .line 113
    .line 114
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_3
    iget-object p0, p0, Lm05;->q:Ln05;

    .line 119
    .line 120
    iput-object v3, p0, Ln05;->g:Ljava/util/ArrayList;

    .line 121
    .line 122
    :cond_4
    return-void
.end method
