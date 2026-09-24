.class public final synthetic Lp02;
.super Lcu3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput p7, p0, Lp02;->a:I

    .line 2
    .line 3
    invoke-direct/range {p0 .. p6}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lp02;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Leo6;

    .line 9
    .line 10
    iget-object v0, p0, Leo6;->a:Ldv1;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    iget-object v2, v0, Ldv1;->a:Lox1;

    .line 16
    .line 17
    sget-object v3, Lnh4;->b:Lnh4;

    .line 18
    .line 19
    invoke-interface {v2, v3}, Lox1;->get(Lnx1;)Lmx1;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Loh4;

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-interface {v2, v1}, Loh4;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Leo6;->d()Lkg4;

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Leo6;->d:Lmi2;

    .line 34
    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lmi2;->f:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Lcs1;

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lmi2;->g:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p0, Lns7;

    .line 47
    .line 48
    if-eqz p0, :cond_0

    .line 49
    .line 50
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 51
    .line 52
    .line 53
    :cond_0
    sget-object v1, Lbe8;->a:Lbe8;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const-string p0, "connectionManager"

    .line 57
    .line 58
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v1

    .line 62
    :cond_2
    const-string p0, "Scope cannot be cancelled because it does not have a job: "

    .line 63
    .line 64
    invoke-static {v0, p0}, Ll0;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-object v1

    .line 68
    :cond_3
    const-string p0, "coroutineScope"

    .line 69
    .line 70
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v1

    .line 74
    :pswitch_0
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p0, Lr02;

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    const-string v0, "Firebase Background Thread #"

    .line 93
    .line 94
    const/4 v1, 0x0

    .line 95
    invoke-static {p0, v0, v1}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
