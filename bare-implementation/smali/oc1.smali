.class public final synthetic Loc1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Loc1;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget p0, p0, Loc1;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Integer;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    check-cast p2, Lmx1;

    .line 13
    .line 14
    add-int/lit8 p0, p0, 0x1

    .line 15
    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_0
    check-cast p1, Landroid/os/CancellationSignal;

    .line 22
    .line 23
    check-cast p2, Lbt3;

    .line 24
    .line 25
    invoke-static {p1, p2}, Landroidx/credentials/playservices/controllers/identityauth/createpassword/CredentialProviderCreatePasswordController;->$r8$lambda$DM2uT7CPAdg4UQqSfNuODAhystY(Landroid/os/CancellationSignal;Lbt3;)Lbe8;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :pswitch_1
    check-cast p1, Landroid/os/CancellationSignal;

    .line 31
    .line 32
    check-cast p2, Lbt3;

    .line 33
    .line 34
    invoke-static {p1, p2}, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;->$r8$lambda$mA34QPzQkqAxxlL7Ec_C-PwO0jA(Landroid/os/CancellationSignal;Lbt3;)Lbe8;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :pswitch_2
    check-cast p1, Lox1;

    .line 40
    .line 41
    check-cast p2, Lmx1;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-interface {p2}, Lmx1;->getKey()Lnx1;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-interface {p1, p0}, Lox1;->minusKey(Lnx1;)Lox1;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    sget-object p1, Llv2;->a:Llv2;

    .line 58
    .line 59
    if-ne p0, p1, :cond_0

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_0
    sget-object v0, Llv1;->b:Llv1;

    .line 63
    .line 64
    invoke-interface {p0, v0}, Lox1;->get(Lnx1;)Lmx1;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lrx1;

    .line 69
    .line 70
    if-nez v1, :cond_1

    .line 71
    .line 72
    new-instance p1, Lbm1;

    .line 73
    .line 74
    invoke-direct {p1, p2, p0}, Lbm1;-><init>(Lmx1;Lox1;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    move-object p2, p1

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    invoke-interface {p0, v0}, Lox1;->minusKey(Lnx1;)Lox1;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    if-ne p0, p1, :cond_2

    .line 84
    .line 85
    new-instance p0, Lbm1;

    .line 86
    .line 87
    invoke-direct {p0, v1, p2}, Lbm1;-><init>(Lmx1;Lox1;)V

    .line 88
    .line 89
    .line 90
    move-object p2, p0

    .line 91
    goto :goto_1

    .line 92
    :cond_2
    new-instance p1, Lbm1;

    .line 93
    .line 94
    new-instance v0, Lbm1;

    .line 95
    .line 96
    invoke-direct {v0, p2, p0}, Lbm1;-><init>(Lmx1;Lox1;)V

    .line 97
    .line 98
    .line 99
    invoke-direct {p1, v1, v0}, Lbm1;-><init>(Lmx1;Lox1;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :goto_1
    return-object p2

    .line 104
    :pswitch_3
    check-cast p1, Lil0;

    .line 105
    .line 106
    check-cast p2, Ljava/lang/Integer;

    .line 107
    .line 108
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    invoke-static {p1, p0}, Ldd1;->y(Lil0;I)Lbe8;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    return-object p0

    .line 117
    :pswitch_4
    check-cast p1, Lil0;

    .line 118
    .line 119
    check-cast p2, Ljava/lang/Integer;

    .line 120
    .line 121
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    invoke-static {p1, p0}, Ldd1;->b(Lil0;I)Lbe8;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    return-object p0

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
