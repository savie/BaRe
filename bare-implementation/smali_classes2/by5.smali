.class public final Lby5;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Lex6;

.field public final f:Lix6;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lex6;

    .line 5
    .line 6
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lby5;->e:Lex6;

    .line 10
    .line 11
    new-instance v0, Lix6;

    .line 12
    .line 13
    invoke-direct {v0}, Lix6;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lby5;->f:Lix6;

    .line 17
    .line 18
    invoke-virtual {p0}, Lby5;->k()V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final j(Lux5;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lby5;->e:Lex6;

    .line 5
    .line 6
    invoke-virtual {v0}, Lzy4;->d()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lzx5;

    .line 11
    .line 12
    sget-object v1, Lay5;->a:[I

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    aget v1, v1, v2

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    const-string v3, "saved_password_mode"

    .line 22
    .line 23
    if-eq v1, v2, :cond_4

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    if-ne v1, v2, :cond_3

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, v0, Lzx5;->b:Ljava/lang/String;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-static {}, Lux5;->getEntries()Ljx2;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lkx2;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lkx2;->indexOf(Ljava/lang/Object;)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 54
    .line 55
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getZ()Landroid/content/SharedPreferences;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lby5;->k()V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    :goto_1
    iget-object p0, p0, Lby5;->f:Lix6;

    .line 75
    .line 76
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lix6;->k(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_3
    invoke-static {}, Lq;->j()V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_4
    invoke-static {}, Lux5;->getEntries()Ljx2;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lkx2;

    .line 91
    .line 92
    invoke-virtual {v0, p1}, Lkx2;->indexOf(Ljava/lang/Object;)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 97
    .line 98
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getZ()Landroid/content/SharedPreferences;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lby5;->k()V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final k()V
    .locals 1

    .line 1
    new-instance v0, Lzx5;

    .line 2
    .line 3
    invoke-direct {v0}, Lzx5;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lby5;->e:Lex6;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
