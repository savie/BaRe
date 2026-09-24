.class public final synthetic Ljr;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljl0;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljl0;I)V
    .locals 0

    .line 1
    iput p4, p0, Ljr;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ljr;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Ljr;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Ljr;->d:Ljl0;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Ljr;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Ljr;->d:Ljl0;

    .line 4
    .line 5
    iget-object v1, p0, Ljr;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Ljr;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lqt3;

    .line 13
    .line 14
    check-cast v1, Lbp3;

    .line 15
    .line 16
    check-cast v0, Lzk3;

    .line 17
    .line 18
    iget-object p1, v1, Lbp3;->C:Landroid/widget/ImageView;

    .line 19
    .line 20
    invoke-interface {p0, p1, v0}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    check-cast p0, Ltr;

    .line 25
    .line 26
    check-cast v1, Loy;

    .line 27
    .line 28
    check-cast v0, Lji;

    .line 29
    .line 30
    :try_start_0
    iget-object p1, p0, Ltr;->J:Ldr;

    .line 31
    .line 32
    iget-object p1, p1, Ldr;->c:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Lorg/swiftapps/swiftbackup/appslist/ui/AppListItemLayout;

    .line 35
    .line 36
    iget-object v2, p0, Ltr;->W:Lorg/swiftapps/swiftbackup/appslist/ui/AppSwipeActionRevealLayout;

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    invoke-virtual {p1, v2, v3}, Lcom/google/android/material/listitem/ListItemLayout;->h(Lorg/swiftapps/swiftbackup/appslist/ui/AppSwipeActionRevealLayout;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    :catch_0
    iget-object p0, p0, Ltr;->G:Lqt3;

    .line 43
    .line 44
    if-eqz p0, :cond_0

    .line 45
    .line 46
    invoke-interface {p0, v1, v0}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
