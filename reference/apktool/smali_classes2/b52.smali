.class public final synthetic Lb52;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lb52;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lb52;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lb52;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget p1, p0, Lb52;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lb52;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lb52;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Llh6;

    .line 11
    .line 12
    check-cast v0, Lkx2;

    .line 13
    .line 14
    invoke-virtual {v0, p2}, Lkx2;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Llh6;->a:Ljava/lang/Object;

    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    check-cast p0, Lkp3;

    .line 22
    .line 23
    check-cast v0, Lzk3;

    .line 24
    .line 25
    invoke-virtual {p0}, Lkp3;->i()Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->W()Lzo3;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    iget-object p1, v0, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 34
    .line 35
    sget-object p2, Lto3;->CLOUD:Lto3;

    .line 36
    .line 37
    invoke-virtual {p0, p1, p2}, Lkk3;->j(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Lto3;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 42
    .line 43
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;

    .line 44
    .line 45
    sget p1, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;->h0:I

    .line 46
    .line 47
    new-instance p1, Landroid/content/Intent;

    .line 48
    .line 49
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string p2, "extra_folder_item"

    .line 53
    .line 54
    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const-string p1, "saveLocalItemFromCloud"

    .line 59
    .line 60
    const/4 p2, 0x0

    .line 61
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    const/4 p1, -0x1

    .line 69
    invoke-virtual {v0, p1, p0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_2
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 77
    .line 78
    check-cast v0, Lh62;

    .line 79
    .line 80
    sget p1, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 81
    .line 82
    iget-boolean p1, v0, Lh62;->b:Z

    .line 83
    .line 84
    const/4 p2, 0x1

    .line 85
    invoke-virtual {p0, p1, p2}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->t0(ZZ)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
