.class public abstract Luc9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lke9;


# static fields
.field public static final d:Ljava/lang/Object;

.field public static final e:Lie9;

.field public static final f:Z

.field public static final k:Lho6;


# instance fields
.field public volatile a:Ljava/lang/Object;

.field public volatile b:Lnc9;

.field public volatile c:Lsc9;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Luc9;->d:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Lie9;

    .line 9
    .line 10
    const-class v1, Lue9;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lie9;-><init>(Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Luc9;->e:Lie9;

    .line 16
    .line 17
    :try_start_0
    const-string v0, "guava.concurrent.generate_cancellation_cause"

    .line 18
    .line 19
    const-string v1, "false"

    .line 20
    .line 21
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    sput-boolean v0, Luc9;->f:Z

    .line 32
    .line 33
    const-string v0, "java.runtime.name"

    .line 34
    .line 35
    const-string v1, ""

    .line 36
    .line 37
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    const-string v2, "Android"

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_0
    :try_start_1
    new-instance v0, Lpc9;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    .line 56
    .line 57
    .line 58
    :goto_1
    move-object v6, v1

    .line 59
    move-object v12, v6

    .line 60
    goto :goto_8

    .line 61
    :catch_1
    new-instance v0, Lqc9;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    :goto_2
    :try_start_2
    new-instance v0, Lrc9;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catch_2
    move-exception v0

    .line 74
    :goto_3
    move-object v2, v0

    .line 75
    goto :goto_4

    .line 76
    :catch_3
    move-exception v0

    .line 77
    goto :goto_3

    .line 78
    :goto_4
    :try_start_3
    new-instance v0, Lpc9;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_4

    .line 81
    .line 82
    .line 83
    :goto_5
    move-object v6, v1

    .line 84
    move-object v12, v2

    .line 85
    goto :goto_8

    .line 86
    :catch_4
    move-exception v0

    .line 87
    :goto_6
    move-object v1, v0

    .line 88
    goto :goto_7

    .line 89
    :catch_5
    move-exception v0

    .line 90
    goto :goto_6

    .line 91
    :goto_7
    new-instance v0, Lqc9;

    .line 92
    .line 93
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 94
    .line 95
    .line 96
    goto :goto_5

    .line 97
    :goto_8
    sput-object v0, Luc9;->k:Lho6;

    .line 98
    .line 99
    if-eqz v6, :cond_2

    .line 100
    .line 101
    sget-object v0, Luc9;->e:Lie9;

    .line 102
    .line 103
    invoke-virtual {v0}, Lie9;->a()Ljava/util/logging/Logger;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 108
    .line 109
    const-string v10, "<clinit>"

    .line 110
    .line 111
    const-string v11, "UnsafeAtomicHelper is broken!"

    .line 112
    .line 113
    const-string v9, "com.google.common.util.concurrent.AbstractFutureState"

    .line 114
    .line 115
    move-object v8, v2

    .line 116
    invoke-virtual/range {v7 .. v12}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Lie9;->a()Ljava/util/logging/Logger;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    const-string v4, "<clinit>"

    .line 124
    .line 125
    const-string v5, "AtomicReferenceFieldUpdaterAtomicHelper is broken!"

    .line 126
    .line 127
    const-string v3, "com.google.common.util.concurrent.AbstractFutureState"

    .line 128
    .line 129
    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    .line 131
    .line 132
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lsc9;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lsc9;->a:Ljava/lang/Thread;

    .line 3
    .line 4
    :goto_0
    iget-object p1, p0, Luc9;->c:Lsc9;

    .line 5
    .line 6
    sget-object v1, Lsc9;->c:Lsc9;

    .line 7
    .line 8
    if-eq p1, v1, :cond_3

    .line 9
    .line 10
    move-object v1, v0

    .line 11
    :goto_1
    if-eqz p1, :cond_3

    .line 12
    .line 13
    iget-object v2, p1, Lsc9;->b:Lsc9;

    .line 14
    .line 15
    iget-object v3, p1, Lsc9;->a:Ljava/lang/Thread;

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    move-object v1, p1

    .line 20
    goto :goto_2

    .line 21
    :cond_0
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iput-object v2, v1, Lsc9;->b:Lsc9;

    .line 24
    .line 25
    iget-object p1, v1, Lsc9;->a:Ljava/lang/Thread;

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sget-object v3, Luc9;->k:Lho6;

    .line 31
    .line 32
    invoke-virtual {v3, p0, p1, v2}, Lho6;->i0(Luc9;Lsc9;Lsc9;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    :goto_2
    move-object p1, v2

    .line 40
    goto :goto_1

    .line 41
    :cond_3
    return-void
.end method

.method public abstract b()Ljava/lang/Throwable;
.end method
