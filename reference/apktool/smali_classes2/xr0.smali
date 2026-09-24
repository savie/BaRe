.class public final synthetic Lxr0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lxr0;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lxr0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lxr0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lxr0;->d:Ljava/lang/Object;

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
    .locals 2

    .line 1
    iget p1, p0, Lxr0;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lxr0;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Lxr0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lxr0;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Llo8;

    .line 13
    .line 14
    check-cast v1, Lmo8;

    .line 15
    .line 16
    check-cast v0, Lyn8;

    .line 17
    .line 18
    iget-object p0, p0, Llo8;->u:Landroid/widget/ImageView;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    invoke-static {p0}, Lai8;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    iget-object p1, v1, Lgm7;->e:Lfm7;

    .line 33
    .line 34
    iget-boolean p1, p1, Lfm7;->c:Z

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    invoke-static {v1, v0}, Lgm7;->x(Lgm7;Ljl0;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, v1, Lmo8;->l:Loo8;

    .line 43
    .line 44
    new-instance v1, Lao8;

    .line 45
    .line 46
    invoke-direct {v1, v0, p0}, Lao8;-><init>(Lyn8;Landroid/graphics/Bitmap;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v1}, Loo8;->U(Lao8;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    return-void

    .line 53
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;

    .line 54
    .line 55
    check-cast v1, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 56
    .line 57
    check-cast v0, Lbs0;

    .line 58
    .line 59
    iget-object p1, v0, Lgm7;->e:Lfm7;

    .line 60
    .line 61
    iget-object p1, p1, Lfm7;->a:Ljava/util/List;

    .line 62
    .line 63
    invoke-static {p1}, Lel1;->x1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const/4 v0, 0x0

    .line 68
    invoke-static {p0, v1, p1, v0}, Lns0;->l(Lzm;Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;Ljava/util/ArrayList;Lxi;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
