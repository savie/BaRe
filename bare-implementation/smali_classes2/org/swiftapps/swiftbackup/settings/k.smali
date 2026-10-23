.class public final Lorg/swiftapps/swiftbackup/settings/k;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public e:Z

.field public final f:Lex6;


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
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/settings/k;->f:Lex6;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final j(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/k;->f:Lex6;

    .line 5
    .line 6
    invoke-virtual {p0}, Lzy4;->d()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    move-object v1, v0

    .line 11
    check-cast v1, Lorg/swiftapps/swiftbackup/settings/i;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {p1}, Lorg/swiftapps/swiftbackup/settings/f;->b(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    const/4 v6, 0x7

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-static/range {v1 .. v6}, Lorg/swiftapps/swiftbackup/settings/i;->a(Lorg/swiftapps/swiftbackup/settings/i;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;I)Lorg/swiftapps/swiftbackup/settings/i;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final k(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/k;->f:Lex6;

    .line 5
    .line 6
    invoke-virtual {p0}, Lzy4;->d()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    move-object v1, v0

    .line 11
    check-cast v1, Lorg/swiftapps/swiftbackup/settings/i;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {p1}, Lorg/swiftapps/swiftbackup/settings/f;->b(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v2, Lorg/swiftapps/swiftbackup/settings/j;->a:[I

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    aget v0, v2, v0

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    if-eq v0, v2, :cond_3

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    if-eq v0, v2, :cond_2

    .line 33
    .line 34
    const/4 v2, 0x3

    .line 35
    if-ne v0, v2, :cond_1

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    const/16 v6, 0xb

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    move-object v4, p1

    .line 43
    invoke-static/range {v1 .. v6}, Lorg/swiftapps/swiftbackup/settings/i;->a(Lorg/swiftapps/swiftbackup/settings/i;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;I)Lorg/swiftapps/swiftbackup/settings/i;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-static {}, Lq;->j()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    move-object v2, p1

    .line 53
    const/4 v5, 0x0

    .line 54
    const/16 v6, 0xd

    .line 55
    .line 56
    move-object v3, v2

    .line 57
    const/4 v2, 0x0

    .line 58
    const/4 v4, 0x0

    .line 59
    invoke-static/range {v1 .. v6}, Lorg/swiftapps/swiftbackup/settings/i;->a(Lorg/swiftapps/swiftbackup/settings/i;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;I)Lorg/swiftapps/swiftbackup/settings/i;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    move-object v2, p1

    .line 65
    const/4 v5, 0x0

    .line 66
    const/16 v6, 0xe

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    const/4 v4, 0x0

    .line 70
    invoke-static/range {v1 .. v6}, Lorg/swiftapps/swiftbackup/settings/i;->a(Lorg/swiftapps/swiftbackup/settings/i;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;I)Lorg/swiftapps/swiftbackup/settings/i;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :goto_0
    invoke-virtual {p0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method
