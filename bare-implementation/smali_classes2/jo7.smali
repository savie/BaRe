.class public final synthetic Ljo7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ljo7;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ljo7;->b:Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;

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
    .locals 0

    .line 1
    iget p1, p0, Ljo7;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Ljo7;->b:Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->F(Lil0;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    sget p1, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->f0:I

    .line 13
    .line 14
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->F(Lil0;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
