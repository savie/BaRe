.class public final Lqe3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqe3;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lqe3;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lre3;->a:Lzc2;

    .line 2
    .line 3
    iget-object v0, p0, Lqe3;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Lre3;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    sget-object v3, Lre3;->c:Lgv7;

    .line 14
    .line 15
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Ljava/text/SimpleDateFormat;

    .line 20
    .line 21
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v3, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const/4 v4, 0x0

    .line 30
    iget-object p0, p0, Lqe3;->b:Ljava/lang/String;

    .line 31
    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-lez v5, :cond_0

    .line 39
    .line 40
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-nez v5, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-object p0, v4

    .line 48
    :goto_0
    if-eqz p0, :cond_1

    .line 49
    .line 50
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    filled-new-array {v3, v1, p0}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {p0}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const/4 v5, 0x0

    .line 63
    const/16 v6, 0x3f

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    const/4 v3, 0x0

    .line 67
    const/4 v4, 0x0

    .line 68
    invoke-static/range {v1 .. v6}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    :cond_1
    invoke-static {}, Lig3;->b()Lig3;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0}, Lig3;->a()V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lig3;->c:Lwj6;

    .line 80
    .line 81
    sget-object v1, Lgy5;->d:Lgy5;

    .line 82
    .line 83
    sget-object v2, Loc6;->f:Loc6;

    .line 84
    .line 85
    sget-object v2, Ld45;->b:Ld45;

    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    if-eqz v2, :cond_3

    .line 95
    .line 96
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getUid()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    const-string v3, "ch/"

    .line 101
    .line 102
    const-string v5, "/"

    .line 103
    .line 104
    invoke-static {v3, v2, v5, v0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v1}, Lgy5;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_2

    .line 113
    .line 114
    invoke-static {v0}, Lui8;->b(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    invoke-static {v0}, Lui8;->a(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :goto_1
    new-instance v2, Lgy5;

    .line 122
    .line 123
    invoke-direct {v2, v0}, Lgy5;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v2}, Lgy5;->e(Lgy5;)Lgy5;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    new-instance v1, Lzc2;

    .line 131
    .line 132
    invoke-direct {v1, p0, v0}, Lzc2;-><init>(Lwj6;Lgy5;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v4}, Lzc2;->i(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    return-object p0

    .line 140
    :cond_3
    const/4 p0, 0x0

    .line 141
    const-string v0, "System.exit returned normally, while it was supposed to halt JVM."

    .line 142
    .line 143
    invoke-static {p0, v0}, Ldj7;->f(ILjava/lang/String;)Ljava/lang/RuntimeException;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    throw p0
.end method
