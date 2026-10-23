.class public final synthetic Lfp3;
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
    iput p1, p0, Lfp3;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lfp3;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lfp3;->c:Ljava/lang/Object;

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
    .locals 2

    .line 1
    iget p1, p0, Lfp3;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lfp3;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lfp3;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lvt8;

    .line 11
    .line 12
    check-cast v0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 13
    .line 14
    sget-object p1, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y:Let8;

    .line 15
    .line 16
    iget-object p0, p0, Lvt8;->a:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Let8;

    .line 23
    .line 24
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y()Liu8;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    sget-object p2, Lzn4;->a:Lzn4;

    .line 32
    .line 33
    new-instance p2, Llx;

    .line 34
    .line 35
    const/16 v0, 0xb

    .line 36
    .line 37
    invoke-direct {p2, v0, p1, p0}, Llx;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Lzn4;->c(Lbt3;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_0
    check-cast p0, Lzn7;

    .line 45
    .line 46
    check-cast v0, Ler6;

    .line 47
    .line 48
    invoke-static {p0, v0}, Ler6;->X(Lzn7;Ler6;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_1
    check-cast p0, Lzm;

    .line 53
    .line 54
    check-cast v0, Ljava/util/Set;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    sget-object p2, Lhs5;->b:Lgv7;

    .line 64
    .line 65
    invoke-virtual {p2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Ljava/lang/Boolean;

    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    sget-object v1, Lhs5;->c:Lgv7;

    .line 76
    .line 77
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Ljava/lang/Boolean;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-static {p1, v0, p2, v1}, Lz85;->d(Ljava/lang/String;Ljava/util/Set;ZZ)Lww4;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    sget-object p2, Ldz5;->a:Ldz5;

    .line 92
    .line 93
    invoke-static {p0, p1, v0}, Ldz5;->r(Lzm;Ljava/util/AbstractList;Ljava/util/Set;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_2
    check-cast p0, Lkp3;

    .line 98
    .line 99
    check-cast v0, Lzk3;

    .line 100
    .line 101
    invoke-virtual {p0}, Lkp3;->i()Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->W()Lzo3;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    iget-object p1, v0, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 110
    .line 111
    sget-object p2, Lto3;->LOCAL:Lto3;

    .line 112
    .line 113
    invoke-virtual {p0, p1, p2}, Lkk3;->j(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Lto3;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
