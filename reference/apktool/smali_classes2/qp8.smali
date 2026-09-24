.class public final synthetic Lqp8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lil0;


# direct methods
.method public synthetic constructor <init>(Lil0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lqp8;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lqp8;->b:Lil0;

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
    .locals 5

    .line 1
    iget v0, p0, Lqp8;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lqp8;->b:Lil0;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity;

    .line 12
    .line 13
    check-cast p1, Ljava/lang/String;

    .line 14
    .line 15
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity;->N:I

    .line 16
    .line 17
    new-instance v0, Lhv1;

    .line 18
    .line 19
    const v3, 0x7f140160

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0, v3}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    new-instance v4, Ls35;

    .line 26
    .line 27
    invoke-direct {v4, p0, v3, v0, v2}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, v4, Lva;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lra;

    .line 33
    .line 34
    const v3, 0x7f13007f

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iput-object v3, v0, Lra;->d:Ljava/lang/CharSequence;

    .line 42
    .line 43
    iput-object p1, v0, Lra;->f:Ljava/lang/CharSequence;

    .line 44
    .line 45
    const p1, 0x7f1303e6

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, p1, v2}, Lv75;->r(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    new-instance p1, Lj08;

    .line 52
    .line 53
    invoke-direct {p1, p0}, Lj08;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity;)V

    .line 54
    .line 55
    .line 56
    iput-object p1, v0, Lra;->n:Landroid/content/DialogInterface$OnDismissListener;

    .line 57
    .line 58
    invoke-virtual {v4}, Ls35;->m()Lwa;

    .line 59
    .line 60
    .line 61
    return-object v1

    .line 62
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;

    .line 63
    .line 64
    check-cast p1, Lfm7;

    .line 65
    .line 66
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->R:Lmo8;

    .line 67
    .line 68
    if-eqz p0, :cond_0

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, p1, v0}, Lmo8;->w(Lfm7;Z)V

    .line 75
    .line 76
    .line 77
    return-object v1

    .line 78
    :cond_0
    const-string p0, "mAdapter"

    .line 79
    .line 80
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v2

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
