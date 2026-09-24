.class public final Ltb5;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Lgv7;

.field public final f:Lgv7;

.field public g:Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;

.field public final h:Lex6;

.field public final i:Lex6;

.field public final j:Lix6;

.field public final k:Lix6;

.field public final l:Lex6;

.field public final m:Lix6;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljx;

    .line 5
    .line 6
    const/16 v1, 0xd

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljx;-><init>(I)V

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
    iput-object v1, p0, Ltb5;->e:Lgv7;

    .line 17
    .line 18
    new-instance v0, Lzj;

    .line 19
    .line 20
    const/16 v1, 0xa

    .line 21
    .line 22
    invoke-direct {v0, v1}, Lzj;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lgv7;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Ltb5;->f:Lgv7;

    .line 31
    .line 32
    new-instance v0, Lex6;

    .line 33
    .line 34
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Ltb5;->h:Lex6;

    .line 38
    .line 39
    new-instance v0, Lex6;

    .line 40
    .line 41
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Ltb5;->i:Lex6;

    .line 45
    .line 46
    new-instance v0, Lix6;

    .line 47
    .line 48
    invoke-direct {v0}, Lix6;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Ltb5;->j:Lix6;

    .line 52
    .line 53
    new-instance v0, Lix6;

    .line 54
    .line 55
    invoke-direct {v0}, Lix6;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Ltb5;->k:Lix6;

    .line 59
    .line 60
    new-instance v0, Lex6;

    .line 61
    .line 62
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Ltb5;->l:Lex6;

    .line 66
    .line 67
    new-instance v0, Lix6;

    .line 68
    .line 69
    invoke-direct {v0}, Lix6;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Ltb5;->m:Lix6;

    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ltb5;->g:Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lzn4;->a:Lzn4;

    .line 6
    .line 7
    new-instance v1, Lsb5;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p0, v0, p1, v2}, Lsb5;-><init>(Ltb5;Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;Ljava/lang/String;Ljv1;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p0, p0, La55;->b:Ljava/lang/String;

    .line 18
    .line 19
    const-string p1, ".testConnection: Null credentials"

    .line 20
    .line 21
    invoke-static {p0, p1}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final k(Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltb5;->g:Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;

    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;->getEmail()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    const v4, 0x7f13044f

    .line 20
    .line 21
    .line 22
    iget-object v5, p0, Ltb5;->h:Lex6;

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 28
    .line 29
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v5, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    move v0, v6

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    iget-object v0, p0, La55;->b:Ljava/lang/String;

    .line 55
    .line 56
    const-string v7, "Invalid email: "

    .line 57
    .line 58
    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move v0, v6

    .line 66
    :cond_1
    if-eqz v2, :cond_2

    .line 67
    .line 68
    move-object v1, v3

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 71
    .line 72
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const v2, 0x7f1302d3

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    :goto_0
    invoke-virtual {v5, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :goto_1
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;->getPassword()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-lez p1, :cond_3

    .line 95
    .line 96
    const/4 p1, 0x1

    .line 97
    goto :goto_2

    .line 98
    :cond_3
    move p1, v6

    .line 99
    :goto_2
    if-nez p1, :cond_4

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_4
    move v6, v0

    .line 103
    :goto_3
    if-eqz p1, :cond_5

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_5
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 107
    .line 108
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    :goto_4
    iget-object p1, p0, Ltb5;->i:Lex6;

    .line 117
    .line 118
    invoke-virtual {p1, v3}, Lex6;->k(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iget-object p0, p0, Ltb5;->l:Lex6;

    .line 122
    .line 123
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method
