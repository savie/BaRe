.class public final Ljk;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lc40;

.field public final b:Ljava/util/ArrayList;

.field public c:Lgz7;


# direct methods
.method public constructor <init>(Lc40;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljk;->a:Lc40;

    .line 5
    .line 6
    iput-object p2, p0, Ljk;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    sget-object p1, Lgz7;->WAITING:Lgz7;

    .line 9
    .line 10
    iput-object p1, p0, Ljk;->c:Lgz7;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    .line 1
    sget-object v0, Lgz7;->RUNNING:Lgz7;

    .line 2
    .line 3
    iput-object v0, p0, Ljk;->c:Lgz7;

    .line 4
    .line 5
    iget-object v0, p0, Ljk;->b:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_2

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    add-int/2addr v2, v3

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Lji;

    .line 25
    .line 26
    iget-object v5, p0, Ljk;->c:Lgz7;

    .line 27
    .line 28
    invoke-virtual {v5}, Lgz7;->isCancelled()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget-object v5, p0, Ljk;->a:Lc40;

    .line 36
    .line 37
    invoke-virtual {v5, v4}, Lc40;->p(Lji;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    new-instance v7, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v8, "/"

    .line 53
    .line 54
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-le v7, v3, :cond_1

    .line 69
    .line 70
    iget-object v3, v5, Lpw6;->d:Lgj5;

    .line 71
    .line 72
    invoke-virtual {v3, v6}, Lzy4;->i(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 76
    .line 77
    const-string v3, "Processing "

    .line 78
    .line 79
    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    const/4 v11, 0x4

    .line 84
    const/4 v12, 0x0

    .line 85
    const-string v8, "AppBackupDeleteHelper"

    .line 86
    .line 87
    const/4 v10, 0x0

    .line 88
    invoke-static/range {v7 .. v12}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    iget-object v3, v5, Lpw6;->i:Lex6;

    .line 92
    .line 93
    sget-object v6, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 94
    .line 95
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    const v7, 0x7f1301e6

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-virtual {v3, v6}, Lzy4;->i(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Lji;->getPackageName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    iget-object v4, v5, Lpw6;->a:Lcz7;

    .line 114
    .line 115
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    check-cast v4, Loy7;

    .line 119
    .line 120
    invoke-static {v3, v4}, Lik;->a(Ljava/lang/String;Loy7;)V

    .line 121
    .line 122
    .line 123
    mul-int/lit8 v3, v2, 0x64

    .line 124
    .line 125
    invoke-virtual {v5, v3}, Lpw6;->n(I)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_2
    :goto_1
    sget-object v0, Lgz7;->COMPLETE:Lgz7;

    .line 130
    .line 131
    iput-object v0, p0, Ljk;->c:Lgz7;

    .line 132
    .line 133
    return-void
.end method
