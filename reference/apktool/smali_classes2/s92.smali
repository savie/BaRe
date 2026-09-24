.class public final synthetic Ls92;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lx92;


# direct methods
.method public synthetic constructor <init>(Lx92;I)V
    .locals 0

    .line 1
    iput p2, p0, Ls92;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ls92;->b:Lx92;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Ls92;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object p0, p0, Ls92;->b:Lx92;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_3

    .line 20
    .line 21
    invoke-virtual {p0}, Lx92;->l()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string v0, "ChangeLogHelper"

    .line 33
    .line 34
    const-string v2, "Showing changelog"

    .line 35
    .line 36
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    new-instance v0, Lb41;

    .line 40
    .line 41
    invoke-direct {v0, p0, p1}, Lb41;-><init>(Lsa1;Ljava/util/ArrayList;)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    invoke-virtual {v0, p0, p1, p1}, Lol1;->F(Lk28;ZZ)V

    .line 46
    .line 47
    .line 48
    iget-object p0, v0, Lol1;->b:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p0, Lho;

    .line 51
    .line 52
    if-eqz p0, :cond_1

    .line 53
    .line 54
    new-instance p1, La41;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_0
    sget-object p0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 63
    .line 64
    if-eqz p0, :cond_2

    .line 65
    .line 66
    const-string p1, "KEY_LAST_SHOWN_VERSION"

    .line 67
    .line 68
    const-string v0, "5.1.0"

    .line 69
    .line 70
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    const-string p0, "editor"

    .line 79
    .line 80
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const/4 p0, 0x0

    .line 84
    throw p0

    .line 85
    :cond_3
    :goto_1
    return-object v1

    .line 86
    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    .line 87
    .line 88
    invoke-virtual {p0}, Lx92;->m()Lfa2;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iget-object p1, p1, Lfa2;->f:Lex6;

    .line 93
    .line 94
    invoke-virtual {p0}, Lx92;->m()Lfa2;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    iget-object p0, p0, Lfa2;->f:Lex6;

    .line 99
    .line 100
    invoke-virtual {p0}, Lzy4;->d()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p1, p0}, Lex6;->l(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    return-object v1

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
