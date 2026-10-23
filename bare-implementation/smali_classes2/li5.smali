.class public final synthetic Lli5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Loi5;

.field public final synthetic b:Lni5;

.field public final synthetic c:Lmt3;

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic k:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public synthetic constructor <init>(Loi5;Lni5;Lmt3;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lli5;->a:Loi5;

    .line 5
    .line 6
    iput-object p2, p0, Lli5;->b:Lni5;

    .line 7
    .line 8
    iput-object p3, p0, Lli5;->c:Lmt3;

    .line 9
    .line 10
    iput-object p4, p0, Lli5;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    iput-object p5, p0, Lli5;->e:Ljava/util/List;

    .line 13
    .line 14
    iput-object p6, p0, Lli5;->f:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lli5;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v1, p0, Lli5;->a:Loi5;

    .line 2
    .line 3
    iget-object v2, p0, Lli5;->b:Lni5;

    .line 4
    .line 5
    iget-object v0, p0, Lli5;->c:Lmt3;

    .line 6
    .line 7
    iget-object v3, p0, Lli5;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    iget-object v4, p0, Lli5;->e:Ljava/util/List;

    .line 10
    .line 11
    iget-object v5, p0, Lli5;->f:Ljava/lang/String;

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {v1, v2, v0}, Loi5;->a(Lni5;Lmt3;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v6, 0x1

    .line 25
    if-le v3, v6, :cond_0

    .line 26
    .line 27
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ne v0, v3, :cond_0

    .line 32
    .line 33
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 34
    .line 35
    iget-object v7, v1, Loi5;->k:Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, " / "

    .line 50
    .line 51
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, " "

    .line 58
    .line 59
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v0, " downloaded"

    .line 66
    .line 67
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    const/4 v10, 0x4

    .line 75
    const/4 v11, 0x0

    .line 76
    const/4 v9, 0x0

    .line 77
    invoke-static/range {v6 .. v11}, Lvr6;->d$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    goto :goto_1

    .line 83
    :cond_0
    :goto_0
    sget-object p0, Lbe8;->a:Lbe8;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    return-object p0

    .line 86
    :goto_1
    iget-object v1, v1, Loi5;->k:Ljava/lang/String;

    .line 87
    .line 88
    iget v2, v2, Lni5;->a:I

    .line 89
    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v4, "Error while downloading Chunk #"

    .line 93
    .line 94
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    .line 106
    .line 107
    iget-object p0, p0, Lli5;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 108
    .line 109
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    return-object p0
.end method
