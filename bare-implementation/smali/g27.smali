.class public final Lg27;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lh07;


# instance fields
.field public final a:Lh07;

.field public final b:J

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Lh07;J)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lg27;->a:Lh07;

    .line 8
    .line 9
    iput-wide p2, p0, Lg27;->b:J

    .line 10
    .line 11
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lg27;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Lf07;)V
    .locals 11

    .line 1
    iget-object v0, p1, Lf07;->e:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p1, Lf07;->b:Lk07;

    .line 4
    .line 5
    iget-object v2, p1, Lf07;->a:Li07;

    .line 6
    .line 7
    iget-object v3, p1, Lf07;->d:Lm07;

    .line 8
    .line 9
    sget-object v4, Lm07;->Progress:Lm07;

    .line 10
    .line 11
    iget-object v5, p0, Lg27;->a:Lh07;

    .line 12
    .line 13
    iget-object v6, p0, Lg27;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    if-eq v3, v4, :cond_1

    .line 16
    .line 17
    sget-object p0, Lm07;->Completed:Lm07;

    .line 18
    .line 19
    if-ne v3, p0, :cond_0

    .line 20
    .line 21
    new-instance p0, Le86;

    .line 22
    .line 23
    invoke-direct {p0, v2, v1, v0}, Le86;-><init>(Li07;Lk07;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v6, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-interface {v5, p1}, Lh07;->a(Lf07;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    new-instance v7, Le86;

    .line 38
    .line 39
    invoke-direct {v7, v2, v1, v0}, Le86;-><init>(Li07;Lk07;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    check-cast v7, Ljava/lang/Long;

    .line 47
    .line 48
    if-eqz v7, :cond_3

    .line 49
    .line 50
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 51
    .line 52
    .line 53
    move-result-wide v7

    .line 54
    sub-long v7, v3, v7

    .line 55
    .line 56
    iget-wide v9, p0, Lg27;->b:J

    .line 57
    .line 58
    cmp-long p0, v7, v9

    .line 59
    .line 60
    if-ltz p0, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    return-void

    .line 64
    :cond_3
    :goto_0
    new-instance p0, Le86;

    .line 65
    .line 66
    invoke-direct {p0, v2, v1, v0}, Le86;-><init>(Li07;Lk07;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v6, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    invoke-interface {v5, p1}, Lh07;->a(Lf07;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method
