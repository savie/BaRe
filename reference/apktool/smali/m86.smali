.class public final Lm86;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/card/MaterialCardView;Ljava/lang/Object;Landroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;I)V
    .locals 0

    .line 35
    iput p8, p0, Lm86;->a:I

    iput-object p1, p0, Lm86;->b:Ljava/lang/Object;

    iput-object p2, p0, Lm86;->c:Ljava/lang/Object;

    iput-object p3, p0, Lm86;->d:Ljava/lang/Object;

    iput-object p4, p0, Lm86;->e:Ljava/lang/Object;

    iput-object p5, p0, Lm86;->f:Ljava/lang/Object;

    iput-object p6, p0, Lm86;->k:Ljava/lang/Object;

    iput-object p7, p0, Lm86;->n:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lm86;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    const-class v0, Lm86;

    .line 8
    .line 9
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lm86;->b:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p1, p0, Lm86;->c:Ljava/lang/Object;

    .line 16
    .line 17
    sget-object p1, Lgv6;->a:Lnh4;

    .line 18
    .line 19
    iput-object p1, p0, Lm86;->d:Ljava/lang/Object;

    .line 20
    .line 21
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lm86;->e:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lm86;->f:Ljava/lang/Object;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lm86;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/locks/Condition;

    .line 4
    .line 5
    iget-object v1, p0, Lm86;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lm86;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ll15;

    .line 12
    .line 13
    iget-object v3, p0, Lm86;->e:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, Ljava/util/concurrent/locks/ReentrantLock;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-object v4, p0, Lm86;->n:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v4, Ljava/lang/Throwable;

    .line 23
    .line 24
    if-nez v4, :cond_4

    .line 25
    .line 26
    iget-object v4, p0, Lm86;->k:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v4, Lrt6;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 33
    .line 34
    .line 35
    return-object v4

    .line 36
    :cond_0
    :try_start_1
    const-string v4, "Awaiting << {} >>"

    .line 37
    .line 38
    invoke-interface {v2, v1, v4}, Ll15;->D(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-wide/16 v4, 0x0

    .line 42
    .line 43
    cmp-long v4, p1, v4

    .line 44
    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    :goto_0
    iget-object p1, p0, Lm86;->k:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p1, Lrt6;

    .line 50
    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    iget-object p1, p0, Lm86;->n:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p1, Ljava/lang/Throwable;

    .line 56
    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_2

    .line 65
    :catch_0
    move-exception p1

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 68
    .line 69
    .line 70
    move-result p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    if-nez p1, :cond_2

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 74
    .line 75
    .line 76
    const/4 p0, 0x0

    .line 77
    return-object p0

    .line 78
    :cond_2
    :try_start_2
    iget-object p1, p0, Lm86;->n:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p1, Ljava/lang/Throwable;

    .line 81
    .line 82
    if-nez p1, :cond_3

    .line 83
    .line 84
    iget-object p1, p0, Lm86;->k:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p1, Lrt6;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 89
    .line 90
    .line 91
    return-object p1

    .line 92
    :cond_3
    :try_start_3
    const-string p2, "<< {} >> woke to: {}"

    .line 93
    .line 94
    invoke-interface {v2, v1, p1, p2}, Ll15;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lm86;->n:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p1, Ljava/lang/Throwable;

    .line 100
    .line 101
    throw p1

    .line 102
    :cond_4
    throw v4
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    :goto_1
    :try_start_4
    iget-object p0, p0, Lm86;->d:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast p0, Lnh4;

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Lnh4;->r(Ljava/lang/Exception;)Ljava/lang/Throwable;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 112
    :goto_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 113
    .line 114
    .line 115
    throw p0
.end method

.method public getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget v0, p0, Lm86;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lm86;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/google/android/material/card/MaterialCardView;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    check-cast p0, Lcom/google/android/material/card/MaterialCardView;

    .line 12
    .line 13
    return-object p0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lm86;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lm86;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ljava/lang/String;

    .line 14
    .line 15
    return-object p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
