.class public final synthetic Lf21;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lf21;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lf21;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 11

    .line 1
    iget p1, p0, Lf21;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lf21;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljh6;

    .line 9
    .line 10
    iput p2, p0, Ljh6;->a:I

    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/shortcuts/ShortcutsActivity;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;

    .line 20
    .line 21
    sget p1, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->S:I

    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->V()Lorg/swiftapps/swiftbackup/cloud/orphans/a;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-object p0, v3, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->f:Lix6;

    .line 28
    .line 29
    iget-object p1, v3, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->g:Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->b()Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-nez p2, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v3, p1}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->p(Lorg/swiftapps/swiftbackup/cloud/orphans/b;)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    const v0, 0x7f130180

    .line 46
    .line 47
    .line 48
    if-nez p2, :cond_2

    .line 49
    .line 50
    iget-wide p1, v3, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->m:J

    .line 51
    .line 52
    const-wide/16 v1, 0x1

    .line 53
    .line 54
    add-long/2addr p1, v1

    .line 55
    iput-wide p1, v3, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->m:J

    .line 56
    .line 57
    invoke-static {}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->o()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v3, p1}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->r(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance p1, Lvh1;

    .line 65
    .line 66
    invoke-direct {p1, v0}, Lvh1;-><init>(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lix6;->k(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iget-object v1, v3, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->h:Lkc;

    .line 74
    .line 75
    if-nez v1, :cond_3

    .line 76
    .line 77
    new-instance p1, Lvh1;

    .line 78
    .line 79
    invoke-direct {p1, v0}, Lvh1;-><init>(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lix6;->k(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->c()Ljava/util/ArrayList;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    iget-object v6, p1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->g:Ljava/lang/String;

    .line 91
    .line 92
    iget-wide v4, v3, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->m:J

    .line 93
    .line 94
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->m()Lpw5;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    iget-object p1, p0, Lpw5;->a:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast p1, Ljava/lang/Number;

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 103
    .line 104
    .line 105
    move-result-wide v7

    .line 106
    iget-object p0, p0, Lpw5;->b:Ljava/lang/Object;

    .line 107
    .line 108
    move-object v9, p0

    .line 109
    check-cast v9, Lqh4;

    .line 110
    .line 111
    new-instance p0, Lsl;

    .line 112
    .line 113
    invoke-direct {p0, v3}, Lsl;-><init>(Lorg/swiftapps/swiftbackup/cloud/orphans/a;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, p0}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->s(Lmt3;)Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 117
    .line 118
    .line 119
    sget-object p0, Lzn4;->a:Lzn4;

    .line 120
    .line 121
    new-instance v0, Lorg/swiftapps/swiftbackup/cloud/orphans/c;

    .line 122
    .line 123
    const/4 v10, 0x0

    .line 124
    invoke-direct/range {v0 .. v10}, Lorg/swiftapps/swiftbackup/cloud/orphans/c;-><init>(Lkc;Ljava/util/ArrayList;Lorg/swiftapps/swiftbackup/cloud/orphans/a;JLjava/lang/String;JLqh4;Ljv1;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v9, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 128
    .line 129
    .line 130
    :goto_0
    return-void

    .line 131
    :pswitch_2
    check-cast p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;

    .line 132
    .line 133
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;->b(Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
