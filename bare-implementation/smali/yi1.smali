.class public final synthetic Lyi1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lyi1;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lyi1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lyi1;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lyi1;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lyi1;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lyi1;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lcn6;

    .line 11
    .line 12
    check-cast v1, Lvh7;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcn6;->b()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lw16;

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lw16;->a(Lvh7;)Ljava/security/cert/X509Certificate;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_0
    check-cast p0, Ldj1;

    .line 26
    .line 27
    check-cast v1, Ljavax/net/SocketFactory;

    .line 28
    .line 29
    sget-object v0, Lij1;->a:Lgv7;

    .line 30
    .line 31
    iget-object p0, p0, Ldj1;->a:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v2, 0x1

    .line 38
    if-le v0, v2, :cond_6

    .line 39
    .line 40
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Lcj1;

    .line 62
    .line 63
    iget-object v2, v2, Lcj1;->b:Lkj1;

    .line 64
    .line 65
    iget-object v2, v2, Lkj1;->c:Ldd1;

    .line 66
    .line 67
    sget-object v3, Ldd1;->WebDav:Ldd1;

    .line 68
    .line 69
    if-ne v2, v3, :cond_6

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    const/4 v0, 0x0

    .line 77
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_5

    .line 82
    .line 83
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lcj1;

    .line 88
    .line 89
    invoke-static {v0, v1}, Lij1;->c(Lcj1;Ljavax/net/SocketFactory;)Lbj1;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v2, v0, Lbj1;->b:Ljj1;

    .line 94
    .line 95
    iget-boolean v3, v2, Ljj1;->b:Z

    .line 96
    .line 97
    if-eqz v3, :cond_3

    .line 98
    .line 99
    invoke-static {v0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    goto :goto_2

    .line 104
    :cond_3
    iget-object v2, v2, Ljj1;->d:Ljava/lang/String;

    .line 105
    .line 106
    const-string v3, "connect-failed"

    .line 107
    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-nez v3, :cond_4

    .line 113
    .line 114
    const-string v3, "timeout"

    .line 115
    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_2

    .line 121
    .line 122
    :cond_4
    invoke-static {v0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    goto :goto_2

    .line 127
    :cond_5
    invoke-static {v0}, Lfl1;->B0(Ljava/lang/Object;)Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    goto :goto_2

    .line 132
    :cond_6
    invoke-static {p0}, Lel1;->k1(Ljava/util/List;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    check-cast p0, Lcj1;

    .line 137
    .line 138
    invoke-static {p0, v1}, Lij1;->c(Lcj1;Ljavax/net/SocketFactory;)Lbj1;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-static {p0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    :goto_2
    return-object p0

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
