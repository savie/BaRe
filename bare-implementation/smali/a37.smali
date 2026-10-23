.class public final synthetic La37;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;I)V
    .locals 0

    .line 1
    iput p2, p0, La37;->a:I

    .line 2
    .line 3
    iput-object p1, p0, La37;->b:Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, La37;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object p0, p0, La37;->b:Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget-object v0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->K:Ljava/util/Map;

    .line 11
    .line 12
    sget-object v0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;->Apps:Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {p0, v0, v2}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->p(Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;Z)V

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :pswitch_0
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->n:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    const/16 v2, 0x8

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;->Main:Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {p0, v0, v3}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->p(Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;Z)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->k:Landroid/view/View;

    .line 33
    .line 34
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    return-object v1

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
