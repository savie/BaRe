.class public final synthetic Ls52;
.super Lcu3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput p7, p0, Ls52;->a:I

    .line 2
    .line 3
    invoke-direct/range {p0 .. p6}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Ls52;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lzx5;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lorg/swiftapps/swiftbackup/password/PasswordStrategyActivity;

    .line 16
    .line 17
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/password/PasswordStrategyActivity;->M:Lgv7;

    .line 18
    .line 19
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lvx5;

    .line 24
    .line 25
    sget-object v2, Lux5;->STANDARD_PASSWORD:Lux5;

    .line 26
    .line 27
    iget-object p1, p1, Lzx5;->a:Lux5;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x1

    .line 31
    if-ne p1, v2, :cond_0

    .line 32
    .line 33
    move v5, v4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v5, v3

    .line 36
    :goto_0
    new-instance v6, Lhl0;

    .line 37
    .line 38
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/password/PasswordStrategyActivity;->N()Lby5;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    const/4 v12, 0x0

    .line 43
    const/4 v13, 0x5

    .line 44
    const/4 v7, 0x1

    .line 45
    const-class v9, Lby5;

    .line 46
    .line 47
    const-string v10, "onModeClicked"

    .line 48
    .line 49
    const-string v11, "onModeClicked(Lorg/swiftapps/swiftbackup/password/PasswordStrategy;)V"

    .line 50
    .line 51
    invoke-direct/range {v6 .. v13}, Lhl0;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 52
    .line 53
    .line 54
    const/4 v7, 0x0

    .line 55
    invoke-virtual {v0, v2, v5, v6, v7}, Lvx5;->a(Lux5;ZLmt3;Lox;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/password/PasswordStrategyActivity;->N:Lgv7;

    .line 59
    .line 60
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lvx5;

    .line 65
    .line 66
    sget-object v2, Lux5;->USER_PASSWORD:Lux5;

    .line 67
    .line 68
    if-ne p1, v2, :cond_1

    .line 69
    .line 70
    move v3, v4

    .line 71
    :cond_1
    new-instance v4, Lk00;

    .line 72
    .line 73
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/password/PasswordStrategyActivity;->N()Lby5;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    const/4 v10, 0x0

    .line 78
    const/4 v11, 0x4

    .line 79
    const/4 v5, 0x1

    .line 80
    const-class v7, Lby5;

    .line 81
    .line 82
    const-string v8, "onModeClicked"

    .line 83
    .line 84
    const-string v9, "onModeClicked(Lorg/swiftapps/swiftbackup/password/PasswordStrategy;)V"

    .line 85
    .line 86
    invoke-direct/range {v4 .. v11}, Lk00;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 87
    .line 88
    .line 89
    new-instance p1, Lox;

    .line 90
    .line 91
    const/16 v5, 0x15

    .line 92
    .line 93
    invoke-direct {p1, p0, v5}, Lox;-><init>(Ljava/lang/Object;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v2, v3, v4, p1}, Lvx5;->a(Lux5;ZLmt3;Lox;)V

    .line 97
    .line 98
    .line 99
    return-object v1

    .line 100
    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast p0, Lorg/swiftapps/swiftbackup/intro/d;

    .line 109
    .line 110
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/intro/d;->k(Z)V

    .line 111
    .line 112
    .line 113
    return-object v1

    .line 114
    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 123
    .line 124
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 125
    .line 126
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->u0(Z)V

    .line 127
    .line 128
    .line 129
    return-object v1

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
