.class public final synthetic Lqf2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ldv7;


# instance fields
.field public final synthetic a:Lsf2;

.field public final synthetic b:Loe0;

.field public final synthetic c:Lkd0;


# direct methods
.method public synthetic constructor <init>(Lsf2;Loe0;Lkd0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqf2;->a:Lsf2;

    .line 5
    .line 6
    iput-object p2, p0, Lqf2;->b:Loe0;

    .line 7
    .line 8
    iput-object p3, p0, Lqf2;->c:Lkd0;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final g()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lqf2;->a:Lsf2;

    .line 2
    .line 3
    iget-object v1, v0, Lsf2;->d:Lmw6;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lqf2;->b:Loe0;

    .line 9
    .line 10
    iget-object v3, v2, Loe0;->c:Ld66;

    .line 11
    .line 12
    iget-object p0, p0, Lqf2;->c:Lkd0;

    .line 13
    .line 14
    iget-object v4, p0, Lkd0;->a:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v5, v2, Loe0;->a:Ljava/lang/String;

    .line 17
    .line 18
    const-string v6, "TRuntime."

    .line 19
    .line 20
    const-string v7, "SQLiteEventStore"

    .line 21
    .line 22
    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    const/4 v7, 0x3

    .line 27
    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    if-eqz v7, :cond_0

    .line 32
    .line 33
    new-instance v7, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v8, "Storing event with priority="

    .line 36
    .line 37
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v3, ", name="

    .line 44
    .line 45
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v3, " for destination "

    .line 52
    .line 53
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :cond_0
    new-instance v3, Lhw6;

    .line 67
    .line 68
    invoke-direct {v3, v1, p0, v2}, Lhw6;-><init>(Lmw6;Lkd0;Loe0;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v3}, Lmw6;->g(Lkw6;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Ljava/lang/Long;

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    iget-object p0, v0, Lsf2;->a:Le41;

    .line 81
    .line 82
    const/4 v0, 0x1

    .line 83
    const/4 v1, 0x0

    .line 84
    invoke-virtual {p0, v2, v0, v1}, Le41;->d(Loe0;IZ)V

    .line 85
    .line 86
    .line 87
    const/4 p0, 0x0

    .line 88
    return-object p0
.end method
