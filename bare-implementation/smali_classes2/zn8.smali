.class public final Lzn8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lvk6;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lzn8;->a:Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f(Lfy3;Lpx7;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/Object;Lpx7;I)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    if-eqz p4, :cond_0

    .line 11
    .line 12
    sget-object p2, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->O:Lao8;

    .line 13
    .line 14
    iget-object p0, p0, Lzn8;->a:Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->N()Lno8;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iget-object p2, p2, Lno8;->d:Lcom/github/chrisbanes/photoview/PhotoView;

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lzn4;->a:Lzn4;

    .line 26
    .line 27
    new-instance p1, Lu14;

    .line 28
    .line 29
    const/16 p2, 0xc

    .line 30
    .line 31
    invoke-direct {p1, p0, p2}, Lu14;-><init>(Ljava/lang/Object;I)V

    .line 32
    .line 33
    .line 34
    const-wide/16 p2, 0x12c

    .line 35
    .line 36
    invoke-static {p2, p3, p1}, Lzn4;->f(JLbt3;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->N()Lno8;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object p1, p1, Lno8;->c:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 44
    .line 45
    new-instance p2, Lh00;

    .line 46
    .line 47
    const/16 p3, 0xe

    .line 48
    .line 49
    invoke-direct {p2, p0, p3}, Lh00;-><init>(Ljava/lang/Object;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    throw p1
.end method
