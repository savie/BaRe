.class public final synthetic Ltj6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Luj6;

.field public final synthetic b:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final synthetic c:Leb2;

.field public final synthetic d:Lzc2;

.field public final synthetic e:Lwj6;


# direct methods
.method public synthetic constructor <init>(Luj6;Lcom/google/android/gms/tasks/TaskCompletionSource;Leb2;Lzc2;Lwj6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltj6;->a:Luj6;

    .line 5
    .line 6
    iput-object p2, p0, Ltj6;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 7
    .line 8
    iput-object p3, p0, Ltj6;->c:Leb2;

    .line 9
    .line 10
    iput-object p4, p0, Ltj6;->d:Lzc2;

    .line 11
    .line 12
    iput-object p5, p0, Ltj6;->e:Lwj6;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 10

    .line 1
    iget-object v0, p0, Ltj6;->a:Luj6;

    .line 2
    .line 3
    iget-object v0, v0, Luj6;->d:Lwj6;

    .line 4
    .line 5
    iget-object v1, p0, Ltj6;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_2

    .line 23
    .line 24
    iget-object p0, p0, Ltj6;->c:Leb2;

    .line 25
    .line 26
    iget-object v0, p0, Leb2;->a:Lsb4;

    .line 27
    .line 28
    iget-object v0, v0, Lsb4;->a:Lqn5;

    .line 29
    .line 30
    invoke-interface {v0}, Lqn5;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    sget-object v2, Lqv2;->e:Lqv2;

    .line 56
    .line 57
    invoke-static {p1, v2}, Lxh8;->a(Ljava/lang/Object;Lqn5;)Lqn5;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    iget-object p1, p0, Ltj6;->d:Lzc2;

    .line 62
    .line 63
    invoke-virtual {p1}, Lzc2;->f()Lqc6;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iget-object v6, v2, Lqc6;->a:Lgy5;

    .line 68
    .line 69
    const/4 v3, 0x1

    .line 70
    invoke-virtual {v0, v2, v3}, Lwj6;->h(Lqc6;Z)V

    .line 71
    .line 72
    .line 73
    iget-object v3, v2, Lqc6;->b:Loc6;

    .line 74
    .line 75
    invoke-virtual {v3}, Loc6;->d()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    iget-object v4, v0, Lwj6;->n:Lbv7;

    .line 80
    .line 81
    if-eqz v3, :cond_3

    .line 82
    .line 83
    invoke-virtual {v4, v6, v7}, Lbv7;->g(Lgy5;Lqn5;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {v4, v2}, Lbv7;->m(Lqc6;)Lhx7;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    iget-object v9, v4, Lbv7;->g:Leo5;

    .line 93
    .line 94
    new-instance v3, Lnu7;

    .line 95
    .line 96
    const/4 v8, 0x1

    .line 97
    invoke-direct/range {v3 .. v8}, Lnu7;-><init>(Lbv7;Lhx7;Lgy5;Ljava/lang/Object;I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v9, v3}, Leo5;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Ljava/util/List;

    .line 105
    .line 106
    :goto_0
    iget-object p0, p0, Ltj6;->e:Lwj6;

    .line 107
    .line 108
    invoke-virtual {p0, v3}, Lwj6;->j(Ljava/util/List;)V

    .line 109
    .line 110
    .line 111
    new-instance p0, Lzc2;

    .line 112
    .line 113
    iget-object v3, p1, Lzc2;->a:Lwj6;

    .line 114
    .line 115
    iget-object v4, p1, Lzc2;->b:Lgy5;

    .line 116
    .line 117
    invoke-direct {p0, v3, v4}, Lzc2;-><init>(Lwj6;Lgy5;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lzc2;->f()Lqc6;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iget-object p1, p1, Lqc6;->b:Loc6;

    .line 125
    .line 126
    iget-object p1, p1, Loc6;->e:Lnb4;

    .line 127
    .line 128
    new-instance v3, Lsb4;

    .line 129
    .line 130
    invoke-direct {v3, v7, p1}, Lsb4;-><init>(Lqn5;Lnb4;)V

    .line 131
    .line 132
    .line 133
    new-instance p1, Leb2;

    .line 134
    .line 135
    invoke-direct {p1, p0, v3}, Leb2;-><init>(Lzc2;Lsb4;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    const/4 p0, 0x0

    .line 142
    invoke-virtual {v0, v2, p0}, Lwj6;->h(Lqc6;Z)V

    .line 143
    .line 144
    .line 145
    return-void
.end method
