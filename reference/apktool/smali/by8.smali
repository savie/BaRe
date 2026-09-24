.class public Lby8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lfk8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lfk8;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lfk8;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lby8;->a:Lfk8;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Lwc9;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lwc9;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lvq3;

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    invoke-direct {v1, v2}, Lvq3;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lcz4;

    .line 14
    .line 15
    const/16 v3, 0xb

    .line 16
    .line 17
    invoke-direct {v2, v3}, Lcz4;-><init>(I)V

    .line 18
    .line 19
    .line 20
    new-instance v3, Lx44;

    .line 21
    .line 22
    invoke-direct {v3, v2, v1}, Lx44;-><init>(Lcz4;Lvq3;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lnh;

    .line 26
    .line 27
    const/16 v2, 0xf

    .line 28
    .line 29
    invoke-direct {v1, v2}, Lnh;-><init>(I)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Ljava/lang/ThreadLocal;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/ThreadLocal;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v2, v1, Lnh;->b:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {p0}, Lrn5;->a(Ljava/io/Reader;)Llc4;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v1}, Lnh;->l()Li87;

    .line 44
    .line 45
    .line 46
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :try_start_1
    new-instance v4, Lai5;

    .line 48
    .line 49
    invoke-direct {v4, v0, v3, v2}, Lai5;-><init>(Lwc9;Lx44;Li87;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Lai5;->n()Lcz4;

    .line 53
    .line 54
    .line 55
    new-instance v0, Lln5;

    .line 56
    .line 57
    const/4 v2, 0x4

    .line 58
    invoke-direct {v0, p1, v2}, Lln5;-><init>(Ljava/lang/Object;I)V

    .line 59
    .line 60
    .line 61
    new-instance p1, Lyo1;

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    invoke-direct {p1, v4, v0, v2}, Lyo1;-><init>(Lai5;Lvb8;Ljava/lang/Class;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p0}, Lyo1;->b(Lmc4;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    if-eqz p0, :cond_0

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v4, p1}, Lai5;->m(Ljava/lang/Class;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .line 79
    .line 80
    move-object v2, p0

    .line 81
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Lnh;->d()V

    .line 82
    .line 83
    .line 84
    return-object v2

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    invoke-virtual {v1}, Lnh;->d()V

    .line 87
    .line 88
    .line 89
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 90
    :catch_0
    move-exception p0

    .line 91
    new-instance p1, Lcy8;

    .line 92
    .line 93
    invoke-direct {p1, p0}, Lcy8;-><init>(Ljava/lang/Exception;)V

    .line 94
    .line 95
    .line 96
    throw p1
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Lwc9;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lwc9;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lvq3;

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    invoke-direct {v1, v2}, Lvq3;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lcz4;

    .line 14
    .line 15
    const/16 v3, 0xb

    .line 16
    .line 17
    invoke-direct {v2, v3}, Lcz4;-><init>(I)V

    .line 18
    .line 19
    .line 20
    new-instance v3, Lx44;

    .line 21
    .line 22
    invoke-direct {v3, v2, v1}, Lx44;-><init>(Lcz4;Lvq3;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lnh;

    .line 26
    .line 27
    const/16 v2, 0xf

    .line 28
    .line 29
    invoke-direct {v1, v2}, Lnh;-><init>(I)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Ljava/lang/ThreadLocal;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/ThreadLocal;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v2, v1, Lnh;->b:Ljava/lang/Object;

    .line 38
    .line 39
    new-instance v2, Ljava/io/StringReader;

    .line 40
    .line 41
    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, Lrn5;->a(Ljava/io/Reader;)Llc4;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v1}, Lnh;->l()Li87;

    .line 49
    .line 50
    .line 51
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :try_start_1
    new-instance v4, Lai5;

    .line 53
    .line 54
    invoke-direct {v4, v0, v3, v2}, Lai5;-><init>(Lwc9;Lx44;Li87;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Lai5;->n()Lcz4;

    .line 58
    .line 59
    .line 60
    new-instance v0, Lln5;

    .line 61
    .line 62
    const/4 v2, 0x4

    .line 63
    invoke-direct {v0, p0, v2}, Lln5;-><init>(Ljava/lang/Object;I)V

    .line 64
    .line 65
    .line 66
    new-instance p0, Lyo1;

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0, v4, v0, v2}, Lyo1;-><init>(Lai5;Lvb8;Ljava/lang/Class;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Lyo1;->b(Lmc4;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    if-eqz p0, :cond_0

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v4, p1}, Lai5;->m(Ljava/lang/Class;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    .line 85
    move-object v2, p0

    .line 86
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Lnh;->d()V

    .line 87
    .line 88
    .line 89
    return-object v2

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    invoke-virtual {v1}, Lnh;->d()V

    .line 92
    .line 93
    .line 94
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 95
    :catch_0
    move-exception p0

    .line 96
    new-instance p1, Lcy8;

    .line 97
    .line 98
    invoke-direct {p1, p0}, Lcy8;-><init>(Ljava/lang/Exception;)V

    .line 99
    .line 100
    .line 101
    throw p1
.end method

.method public static c(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Lwc9;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lwc9;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lvq3;

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    invoke-direct {v1, v2}, Lvq3;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lcz4;

    .line 14
    .line 15
    const/16 v3, 0xb

    .line 16
    .line 17
    invoke-direct {v2, v3}, Lcz4;-><init>(I)V

    .line 18
    .line 19
    .line 20
    new-instance v3, Lx44;

    .line 21
    .line 22
    invoke-direct {v3, v2, v1}, Lx44;-><init>(Lcz4;Lvq3;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lnh;

    .line 26
    .line 27
    const/16 v2, 0xf

    .line 28
    .line 29
    invoke-direct {v1, v2}, Lnh;-><init>(I)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Ljava/lang/ThreadLocal;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/ThreadLocal;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v2, v1, Lnh;->b:Ljava/lang/Object;

    .line 38
    .line 39
    new-instance v2, Ljava/io/StringReader;

    .line 40
    .line 41
    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, Lrn5;->a(Ljava/io/Reader;)Llc4;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v1}, Lnh;->l()Li87;

    .line 49
    .line 50
    .line 51
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :try_start_1
    new-instance v4, Lai5;

    .line 53
    .line 54
    invoke-direct {v4, v0, v3, v2}, Lai5;-><init>(Lwc9;Lx44;Li87;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Lai5;->n()Lcz4;

    .line 58
    .line 59
    .line 60
    new-instance v0, Lln5;

    .line 61
    .line 62
    const/4 v2, 0x4

    .line 63
    invoke-direct {v0, p0, v2}, Lln5;-><init>(Ljava/lang/Object;I)V

    .line 64
    .line 65
    .line 66
    new-instance v2, Lyo1;

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    invoke-direct {v2, v4, v0, v3}, Lyo1;-><init>(Lai5;Lvb8;Ljava/lang/Class;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, p0}, Lai5;->m(Ljava/lang/Class;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, p1}, Lyo1;->d(Lmc4;)Z

    .line 76
    .line 77
    .line 78
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :try_start_2
    invoke-virtual {v1}, Lnh;->d()V

    .line 80
    .line 81
    .line 82
    return p0

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    invoke-virtual {v1}, Lnh;->d()V

    .line 85
    .line 86
    .line 87
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 88
    :catch_0
    move-exception p0

    .line 89
    new-instance p1, Lcy8;

    .line 90
    .line 91
    invoke-direct {p1, p0}, Lcy8;-><init>(Ljava/lang/Exception;)V

    .line 92
    .line 93
    .line 94
    throw p1
.end method
